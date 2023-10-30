-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-11-2019 a las 16:28:33
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ofertasweb`
--
CREATE DATABASE IF NOT EXISTS `ofertasweb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ofertasweb`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `idAdministrador` bigint(20) UNSIGNED NOT NULL,
  `activo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`idAdministrador`, `activo`) VALUES
(3, 1),
(25, 1),
(27, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 0),
(40, 1),
(43, 1),
(44, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` bigint(20) UNSIGNED NOT NULL,
  `redesSociales` varchar(245) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `redesSociales`, `activo`) VALUES
(1, NULL, 1),
(6, NULL, 1),
(9, NULL, 1),
(13, NULL, 1),
(17, NULL, 1),
(34, NULL, 1),
(52, NULL, 1),
(67, NULL, 1),
(68, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrega`
--

CREATE TABLE `entrega` (
  `idEntrega` int(11) NOT NULL,
  `idUser` bigint(20) UNSIGNED DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `idOrden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `entrega`
--

INSERT INTO `entrega` (`idEntrega`, `idUser`, `fecha`, `idOrden`) VALUES
(7, 3, '2019-09-23', 9),
(8, 3, '2019-09-24', 10),
(9, 3, '2019-09-24', 8),
(10, 3, '2019-10-01', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especificacionesproducto`
--

CREATE TABLE `especificacionesproducto` (
  `idespecificacionesproducto` int(11) NOT NULL,
  `nombre` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especificacionesproducto`
--

INSERT INTO `especificacionesproducto` (`idespecificacionesproducto`, `nombre`) VALUES
(1, 'Ram'),
(2, 'Memoria Externa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especificacionesregistradas`
--

CREATE TABLE `especificacionesregistradas` (
  `idEspRegistradas` int(11) NOT NULL,
  `idEspProducto` int(11) DEFAULT NULL,
  `descripcion` varchar(245) DEFAULT NULL,
  `idOrden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadotipo`
--

CREATE TABLE `estadotipo` (
  `id` int(11) NOT NULL,
  `estado` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estadotipo`
--

INSERT INTO `estadotipo` (`id`, `estado`) VALUES
(1, 'Recibido'),
(2, 'Reparado'),
(3, 'En Proceso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `garantia`
--

CREATE TABLE `garantia` (
  `idGarantia` int(11) NOT NULL,
  `dias` int(11) DEFAULT NULL,
  `idOrden` int(11) DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL,
  `fechaEntrega` date DEFAULT NULL,
  `fechaInicioGarantia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `garantia`
--

INSERT INTO `garantia` (`idGarantia`, `dias`, `idOrden`, `fechaIngreso`, `fechaEntrega`, `fechaInicioGarantia`) VALUES
(1, 20, 9, '2019-09-22', '2019-09-23', '2019-09-23'),
(3, 10, 9, NULL, NULL, '2019-09-24'),
(4, 20, 8, NULL, NULL, '2019-09-30'),
(5, 10, 7, NULL, NULL, '2019-10-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `local`
--

CREATE TABLE `local` (
  `idLocal` int(11) NOT NULL,
  `local` varchar(145) DEFAULT NULL,
  `direccion` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `local`
--

INSERT INTO `local` (`idLocal`, `local`, `direccion`) VALUES
(4, ' Colon', 'Colon 969'),
(5, ' Ayacucho', 'Ayacucho 812');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('001584638cbcced19c24e7851a2808b2314a9f52620a57b0f2961b331cd6e74c729000d2939408ba', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 02:54:54', '2019-10-28 02:54:54', '2020-10-27 23:54:54'),
('0016d6ba505c2d8b13bb8a4c62a430dc3ed9252645ee5981a9d8799ba19f63794457300e203aabec', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 18:12:48', '2019-09-23 18:12:48', '2020-09-23 15:12:48'),
('002a8a9f759fc3bf43744b8810076e1824170277f9a05442953e3963150d5b3c3ec8c835386c7a5e', 1, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-10-01 21:21:03', '2019-10-01 21:21:03', '2020-10-01 18:21:03'),
('004a3efddcedd261c8914785cfd11ec2c13dce77b1f96673f39cf33269af8abe76a052a4cf5b2a98', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 04:08:41', '2019-10-29 04:08:41', '2020-10-29 01:08:41'),
('006e93e5b9a17804aa4ccd5a6629b033bd1b244be3ee56e1d0ee9b87ba24787206d0c52d29a570a7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:47:46', '2019-08-29 21:47:46', '2020-08-29 18:47:46'),
('00ba36b558fc4ac014cd6365d8bf792b4ed6dca72593c6ee1f4b9446bb7285397c4d144bd5307805', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 06:47:28', '2019-10-28 06:47:28', '2020-10-28 03:47:28'),
('00cb66c0b83c174144fcd40aeaeb203ae4341c917b6e6a276a42e2a5c3daf066a9ab11fd1a4cbd9f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-25 16:06:35', '2019-09-25 16:06:35', '2020-09-25 13:06:35'),
('00df1466513edec5c4682b8b6c857869daa792255b7c5d2b06bb5264b8302f4e59ad77960caabeb1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 22:07:38', '2019-09-06 22:07:38', '2020-09-06 19:07:38'),
('010d795b8e22dae3fec998230d67f07a4d856eaccc75f42ac42c52ab59c56557af0cbb0fb162fbad', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 22:15:38', '2019-09-26 22:15:38', '2020-09-26 19:15:38'),
('011c8e46a8033e08b21bb4ef628233b25a6ea04be9084c94bb13537d446c4917b02dacc98ab3169d', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:28:08', '2019-08-20 20:28:08', '2020-08-20 17:28:08'),
('01217b61c829432e51ba18c809464a0dc7d2154bdf49889ba4daaf7b27f6281275cf5b9fcabef796', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:14:24', '2019-10-24 22:14:24', '2020-10-24 19:14:24'),
('017544fd7e22e8d1bd0ba4da971ad82054f769de2671df97a5b0cdb2f7baabcd79d04290366f6d04', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 07:54:14', '2019-11-01 07:54:14', '2020-11-01 04:54:14'),
('0189774622c6115b6d532eaead0572466d38ae779eeb3d100316607c1ae0c2fc7c08493ba14e2791', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 22:06:52', '2019-09-06 22:06:52', '2020-09-06 19:06:52'),
('0192ddc50b5688158e25ad65dec344d15ab59ee407bfd7bf2417690b060106229f2bab20ca542a49', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 06:02:16', '2019-10-28 06:02:16', '2020-10-28 03:02:16'),
('024e37e662c4ac94b0b6749e898546a8a3dd071587c884775822747ba5a797acb4fc5fc678cd5056', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:38:11', '2019-08-29 20:38:11', '2020-08-29 17:38:11'),
('02813adf67d7287f0fb1e7f3b5b7404d22a2ecf7b90c9b4afb457d13b86bbc5945bde24613a34486', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:38:56', '2019-09-05 20:38:56', '2020-09-05 17:38:56'),
('02b1c27f8fc78286ea316283fa19f52a65d5ede5105c7462e85082e90900cad1a4d963e0091da63b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 02:00:38', '2019-10-29 02:00:38', '2020-10-28 23:00:38'),
('02b62ac493f7a989a29fb9fa988e863ef6c2d6b71674cb6b19d9a7533bb5caa1578e39792181d3c6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:35:28', '2019-09-23 17:35:28', '2020-09-23 14:35:28'),
('02d087d5953d8bd484132e113e63aa5833b5b5422b60d0ea6f635b9ba60d77dc11fbb426aaf00984', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:25:50', '2019-08-29 20:25:50', '2020-08-29 17:25:50'),
('02d42c2f8f3aa61e150409e5870effcf2515662c8ea962443627dae7ba93e3a33d8f03292f01fadf', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 23:07:52', '2019-09-06 23:07:52', '2020-09-06 20:07:52'),
('02d48f8c61de182e37d93b70fe8ee5f0038e80db7508d32193909c3ca05047af26c390eaec0e8231', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:27:01', '2019-09-30 17:27:01', '2020-09-30 14:27:01'),
('02e0f99c35341ea647759e6648b22a866b6c76173697f7e22c574c0e2a404845a9cc02ed0f439870', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:31:09', '2019-09-23 21:31:09', '2020-09-23 18:31:09'),
('02ff837611734fca6033e47f7b64b3a1661a74fd0f9411d59895004d4145b8e37574515734d887d7', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:04:12', '2019-08-23 19:04:12', '2020-08-23 16:04:12'),
('031572e0d043d6b948d9bf9338ffe364efe9907008c700d5a8e5d5d0d731b2ea113c4996f86d27ab', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 00:34:40', '2019-10-27 00:34:40', '2020-10-26 21:34:40'),
('0318237f5d8ed553f4543cc62e9c8b0f3596177e7c18ff14159e9d806563b4826e4529eb0fcba123', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:37:57', '2019-11-01 08:37:57', '2020-11-01 05:37:57'),
('031968c6860a70255790781598a96596733753777b44c946c7994fca581aabcf758a7ede33ae7fc5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:14:39', '2019-09-30 17:14:39', '2020-09-30 14:14:39'),
('031cdef8d337219d431a40a617e3f7b8f3fd13b4923198971711bf1bd0a1ee2cbc1c95f02d5bdaf9', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:20:46', '2019-08-20 20:20:46', '2020-08-20 17:20:46'),
('032a9a52706f6eaf7a7a77f5ff4b783aaa49849a020e320f98986dda5a1d17af1fb33672b1990365', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:07:15', '2019-09-30 20:07:15', '2020-09-30 17:07:15'),
('0337922fc5cec31a67bfa22f4d8b8627058379f2b36ef95ffb80fc42dfc87516e1d29843e1f3a6f1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:14:29', '2019-10-28 03:14:29', '2020-10-28 00:14:29'),
('0340473ae3dfd5d37883d8ce3e86d9e6257e792b87f4a261d18aad7776afccbe8dfdfff305c64c16', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:21:03', '2019-10-28 07:21:03', '2020-10-28 04:21:03'),
('038c5cf5bdded552ab299fe9abfe407116e2a69514d5ae5ae97864a4499a408c8a51189ea91d6501', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 06:01:16', '2019-10-28 06:01:16', '2020-10-28 03:01:16'),
('038f4ce6ca36bf5a4297b981ec002f77cc0fb096c8ea3da199ca3acc65bd0d3eef6b6572f1101586', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:35:05', '2019-09-30 20:35:05', '2020-09-30 17:35:05'),
('0390e9869bc954c05210c069d8200e4cb5d48c823414e6d632d3808b2b9b4a49ca5aba96cdcff9ae', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 02:58:06', '2019-10-28 02:58:06', '2020-10-27 23:58:06'),
('03ab3fdfd62473d96263a6b524eb329ecefc248ee1cc8f2bad055550805a99befb6f7d8f27d76a6a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:40:56', '2019-08-29 20:40:56', '2020-08-29 17:40:56'),
('04109207b2df18f6bf4d05a15cc6993c89ea828a42935bf615ef62bc6297813707a7a7eaae9c3ada', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 19:10:07', '2019-09-30 19:10:07', '2020-09-30 16:10:07'),
('0460b44c1b2a110a485a81c981bd7e7668fe6638f379ad61a20bbe084459930d46b1b2c455d1bd6f', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:56:48', '2019-08-14 23:56:48', '2020-08-14 20:56:48'),
('04617e7e2386fbe559d280db34d2a4096160478f02e5385fc68929b2853eace4b3b10620b973c90f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 18:33:02', '2019-09-23 18:33:02', '2020-09-23 15:33:02'),
('04846a9f336ccc6775cb933d2c7c415d042ce8303a5f3d512262f83d6ebdcf17136cec9a0d591bf4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:21:14', '2019-09-23 17:21:14', '2020-09-23 14:21:14'),
('048619575bad76d7b0b803c20002a5b43df406a708f918a7f2d45a67a0c33f63e1c82b5f1adce4ed', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 00:02:19', '2019-10-31 00:02:19', '2020-10-30 21:02:19'),
('0488632417ecce1de62c97e27e0df506509948892bc21b0c8a4d24bd96d6c08434c3d0caa7f91e67', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:32:33', '2019-08-20 20:32:33', '2020-08-20 17:32:33'),
('04d34c721631aa29ff0bea7fe18ee426f34d45568d9e1659565259192f96341e2ef85886ed4dba2c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 02:33:59', '2019-10-29 02:33:59', '2020-10-28 23:33:59'),
('04d97df1974f6beb91986c3c0119165ffbe326b76e2b8569e06ccaf0236384c6b70f9f58afc6525c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:51:25', '2019-08-29 20:51:25', '2020-08-29 17:51:25'),
('051034fdb2273d54b8880bd100699db2e46f1d6fc6dd0d84c2e0b94eff55bdd6f9b8444c71554006', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:27:21', '2019-09-23 17:27:21', '2020-09-23 14:27:21'),
('051ea8a00dc8448ca5e80c7d164a29e07fabd9a9c78cec10fcd14305e72e017356de79696ff6b281', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:29:05', '2019-09-30 20:29:05', '2020-09-30 17:29:05'),
('05298bb111feb83d0eb2cec2ee27775470777a24845ad6c7932635f35b9b91608a6504909d1788a6', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:10:53', '2019-08-20 20:10:53', '2020-08-20 17:10:53'),
('05e4af0e358ff7dae30cd12ce48492d5d5db2f25a2e823047423930bd923c051b2526d6109f76c10', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:55:28', '2019-09-30 20:55:28', '2020-09-30 17:55:28'),
('063f16afffe1758264bf22b2864a64e09c1df51c8339d2453ea87dfe7732686da5e5d6b51fe61fac', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:08:10', '2019-09-05 20:08:10', '2020-09-05 17:08:10'),
('06b8c44f722848a157d694bb41e9011f03ad9c4835e913701cbbef394da8ef558c523c3475e93f32', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:52:26', '2019-08-29 20:52:26', '2020-08-29 17:52:26'),
('06d6969bdccce61ec1ef0ed27c8e74ddf1125c518d587931d9a2bf26ff7d74fd8405bc6c258a891d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:55:55', '2019-10-24 21:55:55', '2020-10-24 18:55:55'),
('070150c6ca9106edcf0246895cdb8e619c21afb80ba60466084eebad51fe066a958d83454c5aa2f8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 17:10:07', '2019-09-05 17:10:07', '2020-09-05 14:10:07'),
('0756eedfdf20dc67c30e97bde2517b6447c4dfab4387c710f5dbb6689059990bfd99376d300eadef', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:19:24', '2019-09-05 20:19:24', '2020-09-05 17:19:24'),
('076567902ea40d9a688a9d001beebaa3255b5e664e1306a5a62664e36a11cac90019af42a3692cbf', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:34:55', '2019-09-30 20:34:55', '2020-09-30 17:34:55'),
('0784e0ba03ad92a16cac39821adea42852060cb57123d1ca16c8124b1655ca847cb13ec13bae0de0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:30:07', '2019-09-23 17:30:07', '2020-09-23 14:30:07'),
('07ff28f20779479f2833002a56a483810ca9820ba0259356cbf9fb496dd1bb46ec09a10b5f01aff3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 01:30:42', '2019-10-29 01:30:42', '2020-10-28 22:30:42'),
('080c2e7731ae414e002b233f513da58cc698386a115b873007807159fa4cb6f5ecf920d39e619b2c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 07:25:13', '2019-10-04 07:25:13', '2020-10-04 04:25:13'),
('080e1dd2908ca7afb6ad17b14a9d4314ac757f8a4563f3c1a4ae81554bd5fae8b22ba6eae2c5b7f3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-27 00:02:04', '2019-08-27 00:02:04', '2020-08-26 21:02:04'),
('084c4104103d7904bf0ce8648e29950916e990f3b51c7b6089de663579df8d481ab3683dbeb46cc1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:29:14', '2019-09-23 17:29:14', '2020-09-23 14:29:14'),
('084e60521b066a71a73f73e9f1b18ab8b742522485fbaaf2fe5403a968f91ec78a4dbf330c139331', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 18:29:28', '2019-09-23 18:29:28', '2020-09-23 15:29:28'),
('08615c5fe668f08567749d61c71cf11d8ed9cf7d5c8789b66e480ae8da7e9d5ef3ee012efd1291f4', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:12:58', '2019-08-20 20:12:58', '2020-08-20 17:12:58'),
('089b1569c9048b50ccf277e4dfcdf7bdc5463545db472f1e329deadaeafe0867977a9783080ab565', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:53:47', '2019-09-05 16:53:47', '2020-09-05 13:53:47'),
('090a8445b8e67a3c834d3367ffe087dd0e09733ada6296fb902091d87e52c3c98a7636992ebf837b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:41:58', '2019-09-23 19:41:58', '2020-09-23 16:41:58'),
('0932485758e30d51807b66a63625a36d4f4977adf549259491c7ea5d87f4bb6c26c6a55312e22521', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:43:08', '2019-09-05 20:43:08', '2020-09-05 17:43:08'),
('094108707b4da99bc56107f93ba8e45782cfd0d3f2510531c4fcedc5101d714d43f7bf16d2b0f477', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 06:03:54', '2019-10-30 06:03:54', '2020-10-30 03:03:54'),
('09508e98427c2985130470e0957ad1ef1664b76548bf5555b870112f2287a0b5e5200a91609e089e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:11:19', '2019-10-24 22:11:19', '2020-10-24 19:11:19'),
('09a3f42695d34699770f987c1ebf808a9de4996ff99e906bddc2fa66627664a144b8355179fc218b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 05:59:35', '2019-10-28 05:59:35', '2020-10-28 02:59:35'),
('09b88821f5ed57d637cc355348b5817f735dad97882390e3125673acccdde09776ade8b4798c6a21', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:37:41', '2019-08-14 23:37:41', '2020-08-14 20:37:41'),
('0a020d1f1593087ebf1323f72ba5c58c3371c66d27ad6bf9720474ca31dce09dbcb680ee06cc65c1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 01:26:33', '2019-10-29 01:26:33', '2020-10-28 22:26:33'),
('0a156e40c28914d3f095c6ee533175dcaf8b9ebc77b9ce4c7dddad95e5b7a7718e6890e5884aafa4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:22:28', '2019-09-23 17:22:28', '2020-09-23 14:22:28'),
('0a42c4b55078bea311a2e743fafbe7686e25994c445dd29e5c84fa16e447bd7cc6778fd8fa2357a1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:29:12', '2019-10-28 07:29:12', '2020-10-28 04:29:12'),
('0aaef11042d87eb16061f03acedf446a39ba557f74aa3944d0ae0d8738d725e39dbcf056d7bcbb97', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 19:28:36', '2019-10-31 19:28:36', '2020-10-31 16:28:36'),
('0ab3dd3534b4eac71d6d27cbfa0f5865e81996692bcccaab8d4b2990a532df17ae8569b1560ded2e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 23:59:30', '2019-08-26 23:59:30', '2020-08-26 20:59:30'),
('0b221c8e6d03b89f30a6d54e6f40ffecf3484cf60e1d981490073b11f8b3dd450066c5df702771b7', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:37:14', '2019-08-20 20:37:14', '2020-08-20 17:37:14'),
('0b4ae3100aa111565b4d2171ab338a3e40a38b2081cca12e8fab89c83c7da9a35a84f3192c92aabb', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:38:31', '2019-10-28 21:38:31', '2020-10-28 18:38:31'),
('0bd3fdea8dcb32da9bbea74929717c651b4e62e5d4d8cc0303762409ed77fc088680f4fbf4ee29f4', 1, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-10-03 21:21:31', '2019-10-03 21:21:31', '2020-10-03 18:21:31'),
('0bedbcbdd3500f3f7d10fb1e20d12a413fdfa36cf6d08e826b795f8f1340dd9f78d3789cdd971347', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:41:54', '2019-10-01 01:41:54', '2020-09-30 22:41:54'),
('0bef7fafcc0a73ab1cf119e787e1050fc01904c6bff80f83215a1640c180ac00ee3206aef4a661a1', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:56:35', '2019-08-20 20:56:35', '2020-08-20 17:56:35'),
('0bfe9c49dae5faf9b187cf2fc99b7a5ca72460d5f8228c7a0fd773c076fb45adb0b7363d147e78df', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:17:41', '2019-09-30 21:17:41', '2020-09-30 18:17:41'),
('0c10bbd9127d101036d64a7f138b205c911b1a98531fa3e4bc16206eb0f169998960e6dfcb549b23', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:42:04', '2019-09-23 19:42:04', '2020-09-23 16:42:04'),
('0c2873a00059f363f840de346954e070b137c2289911c2413a94c4f3b75a0d460952377f3916587f', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-24 23:02:28', '2019-08-24 23:02:28', '2020-08-24 20:02:28'),
('0c347dd37ea48d8fc975131db191f57a47fa8481d7288d29c19d5bdb11639fd75a9df6eb2eadf895', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:02:41', '2019-08-20 20:02:41', '2020-08-20 17:02:41'),
('0c3fb71acdfd5a03bf44f3ca7f8d220858e3a2db598b5b56e11315b845ec11385d966416ec503709', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:28:21', '2019-08-20 20:28:21', '2020-08-20 17:28:21'),
('0c50f1bb6e29d028fd8821637e000fd719cd5d56b7f07ae43d128099edd46cb9f55950fa64d062b0', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:08:31', '2019-08-20 20:08:31', '2020-08-20 17:08:31'),
('0c5500ab0b4a3b568e7f35596cd422867035b75df7a65b0449ecea06cc709596b4f766374aa84718', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:14:35', '2019-10-28 21:14:35', '2020-10-28 18:14:35'),
('0c79f712d420374b8961ab0e8da9c9a33d6aa4c5448caaeec5d064079b690c78fa5657dc8870a3ef', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:10:16', '2019-08-20 20:10:16', '2020-08-20 17:10:16'),
('0ce6e7b8b008eee73734347a46c08b4b845b3e56eec4ec052685592c0355aa45975e4c3c469fc635', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 01:40:01', '2019-10-29 01:40:01', '2020-10-28 22:40:01'),
('0d0eb5b056eb24eeaede8f5f46a4dbb7e51b431acee19db57378e6c2fb6b1dfce744a6e57a4d505d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:16:40', '2019-10-24 21:16:40', '2020-10-24 18:16:40'),
('0d3d4ab1865e580436dcd59347bfce10e3ba1522fab82a7299c99118c5344c0b8c5e27d798ca5ba5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 23:41:35', '2019-10-30 23:41:35', '2020-10-30 20:41:35'),
('0d71dff89c6fb296542412ee8fc01b9d8db9d97539c9c1423a7e80f4e32ccb7797eb8a58adbaec0d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 18:27:24', '2019-09-23 18:27:24', '2020-09-23 15:27:24'),
('0dac625d1813b918114a11cfb533ece3b06658dbb6f990a45eb8e74c2e371953e656d590ae7f1402', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 18:34:06', '2019-09-23 18:34:06', '2020-09-23 15:34:06'),
('0dbaaa38d9edf0bea36f0fb5c921b56707e2678656f5bcf14f8e57ba585e523f0f1d4ba7e08802ae', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-15 00:07:27', '2019-08-15 00:07:27', '2020-08-14 21:07:27'),
('0e0fcec0f370c999d90738eae5f6dea782dd0698425db4f8375993a92ec04b43926d1ba399fab1b0', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:37:29', '2019-08-20 20:37:29', '2020-08-20 17:37:29'),
('0e24eec357518bbab95d3cf264f18ab098886b610ba590f1eb22c5199feff202ec3a42769d671f3c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:03:05', '2019-10-28 03:03:05', '2020-10-28 00:03:05'),
('0e2c89ea678322301a5083d05eb0cc45c1d1b728c1fb8f8f70b9e8fbe2b132cc9562ce9328232b4f', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-15 00:07:47', '2019-08-15 00:07:47', '2020-08-14 21:07:47'),
('0e43ba7da87b7a4c59ad21bf591d14e6ee50fb8be1edeec1655882b5e0716991769ba98666259f06', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 00:34:39', '2019-10-27 00:34:39', '2020-10-26 21:34:39'),
('0e78f46f9dafe8168e04fc99f6ec27560ada56f3e8e48f2a51f7dc6b2c54e56d2f2193bbb24f7b5e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 23:55:12', '2019-08-26 23:55:12', '2020-08-26 20:55:12'),
('0e7b6671b5bb3a5c242db54586986a2665723119a854c2b7374689ae6f732ae324a7942f7a1ab7f3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:21:44', '2019-09-23 17:21:44', '2020-09-23 14:21:44'),
('0ef2970e706fb57365e9c4bf846d97206bf4776439ffc7347b78ac16e5106f07df6e4ebb6d7acdc8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-08 01:37:31', '2019-10-08 01:37:31', '2020-10-07 22:37:31'),
('0ef616e5d8d5bf1ffc76cf4690ba126a210b2ac2538ddbee6b2c0da235999339f74d0f36cab9434d', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:06:23', '2019-08-20 20:06:23', '2020-08-20 17:06:23'),
('0f06f7788f409e469ae5fa42275e83f086b298836e1177da8b2d2264dab4bcc32d9b746dda744a3f', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:58:16', '2019-08-14 23:58:16', '2020-08-14 20:58:16'),
('0f3238bea97c8fa2d53f079f674aab1bf8b9f0bedcb3c5deac3e8adcf73d5dce6968786770f23516', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 07:33:22', '2019-10-04 07:33:22', '2020-10-04 04:33:22'),
('0f33eced6af3ca1b16b23763836135c1fe3ac7da23a9294e6500a8558f46d5f9439edb16c8bb7590', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:51:42', '2019-09-30 20:51:42', '2020-09-30 17:51:42'),
('0f853145546a80fb7f8cbb0f3a450c2b281f8bc5094d69b6b6f52eef501f3e2b70a77b55b6247b2e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-28 03:03:37', '2019-08-28 03:03:37', '2020-08-28 00:03:37'),
('0f8e718a03fe52b9269bdc6702e7cc567f820199b2b16092fbcdb09f33f0a08570eb34279a411c60', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:41:42', '2019-09-23 19:41:42', '2020-09-23 16:41:42'),
('0f91b631697ca4f3ff366a84ad1fe221fade62a24e9e41496680b4f62766ac55ff30627bc58f818e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:23:50', '2019-09-05 19:23:50', '2020-09-05 16:23:50'),
('0fa3882710b1c76b868581c8085e30929224ffc97df5efd12a664c3927de38dbfb4cfd91002dbc91', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 00:26:28', '2019-10-27 00:26:28', '2020-10-26 21:26:28'),
('0fd374a09ee629dbd1a0bfebdb9cd855d7c278728d2fb9eccb4829d6134f19f4dd0431434e5f27dd', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 05:59:52', '2019-10-30 05:59:52', '2020-10-30 02:59:52'),
('10341ce61a516d60bb6991c4b6656a069fc3c788a6ac3273108bc97f7a2c8c9561a913c269c640d4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 06:14:45', '2019-10-30 06:14:45', '2020-10-30 03:14:45'),
('1040fa5219af2d5e03642cfa3392870ab54b23542ec4e82b2abcc7d4a2cca33f245670639be03232', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:32:53', '2019-10-24 22:32:53', '2020-10-24 19:32:53'),
('106623884e8f3c10d7e92e42fcbc1787bd5909e97a2071aff9133f877634529ca9b171fcbd9fabdf', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 23:16:59', '2019-09-06 23:16:59', '2020-09-06 20:16:59'),
('1069df552113e5d0220e180dd78d11b58997210e7e09a750e790378c7e1a57e81798cefe267fa064', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 03:32:39', '2019-10-29 03:32:39', '2020-10-29 00:32:39'),
('108c6a159dadcd42a4b60ba95ecc3e1f2a476c26ace2b3b581736fd9515902c41d32d24103d04543', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:51:47', '2019-10-28 07:51:47', '2020-10-28 04:51:47'),
('109dda36c12f92eaf38e19dcbd34f8be7dd8fa3d29a0f28b91dab3a53320a3867757f8dd760b3ce7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:25:51', '2019-10-28 07:25:51', '2020-10-28 04:25:51'),
('10cf7aac6bf887f17aa909273017e6a20095eca86f7e234d721fbcd456d325a9ec869229b248883c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:45:36', '2019-10-28 21:45:36', '2020-10-28 18:45:36'),
('115e0b5ef4f6e8a5a6974ba399a03abac01acff93e834195205e5b80c34e2ec72e63398eed4203ac', 9, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-10-03 22:17:05', '2019-10-03 22:17:05', '2020-10-03 19:17:05'),
('11e8e1829916d3ad816cd74fc5c55a6c4e6d79b0fe625740b01ef458699dd6ed9cb2cbc64d794133', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:26:40', '2019-08-20 20:26:40', '2020-08-20 17:26:40'),
('121038deb54696cc99d9d31a29cce5735097273f7589ff3f8eccf6c635a24426ad47c9627c87687e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 21:56:39', '2019-10-22 21:56:39', '2020-10-22 18:56:39'),
('12111cc2d61dba71cc3280de124770da5ef57a1513d826a6d76b53951d4d1e972c3b08e075dfe534', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:39:12', '2019-09-23 17:39:12', '2020-09-23 14:39:12'),
('121efec0d725ef72a7a490d1ce851f2a9b1e65f2ed9ef927b1aa1a72c349d465f83939c321b8c989', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 21:44:25', '2019-09-06 21:44:25', '2020-09-06 18:44:25'),
('1233b44e572b2a906d3feaaf1cdc3a38313731e9108dab8cc5cfa17c40743ced0b050dae5f7f5e76', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:33:37', '2019-08-20 20:33:37', '2020-08-20 17:33:37'),
('12411ad5afb5c2b630fc3176bd31c9f4b1df47716800af43b1061ea1517a327f9aef061be570e100', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 01:54:30', '2019-10-29 01:54:30', '2020-10-28 22:54:30'),
('125d067e45ae4f85ca663a1429cdaa955a0380b2d135954cb7884edc878f28a1d24fdde7cbb7bf40', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:18:18', '2019-08-17 01:18:18', '2020-08-16 22:18:18'),
('1262157ccc5559b28e2d0e06a6c626821f1d20d200fe2ef2068d109e872213c36e14c33fe7bc0771', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:27:17', '2019-08-20 20:27:17', '2020-08-20 17:27:17'),
('12831ccfddc14ccae4abbaea278fcd2a4a4d301ddde16a8babde0f168cd8d5995f5af10cdb74fe29', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 04:01:10', '2019-10-29 04:01:10', '2020-10-29 01:01:10'),
('12d868fe7950c25a426fed869160b482072a4cfcbe75b83db4fe4ee94c3e32b4cc6dc9678cfa36be', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 23:43:54', '2019-10-03 23:43:54', '2020-10-03 20:43:54'),
('12e4c5ec3acf9990baed05b9c637bc2b9fa1d4d1e9c695f7ca9de60dac0f81c58e2dbc710ceaed54', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:48:39', '2019-09-05 19:48:39', '2020-09-05 16:48:39'),
('12ef0e9805ac269951aa12236e713c88b2594372728a88982904b88235aaf7d8a359165302eb053c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:23:37', '2019-10-24 21:23:37', '2020-10-24 18:23:37'),
('12f397d9ebf06e21ce18460707f7fba8b402bcf825dae4967a512abd9e0652384f169fa019f7b77d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 21:02:20', '2019-10-03 21:02:20', '2020-10-03 18:02:20'),
('12f735739a58fa2103add769a5fcdd13dd0ea5467c1a1f42c9d3c3c0d1a221cced9bbd6691b6aa74', 1, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-10-03 21:24:15', '2019-10-03 21:24:15', '2020-10-03 18:24:15'),
('130536611f4687114c7b636d6448fd039fa3d67ed504e0a098410b884b0ae0c6ec3886d9f0ccb4dd', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:21:32', '2019-08-29 20:21:32', '2020-08-29 17:21:32'),
('133182e0f81c56d5f4ceb0534491ac183fbcb5760c5a096b29b14533dc226838e9167d9443de3eeb', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-24 23:01:36', '2019-08-24 23:01:36', '2020-08-24 20:01:36'),
('134c26ee51a387658787c3db0949faa3d3a7d5678dac83857c030d4a9ce5f345688eb59efc383d2b', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:13:15', '2019-08-20 20:13:15', '2020-08-20 17:13:15'),
('1369bed94f55c351ae701364efc9386eaf5125db0cb117562a0d5275d151d1dcb078869a6e9992ab', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 16:50:02', '2019-09-30 16:50:02', '2020-09-30 13:50:02'),
('1383fe6e534770facc3ff6f20c0f2dce8e30910b7dc120d292673d886153caa29f8a76c257f63330', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:28:20', '2019-08-20 20:28:20', '2020-08-20 17:28:20'),
('13fab9384e4e880dc1d853b373cc10637922e01c964dcd0c76be809b158ae5b3258ceb62cea43510', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:18:12', '2019-09-05 20:18:12', '2020-09-05 17:18:12'),
('14546b235cc6550e799f85b46a7cb64e829a35249ed6883d7af3a7119b3a6d4a87406bcf22be1d1a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 21:38:34', '2019-09-26 21:38:34', '2020-09-26 18:38:34'),
('14c096490382591036419128038eeb1d3d87033b0dcb8e32063e737fc0c3e5d57102767354534ce0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 21:53:55', '2019-09-05 21:53:55', '2020-09-05 18:53:55'),
('15132a7df9d9f79dd8e1fd637453f5dbba21307c4140b1356fc6e33fee2da8571acb767288d1aa4b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:50:04', '2019-08-29 21:50:04', '2020-08-29 18:50:04'),
('15cc0310f625ee5c376e97f859fbb04a97a5b43e64926c8ce47c32fb1928ed405f5495707a7a0ce0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:08:04', '2019-09-05 20:08:04', '2020-09-05 17:08:04'),
('15d8103bf830dbad209c2fd573e07bf04e1cfd4a4cc22fb2aa9f14d5d1cb3407722a977a74a8ccf1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:05:21', '2019-10-01 01:05:21', '2020-09-30 22:05:21'),
('15e85826e2ad7f97857a2636fd9969d3c229eb6c604a0dc7364dcea76751d2709d62fb98f781ed3a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-24 22:31:05', '2019-09-24 22:31:05', '2020-09-24 19:31:05'),
('1635cd18f7b0e69a99ada062c8dfd970093e67879fa0cca1189f10c99966e24ab74121340aca0097', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:29:41', '2019-09-05 19:29:41', '2020-09-05 16:29:41'),
('16399ef611dd5ec130b643cf4828026f2cf396352b4220c7d3216abbdf6602f681a99ee5ae21a48a', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:39:55', '2019-08-20 20:39:55', '2020-08-20 17:39:55'),
('164204598d586bd3c1f6e6a6644ea9faae86924832bb61a80052a3d7bc865803f36b62e692aeb802', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:19:50', '2019-08-17 01:19:50', '2020-08-16 22:19:50'),
('1680e9e949add32cec9977204f9eb535a6e4485444074cc6f0fe3bc55258955cddef130fd3756a9e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-25 00:16:15', '2019-10-25 00:16:15', '2020-10-24 21:16:15'),
('16899c5875a59f02cdaee34d0d244b03d549a8969b2dada8bdf8a771a13435d61009467c8241a5de', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:39:07', '2019-08-20 20:39:07', '2020-08-20 17:39:07'),
('168f9aa9fea255079cf439fcab666347a688f9ff69353164fcc930cd39cd38017e4ebcf2d2afc72f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:33:18', '2019-10-28 07:33:18', '2020-10-28 04:33:18'),
('16dbd44736b483b529acbc9d185b1ede84bf447e9bd4382f48bf7fa17c3c9f1c38238b032aeab9ee', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:17:02', '2019-10-28 03:17:02', '2020-10-28 00:17:02'),
('177cc90e8c6531c8b25b12cfd15a67c937af1ae12a6b8794336716f61215608838eebecad7c9eec0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:35:12', '2019-09-30 21:35:12', '2020-09-30 18:35:12'),
('179917f44643695b396d9790872749bf02199c88569069cd658376883ff1950d179845e75fb29e6e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-23 01:42:35', '2019-10-23 01:42:35', '2020-10-22 22:42:35'),
('17a58d58276f705588facbf28f5cd122a9cfc862d43960d5934749bca101c824f0dedcd379ed2777', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:18:57', '2019-09-23 19:18:57', '2020-09-23 16:18:57'),
('17c20fedc47a5a612de5c450762303759002958249cb76df435a71becaee463cc75e70251e3282c4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:42:33', '2019-10-28 07:42:33', '2020-10-28 04:42:33'),
('17c38f127a43e436c93f624f09472d86b36e0ec22c71cd411a5b2b590b0e6f4faa08e325c00b60f9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 07:31:02', '2019-10-04 07:31:02', '2020-10-04 04:31:02'),
('17d8d614e514da685ba262d92bf311f085e15514e350d2aae5bb4e8bae257ee7e2823d592e136a62', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:34:44', '2019-08-20 20:34:44', '2020-08-20 17:34:44'),
('17e186e5fdb3ff8ff357c3d182f8933d3f144e11b9248df53e9583f67f62fdaa8c9ed973db7d289a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:14:55', '2019-10-24 22:14:55', '2020-10-24 19:14:55'),
('183b67c30cd2ddef542a1ae6109a75aa98004e5a20ebe460e75927c229de885ef67f3cd2d52ef418', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 00:59:10', '2019-10-01 00:59:10', '2020-09-30 21:59:10'),
('185b985ad621e433bc1eb09b70871ea582de4bfde907ecf3de08292b95843fb08428fd2e7d17fa2f', 1, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-10-03 21:22:16', '2019-10-03 21:22:16', '2020-10-03 18:22:16'),
('188e76d7670f5cc9c061b6a97d30ef0b2afbcc876d248739efbf1c2083a2613929be1af0d306926c', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:35:41', '2019-08-20 20:35:41', '2020-08-20 17:35:41'),
('18a46fa4c612b2f6aaadd9db638ab4d484ef042bc0982765382ea5b7b3dbcd2948b7fe84ed5c1821', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:21:47', '2019-09-05 20:21:47', '2020-09-05 17:21:47'),
('18e0b22b9718359e57c4f619991be5d02e5fa91f713b1aff08f8e962be2ad22af9cdec110d03485e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:42:55', '2019-09-30 20:42:55', '2020-09-30 17:42:55'),
('18fce5caf900340da4661ef8468155dc58044385cdad203bbf7087012b5d475a2d197366dc3e27d5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:11:55', '2019-09-30 17:11:55', '2020-09-30 14:11:55'),
('190df2ee0e921592e88ffae4737c60a91b1f232ccce8dfb87cbf4877ad0cb268dbde7acd06330379', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:13:35', '2019-08-20 20:13:35', '2020-08-20 17:13:35'),
('19a779191a866bb4bb82f73e31e8d376a33645886abdad47d9b305df20e5c6b8dcbafd7f921fe6af', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:29:36', '2019-09-05 19:29:36', '2020-09-05 16:29:36'),
('1a12c64d31ff34aa3419079ef819118a869ba05a02693117872cf9d889b79bb4ae90f307e4c85817', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 02:21:09', '2019-10-29 02:21:09', '2020-10-28 23:21:09'),
('1a1a7c6e9186ab23bb3d65ebcac1f7a94de1c8e4667c9c3f6c8c1ab64e9eba6fe5fc5fe23083aa63', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 22:19:57', '2019-09-26 22:19:57', '2020-09-26 19:19:57'),
('1a285f80e41ffa1f572b7d469446a6ac97573a98d7ee842dfa17e6eac8873444c73e9f7c671f335e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 00:23:43', '2019-10-31 00:23:43', '2020-10-30 21:23:43'),
('1aba021798e1dcc6b0dbd703e1350d4c595cd7a0e94cd8c057fc044efad60ef916651ac877b9ca51', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 19:37:04', '2019-10-31 19:37:04', '2020-10-31 16:37:04'),
('1b2068ca3fbbabcf8628191e311ab8ae4c430750899de4a1007cee7d02812d0b81db8ed845fdbf9b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:40:35', '2019-11-01 08:40:35', '2020-11-01 05:40:35'),
('1baad917271d2dbc32ed48db25c567ddfb52350cb5113823f2914a64a1c179a28158968c491d6f31', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-19 05:49:51', '2019-10-19 05:49:51', '2020-10-19 02:49:51'),
('1baca79f36a6f872c5ae883419f5307c31afd48bfc62f38db5af4ec60fbdd1e20a4035f129c9ef5d', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-15 00:08:19', '2019-08-15 00:08:19', '2020-08-14 21:08:19'),
('1bb10217adfa86b4bf95e34d0680de79226c23c120490ad72d05bb97fd33a6ead3879b162a496e8f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 23:38:42', '2019-10-30 23:38:42', '2020-10-30 20:38:42'),
('1bc5621861951edc35784d61121db1ffc972381632a5c3176ffc5e4d139551d8dc58fc58d5b9260c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 21:36:11', '2019-10-03 21:36:11', '2020-10-03 18:36:11'),
('1bf135236d2416d74b575a09b7bcf9c48e838d774acaa46efb7a447210fb99aee69be3492f031849', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 16:28:38', '2019-09-30 16:28:38', '2020-09-30 13:28:38'),
('1c28412811876ff5223dee64195db31355dfa0c5580e474716c2f3222192ba8357f355effb731935', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:13:35', '2019-08-20 20:13:35', '2020-08-20 17:13:35'),
('1c42f48d8395b6700f88ff07d3b91cf3e5282ea5f10cd636e7cc55c43849b42b94eef3bc6cb88ea3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:28:27', '2019-09-05 19:28:27', '2020-09-05 16:28:27'),
('1c5bb0d9455993d32676afc9ced6b9ba8dd042071c73babec3ec3a393dc73f946c2b8d4dfefa3fe5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 21:37:58', '2019-09-26 21:37:58', '2020-09-26 18:37:58'),
('1c7215e68b0bbee81eb0f8dacea8052c52d305176c52046691736408018020b4f3d08b587f3082ba', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 06:30:10', '2019-10-30 06:30:10', '2020-10-30 03:30:10'),
('1c77246f3350297f97d2bbe596391f8197fdf0bf2e248eec5e9b7aecf7b006f8c3ecbaf7844dabaa', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 01:53:14', '2019-10-29 01:53:14', '2020-10-28 22:53:14'),
('1cc3f3cf55e402a8be8384080ed199f13b1ab44ed648ecd3469e9fbc9df59961741671f29b68157c', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:35:24', '2019-08-20 20:35:24', '2020-08-20 17:35:24'),
('1cdd3a408000f5107104856244b6fa5a82ecc8b0c3c6f4511ca2cb60622bc29e29ced84dc69a8ba0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:28:09', '2019-09-30 17:28:09', '2020-09-30 14:28:09'),
('1ceb22e50d912674518f16f37f177fef185589f73ee8445935c3db0adbba7b3c59f7e352ea51db1d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:53:39', '2019-09-23 19:53:39', '2020-09-23 16:53:39'),
('1d3c1c83f5d6cddc816cc59864918e24ca9329935d299344c5bd11597fce17fc1c0622fe07d7a136', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:46:11', '2019-09-05 20:46:11', '2020-09-05 17:46:11'),
('1d6a6f5fe18250a1203ac707bc804c32372f826624db519fe994e5ff7fdf6ea397f2d95bd1137abd', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 01:33:15', '2019-10-29 01:33:15', '2020-10-28 22:33:15'),
('1d7cb198f9978d95598f819f65dbd9c20a07c6f6810498ee3044284b388f9bdef63a37f3b25c20e5', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-22 22:15:35', '2019-08-22 22:15:35', '2020-08-22 19:15:35'),
('1de8e4156827128064d107ceb4aa1bfeb03ee1c57ec4a73e98474475a5762560d61592eeedc9e579', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:19:31', '2019-09-23 19:19:31', '2020-09-23 16:19:31'),
('1e0acff79724620449ed2dcedb1c2e150a361fda1e6b152479d57ca303cfb743989548daf8ce8f50', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-22 22:00:48', '2019-08-22 22:00:48', '2020-08-22 19:00:48'),
('1e24286654558c8b117233219109cea696a554ececf0c2e3dba4cd0d52d6b954bc3a5a10c8041e97', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:13:59', '2019-08-20 20:13:59', '2020-08-20 17:13:59'),
('1e2f56e79d6079d9b145db5c86dcc875840099fa44fed8e63b7744175f92c25ef50c4500f74bec8e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 03:22:18', '2019-10-29 03:22:18', '2020-10-29 00:22:18'),
('1e36088a060c6780d40c0779e71fbc05ccf79168625ed43756987bc2e7201de2947d62cf39e7f7e1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:35:31', '2019-09-05 19:35:31', '2020-09-05 16:35:31'),
('1e70f1100569133e6f0cfd71f098cb659d0d45ecd9ccca479cab387b430c27e15242ec1759b2f986', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:15:03', '2019-10-24 22:15:03', '2020-10-24 19:15:03'),
('1e7b5cf9c2bb261ca3db656674a662e3f96ebc1b47462a7c366c58e21ad997cd20f31bd6a5cb8049', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 19:27:42', '2019-10-31 19:27:42', '2020-10-31 16:27:42'),
('1e9266fcd5ad47b380458481b68c14043dd578ab192e6baeef3c6e414d559edfca95785a04303823', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:09:29', '2019-08-20 20:09:29', '2020-08-20 17:09:29'),
('1e9f3c87376683248bea60cf35c0cb75751075e741b64742e3dbe4c8c875d02c53ec8c7507f9ffd7', 8, 3, 'Personal Access Token', '[\"tecnico\"]', 0, '2019-10-03 22:24:23', '2019-10-03 22:24:23', '2020-10-03 19:24:23'),
('1eeb15c87f545725aa79085fc5049fc48add397a16a5e5033df9f93042ae839367b50ddb2cac60e2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 22:13:32', '2019-09-26 22:13:32', '2020-09-26 19:13:32'),
('1eee37023195e1069bb82c1d024ff062750bc2dc4b97d4f4d5cb9998969a65caf3460944e4167068', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:23:52', '2019-10-28 07:23:52', '2020-10-28 04:23:52'),
('1f3dadcbce247575a0384abe29dd9e788c242a4109c158f5150976d40f33572c4de448c3d3591331', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 23:49:23', '2019-10-30 23:49:23', '2020-10-30 20:49:23'),
('1f466a5833e353f50b42ed90e53bf8642a2903d4627729444089ae8dedca35f30346ec1e43cf6ba4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:31:29', '2019-09-23 17:31:29', '2020-09-23 14:31:29'),
('1f7d3559c0867b866ca90a81f7cd4f8cc6afa1f2ce23ac5cc82efd094d1b83cf288870af9b257b1d', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:14:00', '2019-08-20 20:14:00', '2020-08-20 17:14:00'),
('1faf4e3aaeac7d5e7af880b994697e995686d393ff144f62bbc3eb9a28a22fb11ca1570446884b35', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:17:30', '2019-09-30 20:17:30', '2020-09-30 17:17:30'),
('1fb142c960c1f1914f1dd902faa119ef104df42f1f6a6e17d40cb34b251c7b6a62b98d97cd597259', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:22:51', '2019-09-05 20:22:51', '2020-09-05 17:22:51'),
('20588aac517fb38d0bb0c94c1043ebb155e18ccd47db41f60fc82ad6a9f33e6f7b64e3ada1d3c2d3', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:59:13', '2019-08-20 20:59:13', '2020-08-20 17:59:13'),
('21233394f46bd71306c06b8ccadad6212e7696177a6bd656a55e098735344b523c841855f586c3af', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:53:34', '2019-09-30 17:53:34', '2020-09-30 14:53:34'),
('21612a87f85d68be12e6b526ee98d6fc1a350176c18fa13f663735c520070ed5034202c7da66874e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 21:20:27', '2019-10-22 21:20:27', '2020-10-22 18:20:27'),
('217c71354370859f5012b644bfb67bd943d2201735941e81dbedce435fe9009706dd7957f96d956e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-10 17:24:08', '2019-10-10 17:24:08', '2020-10-10 14:24:08'),
('2182ebfd9f75d644866e6a065e6aae73b3ddfa33648db5c1fe0cd0c1586eb62baaf9d481d0e10405', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:15:45', '2019-08-29 21:15:45', '2020-08-29 18:15:45'),
('219d0468444c0b0ebaa6b8b1cab4ac47feb2b731288b3bd6659c6024f897e1a0f0c661026e318a8a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-16 02:01:29', '2019-10-16 02:01:29', '2020-10-15 23:01:29'),
('21f40f6ab65ddddbc87232f46fe45e34f84852fdff872997aefb87fede507e08074137cd749537c4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:32:11', '2019-08-29 20:32:11', '2020-08-29 17:32:11'),
('225580e13910461729995d9cf50da33720e357113b34b97a1e0df0760a03675302a0e5741747f9a1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 23:50:09', '2019-10-27 23:50:09', '2020-10-27 20:50:09'),
('226f42c4de84f04fe5093c7ee7d6f5a269e3e51d996861722802a217fc4d4b7078b5730709f77e63', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 22:19:14', '2019-09-26 22:19:14', '2020-09-26 19:19:14'),
('22aa577fa8461b34f954aad055b93e42825e0a32aee178194ca0cb15bfb43c93be4c3788c76389da', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:04:02', '2019-08-20 20:04:02', '2020-08-20 17:04:02'),
('22fec7fbe80094e183b58245c4c86f7112442c584ceda1c571c82a824f0bf470c087ad6cc095e254', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-24 21:55:11', '2019-09-24 21:55:11', '2020-09-24 18:55:11'),
('2302467c7f3e8f3c4b72bad9b1e6439d9e8e4867fbbcc6c0f5e5acae7939bae608650e00c10f217a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-30 16:22:24', '2019-08-30 16:22:24', '2020-08-30 13:22:24'),
('23124070a2a0ac6b3c9b61143c1c602f1101e19ff46ff57680993d7463fa83f1c07f32ca42754820', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 17:09:28', '2019-09-05 17:09:28', '2020-09-05 14:09:28'),
('2368d97196aff635facec060d644494b5d0b19eb3a73d1cd0290836e88cafc41a7fa9925c48f3ede', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:32:20', '2019-09-23 21:32:20', '2020-09-23 18:32:20'),
('236fd6df476b331f7a5e1957f70277a3902c0088525c9fd3499a3927cb090a1af2123e4be9481c80', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 06:38:52', '2019-10-28 06:38:52', '2020-10-28 03:38:52'),
('23b568c179fe8b53b10418895eedb3d4fbb71570d2ce5a6e5d755dd58e0210cae11accebac792bec', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:42:19', '2019-08-14 23:42:19', '2020-08-14 20:42:19'),
('23cbb48437627f472a189c5bf88b53408787645e6a22afbfa14fc218d25fb617107e5040535e56f4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:51:15', '2019-09-05 19:51:15', '2020-09-05 16:51:15'),
('23d3efdae9e2cac6c10d3ca7ef5de13606d740bc04a4ea09d4575de8eb61b2db74b2cb77453f7c0b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-25 00:49:08', '2019-09-25 00:49:08', '2020-09-24 21:49:08'),
('2405f062078344c77fd1de746b8f009d2584a22c08f1fbfa114260c2ccc74a5da1d2d245cf891dac', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 03:14:15', '2019-10-29 03:14:15', '2020-10-29 00:14:15'),
('2419848193d8e6ebd64227e577a1ef90df6473ef35087e58688b57c1d1b1182e926a2aa8666e6819', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:10:40', '2019-08-29 21:10:40', '2020-08-29 18:10:40'),
('244def089ff56ea62a778b951566f69bfccf52b4e72f9ffd85a6018472d2e9c5adaccb4ef25659fc', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 17:45:52', '2019-11-01 17:45:52', '2020-11-01 14:45:52'),
('244e0c9da0d35e75fc1f805d3df32a1d955d56b6af0f963acb3e33bf13fec434fb80dd402ba3a9cc', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 07:55:21', '2019-11-01 07:55:21', '2020-11-01 04:55:21'),
('245b1dbc145c270bd8e7bba106c09a266c59a7fad21c6c48de94c144ff46778deb38b974b0ea0339', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:02:09', '2019-10-24 22:02:09', '2020-10-24 19:02:09'),
('25418e97d74d49ee432ee69d6a83f463c2d7aca5286aff579ad8dd1c6d41d733a5037e4a87fdab65', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 07:22:40', '2019-10-04 07:22:40', '2020-10-04 04:22:40'),
('254ca7fdd15b3c27487c102cb97670364e4b54b29789b2f9d9c00e109c3cba24452fdef29ac52a33', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 21:53:16', '2019-10-22 21:53:16', '2020-10-22 18:53:16'),
('256bfa3813e70cbc5af359699da354f0f95e27b20067e5bf310a4ec1b08d354a4b4e62b811ffd566', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 05:46:31', '2019-10-28 05:46:31', '2020-10-28 02:46:31'),
('258ce3ec885583810e4ddba9b111b3e11dce25eef80e71154eef108ebc415b4bb10fd64526352e17', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:34:34', '2019-09-23 21:34:34', '2020-09-23 18:34:34'),
('25c364b9d34c376e7dfd4d43f2c465d2808f97ce11a352c9f6b1a03724cfa008737562610776a8dd', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-23 01:28:03', '2019-10-23 01:28:03', '2020-10-22 22:28:03'),
('25fcd8a48600e2f190b522253479469fb2a12823489027725bd98350a2fe8b24975831d779ccd194', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:20:36', '2019-08-29 20:20:36', '2020-08-29 17:20:36'),
('25ff413a71d8e3166e721ce49c2358a11ea8a6203e342ea6f15efaeb7ab1eaff284de2cf4aa727a8', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-24 23:15:15', '2019-08-24 23:15:15', '2020-08-24 20:15:15'),
('26952f53eebd46656b1ea4d18a6b2285317745e31fd0084591e22c95e1fa763a656283621c6528c1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 23:37:38', '2019-10-30 23:37:38', '2020-10-30 20:37:38'),
('26b28193bd86e622fa19be54aa86df02cafcb56da921a26839b414bc7b18ea6bef621ffbf0513e1e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:38:35', '2019-11-01 08:38:35', '2020-11-01 05:38:35'),
('26e1fd733bfcbdfd05f248c3216ee3163ac2bc5bbcee64b7913fdfd70af7791d4f29e770f6caf0df', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:41:16', '2019-10-01 01:41:16', '2020-09-30 22:41:16'),
('26ed8996b1cff8f76134841580cd09f78b09c8961cef81f89948ed443322ded0b33263c031b59b75', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 06:37:07', '2019-10-30 06:37:07', '2020-10-30 03:37:07'),
('274092321761fbda938ec62f8c2df4087b6ad4d09a817e6a62ad358f3cd435568abbc7ec7b1b5c42', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:45:10', '2019-10-28 21:45:10', '2020-10-28 18:45:10'),
('2743a0b124e587c74052548d05241d6ac56197febc8c40d90bc4c814703af010df94e3ff604e3963', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:23:17', '2019-08-20 20:23:17', '2020-08-20 17:23:17'),
('2743f10a33d9744244f2073d0c54d183a084978ace89df39689299f80f908717d1d8ec9a94dbd966', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:46:33', '2019-09-30 17:46:33', '2020-09-30 14:46:33'),
('27494f9d60ed255a4d4679611c746ea3dcc3cb7dee6b8dbad6a8f664374ec74f9b078c85fe5f51b0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:07:29', '2019-09-30 17:07:29', '2020-09-30 14:07:29'),
('280530359c40b0c0140fd3144202bd7e9532883a9edbab21d362004c6bc42ebe8d69d475c8df2f26', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 00:34:38', '2019-10-27 00:34:38', '2020-10-26 21:34:38'),
('286b775f15660538715665185cd7b114b56ecca6c33bca67e38b76041a118076161029e17df0e383', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:50:37', '2019-08-29 21:50:37', '2020-08-29 18:50:37'),
('28978d9ee329db712610bd7411a4e6fdd16cdd34dc5dada481d009dbbb623d166ddc93d20ae5c86e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 02:56:43', '2019-10-28 02:56:43', '2020-10-27 23:56:43'),
('28b4d6bac51a772d61db1594883799278033575c67d8914e39535f9e560e2f6174ae3d34a709007b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 00:36:29', '2019-10-27 00:36:29', '2020-10-26 21:36:29');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('28bb507b171d83c21c2e0bcaa02c441d7d2b8d3104caeabc79a72dfb7052331a02d6eff16512f495', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 00:07:41', '2019-10-31 00:07:41', '2020-10-30 21:07:41'),
('28dca688616fb4524565456f0050439d7b91e772b9eff273cb8f470f46b5a1abedaf45b5037a4ffa', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 06:41:38', '2019-10-04 06:41:38', '2020-10-04 03:41:38'),
('290d47841025a89f22464dedf4e144eaf4f15dd48dceecd5dd809a6d98f6291559b6824ae2dffadc', 8, 3, 'Personal Access Token', '[]', 0, '2019-10-03 22:10:38', '2019-10-03 22:10:38', '2020-10-03 19:10:38'),
('293fdaba2cb7e7d4372e561f7b7188b55f699c2b00641c2869cf4a35112bafa37cb19bf63251e9fb', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 00:35:45', '2019-10-27 00:35:45', '2020-10-26 21:35:45'),
('297cea2139a059347697a9616c3d50ac15ba2f5a9cd183c07ab40cda68470bb754d0f92bb0b66114', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:30:43', '2019-10-01 01:30:43', '2020-09-30 22:30:43'),
('29dd1f7517aa366447a20d92d162938c1eb3a43a8117bde38d1789fe62a892534838fe452ea78c0c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 23:02:53', '2019-09-06 23:02:53', '2020-09-06 20:02:53'),
('29e319e2207de6ff15c59853a262bf0a8fccb37b32de5ea62e2e7a225b03e9286b63c8856096aa6c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 19:29:35', '2019-10-31 19:29:35', '2020-10-31 16:29:35'),
('2a003caecfd85e8a3c55f0f9439b45eb33bd81cd49e4a958dadd1fe8a250316c6f449d5bf4c18835', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 22:09:57', '2019-09-06 22:09:57', '2020-09-06 19:09:57'),
('2a1784b439ef90dc0258e35c83d00db507940f723bdebae4b91be298151360a49eac11bedf2e8c81', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:44:25', '2019-10-28 07:44:25', '2020-10-28 04:44:25'),
('2a3ababe2354f6746ae2614a06820eb1123c6db36382299c0947fb2b1a5fe2cea2a68290f0416fe0', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:34:29', '2019-08-20 20:34:29', '2020-08-20 17:34:29'),
('2a64920b1774c9578cd93fc85801aef11a9e7005ec631a26162a66d588d710c0e4d4f5d8cbee3dca', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-26 23:53:20', '2019-10-26 23:53:20', '2020-10-26 20:53:20'),
('2a7da4dc24351c8b8b62439f527f8464e27f6b10ebaf9d0ed08da853e0244a263becbd1b7b331e3d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-13 23:54:21', '2019-10-13 23:54:21', '2020-10-13 20:54:21'),
('2a98e652b3220162f378e4f59a91fdc81d9553f7342aecfeffdb3ac98d4bce487c5c4aacf2b56093', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:23:23', '2019-09-05 20:23:23', '2020-09-05 17:23:23'),
('2ac54bbd952ba6f7d4c8b06fd060e215912145072e9da76c221222a3cd78d30885b6af7eb2300aa4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:02:55', '2019-09-05 16:02:55', '2020-09-05 13:02:55'),
('2b5c821f92e208b099ab7b9624c59700c3a7f6ba3f14b2d922c7fc4fb89361b382db79de233223f3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:19:52', '2019-09-23 17:19:52', '2020-09-23 14:19:52'),
('2b9148fa4dca01025cd8f89a1d5775fdb5e5810a190e76dcd5b5b0f00eda51132f314f71787c6429', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-16 01:58:40', '2019-10-16 01:58:40', '2020-10-15 22:58:40'),
('2ba99f794ce9df964ca689ba6d5432cc9a5c3b7dd577a0ebf05d4228a7395a4b473b1276828e1de7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 21:49:34', '2019-10-22 21:49:34', '2020-10-22 18:49:34'),
('2bdd04bd6a9b5ec5f46bf2ecf26d37213e4b7d869c4b82fe493d9b2232257febd3c809319188308b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 06:39:52', '2019-10-28 06:39:52', '2020-10-28 03:39:52'),
('2bde768148342f34a856a84acbd98e46cbdd65c8ac79f813a1dc3aef96fef437fd171f794aa881cf', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 22:45:41', '2019-10-03 22:45:41', '2020-10-03 19:45:41'),
('2c52d7bf97abf284bc82d659caa7e53a38d1535fcac16ef5f43165e4fca96d716ed46ee0e051d780', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-08 01:35:54', '2019-10-08 01:35:54', '2020-10-07 22:35:54'),
('2c93c23e7da867c03898a95bf15491ca98ab3159867f9c8411e93b91f81366217c19542608eeb81c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:16:44', '2019-09-30 17:16:44', '2020-09-30 14:16:44'),
('2cbab22d43b7aa2314ab991c27775d187953a42538f0c4fa8710faf58c15f46d38ba0a86a55f8b0c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 06:58:12', '2019-10-28 06:58:12', '2020-10-28 03:58:12'),
('2cec237b64086542a0decd19418fc809aece1eb5120272f70d89ced6d2a0544f12e63b66f74c758f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 07:06:52', '2019-11-01 07:06:52', '2020-11-01 04:06:52'),
('2ced2bc3c035ab6dadb738fd6d6f0bbe3f231c6748cf8e9c39d01b5ee2146c0f813fee21a02cc564', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:50:00', '2019-10-01 01:50:00', '2020-09-30 22:50:00'),
('2cf24cc28e7867f8589e4fc954a0cfe3d605eecb6f75f0f116e7e569c4a44c29868fa58851d5c2b4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 23:53:08', '2019-08-26 23:53:08', '2020-08-26 20:53:08'),
('2d50e549a9de51ebf0ee4d547de8c81b62f7cd8d25176172bb6368d9cecd9ac6e066a41eca816a55', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 17:52:17', '2019-11-01 17:52:17', '2020-11-01 14:52:17'),
('2db1d47a1f563d3e8375883ecd77497f8ed777894434e46619c69fa44c077c30b1c99ba53631e6d4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 03:42:30', '2019-10-29 03:42:30', '2020-10-29 00:42:30'),
('2dc5d0865ea7b8c7c4bebe0abfaab93a3c9e9d7e8b55df6b0d32ed94034c7fea94df7ec9e2f99cd0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:23:49', '2019-09-23 19:23:49', '2020-09-23 16:23:49'),
('2dd3f78d166c88a1caf8071cc9d8362c2004988160c519b5a96a0ed547ceded0819b276398f25775', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 22:08:22', '2019-08-26 22:08:22', '2020-08-26 19:08:22'),
('2df2e1ca3eb9df9209295ba95e6698d15d2010767e04e7725d7ee32117e71d6cc40a11ef95bcb160', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 02:01:11', '2019-10-01 02:01:11', '2020-09-30 23:01:11'),
('2e8281f1cfd14f975653488992421cd9e1b27c3c99f9e089895793e955e58eb759d0e76d11a6f75a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 00:14:02', '2019-10-31 00:14:02', '2020-10-30 21:14:02'),
('2e84225c823b0d3cf1f19999cd9cb93995cb1a271fdb952e91f3931ad7f492982e217ec019bddf64', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:29:52', '2019-09-30 20:29:52', '2020-09-30 17:29:52'),
('2e947d1f42887c722c4ccb188446b719fecc0f7b55395d1fb18b0431ceeba4c1fd62215a75b0f8b9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:23:23', '2019-09-23 19:23:23', '2020-09-23 16:23:23'),
('2ec6215e6f033b630915e66cd85f51c3a36bd311b416552d15c8e541e17aeb909c6b7d291d3a9176', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:29:02', '2019-09-30 21:29:02', '2020-09-30 18:29:02'),
('2ee27a47b00ae2b05b47f219a329c7f3ed51fa585581314e76b3c87c6918118c9a0ae26cf37bb4b3', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:36:09', '2019-08-20 20:36:09', '2020-08-20 17:36:09'),
('2f1cd885a59f016107c59ca9174de4dfaf2c90a3b5a52c93bb3a05db887c06845891f3c250a93a6c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:15:26', '2019-09-23 17:15:26', '2020-09-23 14:15:26'),
('2f2da49114167ecd9dfacf54b38c3e9e1ea1924894f8d6922d76f7440b1585373fa393096cd0ad86', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:37:36', '2019-09-05 16:37:36', '2020-09-05 13:37:36'),
('2f423761945ccac010e1d70c8b62dcb442e2978c42f27c0139b2bd9d7fe4212c84fe8c919cf1964d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:44:59', '2019-09-05 16:44:59', '2020-09-05 13:44:59'),
('2f8018d0900694bbd2479fc7fd0110f151d2b7fc67455125b5fa065a20a866fa75f1cc9a22d419c9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:32:13', '2019-10-01 01:32:13', '2020-09-30 22:32:13'),
('2f8850b4dd2f3713d209e61be7db46757e547fc629ab1c1820e336455f63f9b4b5f4afabe4a9966c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:08:13', '2019-09-30 21:08:13', '2020-09-30 18:08:13'),
('2fa8b605b1e7353b21fb4ee89d1bb9b1df672654f86a86922683d331b96cf339386deba4a0d920d2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 23:09:19', '2019-09-06 23:09:19', '2020-09-06 20:09:19'),
('3000d60a53bb76c6f6f6b582dbefa6a4fc693e4652045d5d0dab37e9bb9e252a9ad41c9f797fd390', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:34:24', '2019-09-30 20:34:24', '2020-09-30 17:34:24'),
('30246a11b03461151f6122c4e348559bab9bbf4f3b6e002f225773a7c877150b48b8b74d1a0f5ff3', 1, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-10-03 21:27:52', '2019-10-03 21:27:52', '2020-10-03 18:27:52'),
('30399ee32c9a5a58a1d88f148cff0b3bb64eab85995ce682756c731fab03f0569f38bafe389e150c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 21:28:19', '2019-10-03 21:28:19', '2020-10-03 18:28:19'),
('3041537a3e54b2f285ab61974371e854aee9800163151e9cf8e56a724ddc160d2dcf7b350389b0c6', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:21:49', '2019-08-20 20:21:49', '2020-08-20 17:21:49'),
('306070488b40fa62f1e01b462428f36f7de7ebc9d2153666d7404642c1e07e3c67c23d6d94862649', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:39:16', '2019-08-29 21:39:16', '2020-08-29 18:39:16'),
('3069da6ffb0f53c1af8771b6203f6795b0f9df15b263a262aa64116caa01d173c961b32d0d9f2497', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:48:24', '2019-08-20 20:48:24', '2020-08-20 17:48:24'),
('3083adac271ae3b607c2d73ea811ce6cd2f1625a8f08611864b1cf6a4b1d107690547eadfb87affb', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:15:49', '2019-10-28 03:15:49', '2020-10-28 00:15:49'),
('30aa68ddcc5077f1080ee6bc94a94dd769584eb4cca33978c29bd3a50232a3ad239ff09287ae35ac', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:44:02', '2019-08-20 20:44:02', '2020-08-20 17:44:02'),
('30b0830c816e39262bbe2b6092b594c6cb8709d7e32a5c1c0fd9347d80603526153fff559a55fb5d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-09 01:33:15', '2019-10-09 01:33:15', '2020-10-08 22:33:15'),
('30b0c12da65b9bb89d5588cd7c8ac53c34729c67a51706d2d2680db4278f581c18f308bf3445f5c0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-08 01:28:26', '2019-10-08 01:28:26', '2020-10-07 22:28:26'),
('311b01c2d8e0966cd2add47ebd1bb1d262ea69bddfdabd33c8065628eced545f37dd23271c664f20', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 05:44:32', '2019-10-28 05:44:32', '2020-10-28 02:44:32'),
('311ffd3eafec7eb4e050eb6eb97c1395a0b42e6034b452d3537c08295b5e9a421d0e222600124810', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:15:21', '2019-08-17 01:15:21', '2020-08-16 22:15:21'),
('313a4bf475a277527d2757e2110191f8ad50aa7f37967d826525131c079246c04a084f85760413d6', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:47:29', '2019-08-20 20:47:29', '2020-08-20 17:47:29'),
('317c0795ae9a173cf248205809871e48a19489241fee42cb939378e65604826fba0b873e937021ae', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 23:46:27', '2019-10-27 23:46:27', '2020-10-27 20:46:27'),
('318571aaecc77e12e2eed4f112fa733b2e698ab50c0aa9b6c1c043c83c9f07e0710cf8ca48867906', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-15 00:12:31', '2019-08-15 00:12:31', '2020-08-14 21:12:31'),
('31afccdd47aed5af2a2ab35ce702f38462ada90a46b827cd901e7188d679cd5899bedc3c0b5cdb82', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 19:30:45', '2019-10-31 19:30:45', '2020-10-31 16:30:45'),
('31e8a3da8aa336d119a5b2c795ae77825e91e7aa848b24eb6da1d96ad24e01aa12ca32df80acc733', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:32:07', '2019-09-23 17:32:07', '2020-09-23 14:32:07'),
('324335e58d0b82ae8d1176088f055557784805d74a5becf07f49dec24253b29a09b71d0f62bab463', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:20:44', '2019-10-28 03:20:44', '2020-10-28 00:20:44'),
('327b49e85b322d10e767c8cd70ddc10b99d1272f0a940091fb5e9ec4380eab79e4187e2ca26ce0ec', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:47:22', '2019-08-20 20:47:22', '2020-08-20 17:47:22'),
('328b61ee41bf792e62822f9a89fdcd6592739db61e1b14707b7d45c401094ed518fe8895222cfa5f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:31:02', '2019-10-28 07:31:02', '2020-10-28 04:31:02'),
('32a124bebf28ba7ba38ea7ad1c92ee1ae07ed74ef35d5639ab197c6999b087ad4b755885fde23169', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:49:12', '2019-08-29 21:49:12', '2020-08-29 18:49:12'),
('3310a87c4c119fcc28ca5827b9ad336d9aaab88ffe93502958f904ea9516126bce99b5b7d462cc18', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:28:32', '2019-08-29 20:28:32', '2020-08-29 17:28:32'),
('331e6c87aac923a785f6887e2fbf109aaac20a651a3fda9f7589a2a6d2f4ffddf0eb6c83d7c003d4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 21:09:03', '2019-10-01 21:09:03', '2020-10-01 18:09:03'),
('3320226e3eaaa4a02c451ab6709e3951c60fb7e1c0c7fdcdc14fab874624514d80334f1bfaccb426', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:07:10', '2019-09-05 16:07:10', '2020-09-05 13:07:10'),
('3347526f165f740f8ff68ae7cbbc0a93adb7fb212b59a7c8656e98c9c62a89327d9698be0bb061df', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:25:27', '2019-10-24 21:25:27', '2020-10-24 18:25:27'),
('3395a75590e899cc6c8661a38e1aecba6f377ff8964ca70c7610de67015154eb0ea0625b2c7a843f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:20:10', '2019-10-28 07:20:10', '2020-10-28 04:20:10'),
('339d0e4069b057a512677c88f0e3bcaf27f35ab6ca6e0f75e0e099224d918f494724304ba356c170', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:42:43', '2019-09-30 17:42:43', '2020-09-30 14:42:43'),
('33e163d477809987f1e1782baa5bf8035dd01f407553021c3c7e208f0497d6150b754dd116c98201', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 00:34:38', '2019-10-27 00:34:38', '2020-10-26 21:34:38'),
('33e9955992704111b9bb737801e3c5b07246b8a9033f675e76fbb41b6fe4b9507651a61895d723a7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 01:22:07', '2019-10-28 01:22:07', '2020-10-27 22:22:07'),
('3434ae6fa72f9581bdcac74a5fa0da079bfcf3d28e73aba6e5b230955a849890faf8bbc7428503c8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 23:53:11', '2019-08-26 23:53:11', '2020-08-26 20:53:11'),
('3440acd262ebe17b500daee1d670dcf685cd57e1f61e85abee5c4057dccc5e4e5ca899393cc15457', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:40:17', '2019-08-29 20:40:17', '2020-08-29 17:40:17'),
('344175fc707031365d1f4469b8ba4359a4aaa0fe7eb8dd52a768d90a006b945e87eebc90b1ec1ff4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:24:32', '2019-10-24 21:24:32', '2020-10-24 18:24:32'),
('344c2322d67617772139c2d88218f4123fe89862bfbb82fb73f52be711ac8a746b640c424c6c6fd2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-24 21:51:51', '2019-09-24 21:51:51', '2020-09-24 18:51:51'),
('347a507407e427368b922af368ea4bf57a211d37c8615653a778964a7466da91479829984a870205', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:40:06', '2019-08-20 20:40:06', '2020-08-20 17:40:06'),
('34c61186eb03d97abebdf500631df9e9a73d12bcbe4b44210427745db04586b5e313fa28a5ebd0d8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 04:17:03', '2019-10-29 04:17:03', '2020-10-29 01:17:03'),
('35320a39bd87e5e3b0754e1b9036ecad43ead0a8c4ec2963df178ab25495fa20db1fd6c6a83d1bdd', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:56:30', '2019-08-14 23:56:30', '2020-08-14 20:56:30'),
('3591ccf88288e5a6d98f4a5df0071f56c22a724880f4d4be151a3d32464aef6d93f828aaa020a105', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:16:53', '2019-09-23 17:16:53', '2020-09-23 14:16:53'),
('3591e9f808d65c5741d59578c552d927ff7a53145af80d6616454fd2bd1701d9b13548c214620445', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:15:54', '2019-09-30 21:15:54', '2020-09-30 18:15:54'),
('3595f565742423e6c58e1b647df699b739c7d81880ce77d0f4a63a23cff5d8710b93646f82df76ad', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:16:16', '2019-10-24 21:16:16', '2020-10-24 18:16:16'),
('35d8b1cb049a22dda2eb12e00bad53596b2fd2e3ca56f07fd997f05006204a0173f349cbdccbc786', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:38:23', '2019-08-20 20:38:23', '2020-08-20 17:38:23'),
('3600d5edcb00a7d178b7faf204e432b72a1eb13593f1eb2d4b5dbb97d0505d5466a1318de6c7b855', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 16:43:43', '2019-09-30 16:43:43', '2020-09-30 13:43:43'),
('365d7e1a688df5d322a123d1b895a4721de1f9347fe7063ea7b171da02ecb4d54ece52513114a1a2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 21:51:05', '2019-10-22 21:51:05', '2020-10-22 18:51:05'),
('36706b32d9a8f642b0d60d16b3d1cfb5409e43254e5df99b4c3731f0a30b0ef3fec6ecca964906f9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:43:58', '2019-09-30 17:43:58', '2020-09-30 14:43:58'),
('370b97fcc57aa01300a679f2f3e12397f7f70529fcdc6b6814d1ac56e35c774b4fb1bf344321a53b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:32:03', '2019-11-01 08:32:03', '2020-11-01 05:32:03'),
('3722c39f410dfdcc19864ac1133d03f377e890a473ce5461f34b70107514a75c36a78a9563c21c3f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 03:51:36', '2019-10-29 03:51:36', '2020-10-29 00:51:36'),
('376bd24320f4c78e7b459c2c2b640a5de297fc9305c2e10daa1af9dbf172d95ce1bc8a107ac0b7ea', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 23:11:50', '2019-09-06 23:11:50', '2020-09-06 20:11:50'),
('37716e26b67ad2343c998428b094353f9559fecbf7e2d70ef861e74c855838e53cd0f60f5d66624c', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:10:13', '2019-08-20 20:10:13', '2020-08-20 17:10:13'),
('37785584567bad38adaa2ebbaadc05933a154319ffd7112c124494e62d972b247c426c74c03fe96f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:14:02', '2019-10-24 22:14:02', '2020-10-24 19:14:02'),
('37944459f2210fdb2107486377d274ff307f496b43e87255f5de33943b0be4e5e6aa362bcc2fa6af', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:55:32', '2019-09-30 17:55:32', '2020-09-30 14:55:32'),
('37a967e5eebee3e3be8715011b965d17fde299fbfcee826c21eccad8e31066437834faac579b997d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 22:10:25', '2019-09-06 22:10:25', '2020-09-06 19:10:25'),
('37b33c3b58ce8947a6e52b0454f099d042efba10a39fe5faf712778e40b58e78063080b2affa807a', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:19:15', '2019-08-17 01:19:15', '2020-08-16 22:19:15'),
('3802a86a7b202bb2eda1b1e4ae78f541ee1f6e574f91796bf74907ba656bf4de5208ab1a4272e4f6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 23:40:04', '2019-10-04 23:40:04', '2020-10-04 20:40:04'),
('384cf983f8ad476d6125f2e54ad64161a5421af3d5cc5357745278ab62665f125d1275b1b8918c0e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:40:57', '2019-09-30 17:40:57', '2020-09-30 14:40:57'),
('3850359d359ecb435885375745c02ce29c9227ab118b925c3bec2e4c982b3dabc7d5f6b42eb89fd1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 22:40:36', '2019-10-03 22:40:36', '2020-10-03 19:40:36'),
('3851b80ae9911781c2bcc5ef9fb9201c231467b4b4f559eb8bc0f67a56fc16dc61ad874943067a98', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:18:40', '2019-10-01 01:18:40', '2020-09-30 22:18:40'),
('385bf993f5191cb69060cf865b0fd9086ee908c0d12b418f71f6ef308696aa0acbb0d58bd02a1542', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:09:14', '2019-11-01 08:09:14', '2020-11-01 05:09:14'),
('38b2cba12e9be01324d8777d7c93bb3271453abf7fed055b2eaddae1c9178a611bbd202280b949bb', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:15:43', '2019-08-17 01:15:43', '2020-08-16 22:15:43'),
('38e48e64e3bccd26781592473dd980cd339878ca5a0a10f988f5e444cb624c79defa65b7bf70fa10', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:16:40', '2019-08-17 01:16:40', '2020-08-16 22:16:40'),
('39158fbfd67fd8be73d825bf72f5f360d4c50e3507967eede040ee0443c4c6c595e711a3e4b8d838', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 23:53:10', '2019-08-26 23:53:10', '2020-08-26 20:53:10'),
('3927e2397242cc12c59a3338351235550ca5da6277c19475c87c3d5952dc86e71e2059ede86d64f2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-19 01:26:35', '2019-10-19 01:26:35', '2020-10-18 22:26:35'),
('399a4c3192418987c4c9ba2e67572dc53330a5279922e35a9b512d7dbc1e1001cc36bb8d3ccfa318', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 06:57:21', '2019-10-04 06:57:21', '2020-10-04 03:57:21'),
('3a094244a7dab406d05378dac0aaba24508c3615259784dd8343c48dcff6390bb312eae5d7c8ca5b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:30:50', '2019-08-29 20:30:50', '2020-08-29 17:30:50'),
('3a9e4fc2dafb887f6a7547a188cfd49d297a44249a71150bdcef8dd1963fc67f7353eadf47ee95de', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:10:35', '2019-09-23 17:10:35', '2020-09-23 14:10:35'),
('3ad6c5dabac0eb4708af5316b69ca293acccc3dea2bea78788e784ab15e746c0e5a18caa24366176', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 21:27:11', '2019-09-26 21:27:11', '2020-09-26 18:27:11'),
('3b163d521b792e6aff5970e89b8aba1102656c5bb1f5de428ac143a24af493c6d84ec7c6babd8917', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:41:27', '2019-10-28 21:41:27', '2020-10-28 18:41:27'),
('3b31ef4ee0a202b655327f5fe595ea4a5b67ccc1f499fe46ddd7dcc0915961d2480562a22c8e9ca2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 18:31:35', '2019-09-23 18:31:35', '2020-09-23 15:31:35'),
('3b5a044df208d882cbb5fed9fa1cf096c5dccfc25f19588f054ac2f9f83ef4afcd20802f1b664461', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:01:41', '2019-09-30 20:01:41', '2020-09-30 17:01:41'),
('3b5cc19074a94462df418c1ba11b65eaeb3b6fae20c0af4d32a4b50dc2fffee411d951e9d8ac003d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 23:13:39', '2019-10-27 23:13:39', '2020-10-27 20:13:39'),
('3b62faf9a4372f7348987e583d3f373f7dc307bc0fe8fed8121797ab17ad355e03c9ccf1a3c42a21', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:25:15', '2019-09-30 21:25:15', '2020-09-30 18:25:15'),
('3b7e0c2ede630034b9dbeb1489d1872f89cb086077b19ceaabb385ee41747e313cae9027396cdb87', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 22:13:18', '2019-09-26 22:13:18', '2020-09-26 19:13:18'),
('3ba34b7ba25febd5f6e4e2c7db80dc0e25635bb082b31f6d51d63e6bf28d5daf457e1136ecb74faf', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 23:21:02', '2019-10-27 23:21:02', '2020-10-27 20:21:02'),
('3bb509346be12343c15f1f56c049d6fdc3d963bc0f08e9e9e47ba5135920fe1aedeb6d9de5752161', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:16:52', '2019-09-30 17:16:52', '2020-09-30 14:16:52'),
('3bd25e5178f3506c698d35eff8a1dc298eac7f825b24f5e41d1f763fc638f71c0f8ad86649057e60', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 19:58:53', '2019-09-30 19:58:53', '2020-09-30 16:58:53'),
('3bfc1205dbc2192b82530c4c09960ec9bb34bb5dca28f40dd9d9d409115cc052b4b9fedefa5668d2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 05:47:06', '2019-10-28 05:47:06', '2020-10-28 02:47:06'),
('3c00c1011f83a466d1791cb736bb01eda5984301dcb02806601e9737afa051a60ec4527b3d6bcb67', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-24 21:42:04', '2019-09-24 21:42:04', '2020-09-24 18:42:04'),
('3c2fcb68ef363e421af1bff4c1b0d2e8aba15c522c12c6cf61f1948a24bab7c1fadf43eb395e36ce', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:10:47', '2019-11-01 08:10:47', '2020-11-01 05:10:47'),
('3c53a5724da2b027ca4e70ae1bf9e7587b3c3e7fdda88d3c43570213577e9cd3f868a11350780bed', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:33:35', '2019-10-28 07:33:35', '2020-10-28 04:33:35'),
('3c760e0973e241e64ee0c041d178128f5013051a4e22a53316a0ff44feb643ed3f1c04f1f35f2298', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:30:36', '2019-09-05 19:30:36', '2020-09-05 16:30:36'),
('3c921743d11e4fcec50261648d595aec1847b0697dbe64880cd03e626cf4df22b189acf4b656fec1', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:35:59', '2019-08-20 20:35:59', '2020-08-20 17:35:59'),
('3ce93fec7c0a6a5b5225d6b8d5d60524a9701289fd0ce1d12dc9f40d0ee2586bc0e778684e96dec4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 21:37:58', '2019-09-26 21:37:58', '2020-09-26 18:37:58'),
('3cf2b34aa38ff7b89e06086683ceb33210adb0a1162f62859cb503cc18a99d5aa62ad3929ffa98bc', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 23:53:40', '2019-10-30 23:53:40', '2020-10-30 20:53:40'),
('3d0236661bbb5dd45a79bf814446e23222204344307207188b206e9315da9ec19f482fe086c66704', 1, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-10-03 21:23:35', '2019-10-03 21:23:35', '2020-10-03 18:23:35'),
('3d17d7fe60db864ca7318e797bc673ce572924550dcd819cab723187db90a20cb51b4b5570746c94', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 03:37:25', '2019-10-04 03:37:25', '2020-10-04 00:37:25'),
('3d312b1c3aee089b0fe70b0b57eec3127bf3838382a1bbbaf5a270c351c02627e67f465188711840', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-24 21:37:50', '2019-09-24 21:37:50', '2020-09-24 18:37:50'),
('3d484bec3d3201d99c507ad05cf906f3503b3a9c04f4a2aec1c221648b236879bd31d8c1458fb4b0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:15:10', '2019-09-05 20:15:10', '2020-09-05 17:15:10'),
('3d846485a133827669271676d2c4d94c69c12bc16bffc0a468e5f6e6b97dc43c253092f6bcb97b6f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-25 00:21:31', '2019-08-25 00:21:31', '2020-08-24 21:21:31'),
('3e027c80acc8af9d2464ebafff56c2915efb0ce8aa168cbb31c5675111dc2d912bc1fdb783df1de8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 23:08:07', '2019-10-24 23:08:07', '2020-10-24 20:08:07'),
('3ee22e1713e3b657ec4423232dc4c4eebe9e01927f0102893f40ff6abacf159df198ca04a1e34920', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 17:05:11', '2019-09-05 17:05:11', '2020-09-05 14:05:11'),
('3f110bada4c659d7e93f3f5c65f839782b62408c6064729fa3a7646483493ba7ce8dfb62248c3e60', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:35:14', '2019-08-14 23:35:14', '2020-08-14 20:35:14'),
('3f29665a700738f7b4aae5f4a2c6cdc076a57aba2706268c2d2fb88fd0973424edc9083414e52a63', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-10 17:10:15', '2019-10-10 17:10:15', '2020-10-10 14:10:15'),
('3f5e7248fb14f459f415c3bd6703bd313942b47b4b728c55f1d648fa4e0761b7f2a2003976fe58af', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-16 01:57:15', '2019-10-16 01:57:15', '2020-10-15 22:57:15'),
('3f97f570833c8f4e93ceafb6de6bc79f1e220274b3a02ac5fc4a881159da5eff19590e3897b295b0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:20:20', '2019-09-23 21:20:20', '2020-09-23 18:20:20'),
('3fa7276a13f23e74a9addbdac3bb33668455911fa21fe97d63b40b73ef872eab51947dc8d62dbc0a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:03:46', '2019-09-05 16:03:46', '2020-09-05 13:03:46'),
('3fbaf3d14aa1c600d85b9404153fabe10568a149e282a41ffdb6444dc67dba962e81a6ffc07e8900', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:52:18', '2019-10-24 21:52:18', '2020-10-24 18:52:18'),
('3fd8e0ea7e73bdca6030fe64f4fdd6f0061c225a091512daf62c386514eb202b2b7efee773796ec8', 8, 3, 'Personal Access Token', '[\"tecnico\"]', 0, '2019-10-03 22:14:46', '2019-10-03 22:14:46', '2020-10-03 19:14:46'),
('3fe35aea89efe7d7c33c2d4dc9ab1e5c3fb084f263a84d968b9f5990d7e47c1a173542e75aca34fc', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-23 01:33:28', '2019-10-23 01:33:28', '2020-10-22 22:33:28'),
('3ff8d067459b215601edfe732ca5e3dec8ea7676d06bd2802a5dd170ce068882d19af833c4814f6f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:49:20', '2019-10-01 01:49:20', '2020-09-30 22:49:20'),
('406fd7c3698fba57bc5ddd1b778c29fb8d239c76935adc648e8bb60865286b89bc90b63d2d090855', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 20:31:03', '2019-10-31 20:31:03', '2020-10-31 17:31:03'),
('40755ea41e30986fd972f2498ebcffd0a5aaf8e0e0e104fe12ad7d458246805a365a35add54eadba', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 19:54:44', '2019-08-20 19:54:44', '2020-08-20 16:54:44'),
('40935452796347dba16079a1fd4ee28921426ae48840812a2123643bb2f6d6acc334493c0589aee7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 23:53:10', '2019-08-26 23:53:10', '2020-08-26 20:53:10'),
('40b2f16239b852f04cde222dd9eebca3bf54490df0947bdcfd5e52f2e71e2fa70748967afc3d4791', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:26:58', '2019-08-20 20:26:58', '2020-08-20 17:26:58'),
('40e476bb3ce41aa65d27d46270afe940ba028d70dc7ea6ab57027e21f75541247472a9628e9694a1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:40:10', '2019-09-23 19:40:10', '2020-09-23 16:40:10'),
('41130f6ac1c5fcf6fc0a551518a70670d1024d754462584c9a6996eab35a283790466b03b03d6a86', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:18:04', '2019-10-28 07:18:04', '2020-10-28 04:18:04'),
('41431903aa2769f9fa633fd01236a389b545423050063bfa309e70b5d0d9bef6975f6fc5e15bbdc7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:50:20', '2019-08-29 20:50:20', '2020-08-29 17:50:20'),
('416ae29ebdc19a7b7d4fa217f72e89511871843666d84265591a1970bb67fccb4f4bc4c3b2894c1b', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 16:58:02', '2019-08-14 16:58:02', '2020-08-14 13:58:02'),
('41b523c47b544a511044dee2396f3cd57ea0e2031da09b099021260c2445205fccbc8c3237a7934c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:18:28', '2019-09-23 19:18:28', '2020-09-23 16:18:28'),
('41d651c28cb2cc0e5351fa19d60f353543616141fe6e8ae149188a0ef0f5b5207ff3aa1064beca4b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-24 23:25:36', '2019-08-24 23:25:36', '2020-08-24 20:25:36'),
('41ed1f57a0627b8472f906e753470ecd551e671c8a898b01c1803c23026080e7c6f1f40091622bdb', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 19:27:11', '2019-10-31 19:27:11', '2020-10-31 16:27:11'),
('42168833c267aefadc8bee2be185fd97f6130f05815cea68ae6cb48704e42402e7fbf9b5df4eac74', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 07:31:52', '2019-10-04 07:31:52', '2020-10-04 04:31:52'),
('422da09053b52c5435562d80b9246251c544da09ffb0ef02f2c64067e9e5589a525d95387f1d4b50', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:59:37', '2019-10-01 01:59:37', '2020-09-30 22:59:37'),
('423227731f85dfaae25160fde7516c605933215f27f798a122b25cecfdbb89b7e151e9eb20f14687', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 21:42:30', '2019-10-22 21:42:30', '2020-10-22 18:42:30'),
('424884b602782154d6993ba2a86aa9e4b02e3b7532e04e0917cd65d16645b5e6d9b68369acbc0fde', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 01:30:03', '2019-10-29 01:30:03', '2020-10-28 22:30:03'),
('4259430c530452a598ebe530578a165b3b679c7c37c4448f50523ea054d87758ecb88e388fe1e201', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:47:04', '2019-10-28 21:47:04', '2020-10-28 18:47:04'),
('42b010cef48b09183c727183f9a88be196a96fcd5f5d4b8a4b8f147e3f91b7aedc1e667a2ce1db27', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:33:56', '2019-08-20 20:33:56', '2020-08-20 17:33:56'),
('42b6ea368ead065cdf9289ce4eea1338b517ac4d4e8a72161c7c4ecf14c6715c582d176daef4d99b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 21:26:06', '2019-10-22 21:26:06', '2020-10-22 18:26:06'),
('43127be0539a3ad47e132a905e47e43e70057f0eb018325f2616fd069844e6aa36d3b8af8814984b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:36:19', '2019-09-05 20:36:19', '2020-09-05 17:36:19'),
('438fa0028f78c8f70147f6c108f6f8df3e7c31971a53be87415aa5cacc5127ef7bbf5cce74f6319b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:20:11', '2019-09-23 19:20:11', '2020-09-23 16:20:11'),
('43b9b0dd747cc4aba283f0a4097daccd3c6b0dbc042cdf6b7f1f4aebe2774e7f28cfec873105ce3c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 19:44:40', '2019-10-28 19:44:40', '2020-10-28 16:44:40'),
('43e786a0c6a13ae3c1081fe6abee948aec4bf89276bdc3dbc1c0de4c14b95cd672d26c1e90164650', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:10:06', '2019-08-20 20:10:06', '2020-08-20 17:10:06'),
('43ead9311d1ae84e7fb6d3afa049347ec20c4073b7407fdbc8bbc41afc7bd27783a8431cdaa892c7', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:39:24', '2019-08-20 20:39:24', '2020-08-20 17:39:24'),
('43fbe1075ddf66f6033b97ca2665580d180f25f6985650403947f0da4bdb597210c1b16ee6595aa9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 19:49:09', '2019-10-28 19:49:09', '2020-10-28 16:49:09'),
('43fe40f33691770d14842c43592a8e7d2bd79f0aa87c321c398435c9b6b3760f380645e51fad522e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:16:55', '2019-10-24 22:16:55', '2020-10-24 19:16:55'),
('444877e9f04bb488ec83801c6be449d193c70272b17b99a0f2fba6b24b51d5b597a3569231f73b0f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:59:05', '2019-10-28 07:59:05', '2020-10-28 04:59:05'),
('44870131faf177589fb195b36e9ab27ae8c2bfc6861d3b00e621e05067df5f8527471e6fba67fe72', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:56:22', '2019-09-30 17:56:22', '2020-09-30 14:56:22'),
('4516d799fd586bff5c7be874748db6c6cca13c225f022c5c27c9710eb4b74c19b3388d7009c1b6b3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 21:47:03', '2019-09-06 21:47:03', '2020-09-06 18:47:03'),
('451d60cefa288bb929a53890417c6aa8dc954943a31a04b1e43fe977b4355fff48f63fc240904b5c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 00:34:38', '2019-10-27 00:34:38', '2020-10-26 21:34:38'),
('459a5be88023d5d0e5276b9e8862b474df81298b77b881c9a47c63735fccdd56ebe7ac396e1641b6', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:04:14', '2019-08-23 19:04:14', '2020-08-23 16:04:14'),
('45a7c9562e148fc34d95567779b9647ca8b3afb2343b876efb1a1e4d224d0b1f6fbe094bb25b0b92', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 20:32:25', '2019-10-31 20:32:25', '2020-10-31 17:32:25'),
('45c03d65c3cee64d0fa210c044ffcbcca33301835b9d5350f1ef6d7a36d0b82f1900c121c04cd1cf', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:28:19', '2019-09-05 19:28:19', '2020-09-05 16:28:19'),
('45e2f518864452e42e05ca07c042a9940d05854469d016f70c58b969d1e187e1dc9ccc2295266316', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:24:48', '2019-10-24 21:24:48', '2020-10-24 18:24:48'),
('4602535ac1e46c11da727c36050e941c7cff44bef9891e5c5cb3d43d769a248f8ef45aa5a5552396', 1, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-10-03 21:26:16', '2019-10-03 21:26:16', '2020-10-03 18:26:16'),
('461314bf63bdb02c7907a53827e570f3629c8aed763f1cd800b2bc0d79f367a3e0540d939191b422', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:39:44', '2019-10-28 21:39:44', '2020-10-28 18:39:44'),
('464beeebd656bc9d4cb22d8cc71e0640799bef546b6cc08a040907840aac4cd61e0cfbad1a615bee', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 22:08:34', '2019-09-26 22:08:34', '2020-09-26 19:08:34'),
('46cae8f3731c7cc108e7305cd81dd9c6f746f0effcaee4b71c6fa27d5a8c1681cd4fbd93d33b50ed', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:14:45', '2019-08-20 20:14:45', '2020-08-20 17:14:45'),
('46ec12790c13834621f6510899876d3077ddf19b17575b4f867472933c83ac743f781449f6eaa040', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 22:02:22', '2019-10-22 22:02:22', '2020-10-22 19:02:22'),
('4745784c21d8b3b1ee7cc7645795b226f0cd667154cc56c868654b29abf63f1072cec0c20404c3f5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 21:50:45', '2019-09-06 21:50:45', '2020-09-06 18:50:45'),
('483a92f6b6c821ba5fa2434338b9c18d6a40c27d16555d8d4ed89c699aa6dc14e86afa94c029d797', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 21:41:10', '2019-09-06 21:41:10', '2020-09-06 18:41:10'),
('484aa4cc1d49cf29f34edb54d7c206672ff121d0a81eef6967523b745f72ece8daa35ba4ee6d0ac0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 01:42:52', '2019-10-28 01:42:52', '2020-10-27 22:42:52'),
('485bdab4bf54d5b088503b3512367bbc2f582efb2a4ac4a8b6506d89abf20ab601c970f22b6ad217', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 03:49:02', '2019-10-29 03:49:02', '2020-10-29 00:49:02'),
('486b1a12e2f21e064beebb92b121c20a7604d37a10891615f6e155b14818d358fcb095566d4b1891', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:34:09', '2019-11-01 08:34:09', '2020-11-01 05:34:09'),
('486f227abb469b0b0abfd7c88c74c368243d5ad5824f71f35a86df9bdc129f2c50cafc3c4452a070', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:15:29', '2019-10-24 21:15:29', '2020-10-24 18:15:29'),
('488d0353380742d2ec9eccbf7a9e84cf41e654893b575af39e4ffa0ba0c7ccfff5e7b66bd0833827', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 23:48:05', '2019-10-22 23:48:05', '2020-10-22 20:48:05'),
('4890955bd2b978b7b1d6d5f72e0dde8597aaad79a87a72123975197275ce8fce0f5a6abf53bba7ab', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:23:02', '2019-09-05 20:23:02', '2020-09-05 17:23:02'),
('48b1a4b386b6117127b8bac888c497ceb6941b56da6d473104b1787a2c677d09c02c29ee913787fe', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:34:55', '2019-11-01 08:34:55', '2020-11-01 05:34:55'),
('493edd9357f6b548df19b69b3ddb57a433b0b537520976fd965ea9fd36dd8a1d51ad4dbcd7c06d45', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 01:42:11', '2019-10-29 01:42:11', '2020-10-28 22:42:11'),
('4978c42c486ecac9798195d563bb94e4e3762dde9076b99212a8d36a911b72ca53e24bdafa621340', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:15:29', '2019-09-05 20:15:29', '2020-09-05 17:15:29'),
('4a191185095dcfcee5253dd869b9e602aa4920f2d296200fb61ef3211a59123434fc9455b8f61233', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:10:39', '2019-09-05 20:10:39', '2020-09-05 17:10:39'),
('4a7b521f4de6a6a0ccac184d6b2db37d735679dee3e06c78e409039611a242f7ef14c28a4e68fe04', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:11:51', '2019-09-05 20:11:51', '2020-09-05 17:11:51'),
('4a9fb48a2c63fc8520487b105eca6a8bea644323511574a0b07977410b8a9ed60fbb49ae2f8508da', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 22:14:10', '2019-09-06 22:14:10', '2020-09-06 19:14:10'),
('4ad42cc31d0d3f6a8104ed89d82e51e3a638e018b3cf184f318933bd4243434eb7d707824b17d088', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 01:20:48', '2019-10-28 01:20:48', '2020-10-27 22:20:48'),
('4b147e619fe4e38cb91a0ce68cd8e84e7a0d8e605a3a98963a5473e4763e2fd36031771ed9921522', 3, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-08-25 00:18:51', '2019-08-25 00:18:51', '2020-08-24 21:18:51'),
('4b3e7cbc1b449fcc76562146ccf85debc5bb7482a190917878c9580c8a642fce213d3e16e2a386fd', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:31:13', '2019-11-01 08:31:13', '2020-11-01 05:31:13'),
('4b46eac605dec3018fc829b5f66b038723c88b6383bd8bf1c9af82e67d32cdec191602800d55728e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 17:17:04', '2019-09-05 17:17:04', '2020-09-05 14:17:04'),
('4b5531b9b769d9d3084bcb7eb687c4415cfb4e6baf9a2876b6df64bd6b9ecdb02dd08d0447274000', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:29:54', '2019-10-28 07:29:54', '2020-10-28 04:29:54'),
('4b56821820fe875c7739e8963c3ddaf0d4fb38694eec09536cc981782d4ce2052c646ba29e44e45b', 9, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-10-23 01:38:31', '2019-10-23 01:38:31', '2020-10-22 22:38:31'),
('4b883d5007dae6bfac0289621f80ef65b87d04cb9f5c53a515fccf785cd62c0adbc852b61164f4d9', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:04:18', '2019-08-23 19:04:18', '2020-08-23 16:04:18'),
('4be75c231052dc21f54974d70f1cdee85f6b5dc029c1fd77784e231f0810f1d83ed56b294d44e51b', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:35:12', '2019-08-14 23:35:12', '2020-08-14 20:35:12'),
('4c01c335a8deb8a967a911579bbe5d734fac2e39d0fcb05834a5b3cf7bd414fec11e7b98757d9d8d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 19:50:00', '2019-10-28 19:50:00', '2020-10-28 16:50:00'),
('4c11b70e406a28361c521caffc1dad999a04bc184827a3ed6e7343e33de549a852665d165fa90b8e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:36:45', '2019-09-23 21:36:45', '2020-09-23 18:36:45'),
('4c227ee74d974fafa7858a95c267b8b4ae6eb7dce510213fbef484411370368721fa79fcec2ca2b1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:05:34', '2019-11-01 08:05:34', '2020-11-01 05:05:34'),
('4ccae952b9a2cfa34f50fda6a0f1b752602cfc65fcbc50ff2b243cc19b40a2e5c912cf09eac38555', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:03:17', '2019-09-05 16:03:17', '2020-09-05 13:03:17'),
('4d2c2e56c18bdf63f112b401021f39d2175f535d47ab524f4bbab5c321afcd3234be3bc53fdc7cf4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:38:32', '2019-09-05 19:38:32', '2020-09-05 16:38:32'),
('4d38123498f3504f01dfdfd510dbba6fbbff595d495f51c1a5c85506da8b3c7b9a214a94687e3b64', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:39:12', '2019-11-01 08:39:12', '2020-11-01 05:39:12'),
('4d431f3ddc1f0c63809be93e0c8f2b160dfe4fa77cf53faa2b96aa147aac89024e083b39912979ac', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:35:27', '2019-09-23 21:35:27', '2020-09-23 18:35:27'),
('4d447fcfb6d20d3d293dd4bf011c412ab5d848861394393ad23579e997337437d73ca5ecb8ba85a6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:43:35', '2019-11-01 08:43:35', '2020-11-01 05:43:35'),
('4d579bbb4e5022128f022580b9f126cb61e1d148b2956507b0fbc60f4b4fcfc5cc4099317e0902ff', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 23:56:02', '2019-08-26 23:56:02', '2020-08-26 20:56:02'),
('4d7d1aa71d44b7b0e5cfd9df0b8c273a203a56d502e4bfafa25a1aec4606bafef3298b5245924a02', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-25 16:17:54', '2019-09-25 16:17:54', '2020-09-25 13:17:54'),
('4dc9c90cdf62a3aaaa3f0390fd8b6f66b2eb66f426ab71a0e7252844bca4fecdd18c61ed261bfb8f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 17:15:48', '2019-09-05 17:15:48', '2020-09-05 14:15:48'),
('4e0d816a6cccdbb3fb5bc3596adb9c6642272448b04cfddaacd9da64ab58ab2c67eb0e9180c769c1', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:12:52', '2019-08-20 20:12:52', '2020-08-20 17:12:52'),
('4e197a57cd6a1bb68ab60d65724c54d2dd7a061e5382202482148b09222abfc3f0ea8d2e387bd35c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-13 22:54:18', '2019-10-13 22:54:18', '2020-10-13 19:54:18'),
('4e3b5e28ade11f4ff30d3bc67be6b1c539d1e86c79a80e56b257be62254e4c739a0dca8ca9ab356b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:31:27', '2019-08-29 20:31:27', '2020-08-29 17:31:27'),
('4e6f3e0ecf9e1e4c1c7a824b543b94b407dda2e55cd7474dc20dcdc69a0de8294bcab1375507278c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 22:12:50', '2019-09-26 22:12:50', '2020-09-26 19:12:50'),
('4ee6271e6b3d8da83d3c78f2c56f9b608c24e6296982d6dba80a566c084b608bc8f8056b03e7ac39', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 19:50:56', '2019-09-30 19:50:56', '2020-09-30 16:50:56'),
('4f31044209014dbbc8671197a28cac1dac74b13b57d71bc3e520f55ab081af95667b1a29b9c117c1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:11:34', '2019-09-05 20:11:34', '2020-09-05 17:11:34'),
('4faba0af5a10cb734c5ee2f1205dc612c12768507dbff66da0bf5eecb1b4274e6f29213de3bc9db4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:16:54', '2019-09-30 20:16:54', '2020-09-30 17:16:54'),
('4ff3716a9efc8b8aae29ea98781d3db90f6df423b77a1d0f168073487c62f9d28e73f7f43605162e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:25:20', '2019-10-24 21:25:20', '2020-10-24 18:25:20'),
('500402de86cd9ab8622e07def3ba8e424152163708ad6903a76eb7ad5ced2bf67edbd490be43517e', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:25:06', '2019-08-17 01:25:06', '2020-08-16 22:25:06'),
('5051bb29008e3750ed8cb3f3b2fcd853626947fbf43f8ecd57540f17bcccc0a1d7c45224c0aa4a6a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 00:26:33', '2019-10-31 00:26:33', '2020-10-30 21:26:33'),
('506f89b20e3b9b7ea261d821e1b5203ddef4b13e8596382b516293db33a812ce17151087021309d1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 23:07:34', '2019-09-06 23:07:34', '2020-09-06 20:07:34'),
('5074f16c9bc1b13da6c97fbf4a869ab97a397df15cb84c8c452512418d2ae91bb1a8e6d91288b324', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:42:18', '2019-08-14 23:42:18', '2020-08-14 20:42:18'),
('508fb407a3b1545f8c31c6a0438735486b6b9f067c322fa8d4a642256c98a7c0eea97da0e9087cb9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 01:25:34', '2019-10-29 01:25:34', '2020-10-28 22:25:34'),
('5095ba409285f8426fa253e56b64644a7523ff884902c431c2d9f3c815340858a429c60d26b4c0a7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:59:30', '2019-09-05 19:59:30', '2020-09-05 16:59:30'),
('509ffab5074238a668b360c6f14053b5eb63cc525e583062e665a31decb293b08fbd6e0c0d924de7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-08 01:31:43', '2019-10-08 01:31:43', '2020-10-07 22:31:43'),
('50c79e5d88b0c19657e361d797d02eb1f1b9ff1f67db5713d139b4560e09bfc86fa1e1735f55f6e2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 02:59:09', '2019-10-28 02:59:09', '2020-10-27 23:59:09'),
('51a753460183a5700c10ac02a25997bb58ac703900bbc549ea82fbbcb63a5a78cd20f1c3063bc4a8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:35:02', '2019-09-05 19:35:02', '2020-09-05 16:35:02'),
('51c6d950ed6e5b3005bab1708e6f5af3bdf15cbe473a9006e9bfb84503e48f84475e6bbd89ca8cf5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 23:39:57', '2019-10-04 23:39:57', '2020-10-04 20:39:57'),
('5215a8e3fd64fb4a1c95fcb947f4673f7d65fe2b87fd28b0ef45f96fef8a0c7d544ea122230a0661', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 01:47:36', '2019-10-28 01:47:36', '2020-10-27 22:47:36'),
('522830c3ef2a58efa1409e9d36b5c9e1664457e25cd6b3cddd469aab2d14d98e9ab97249101912ec', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 06:41:27', '2019-10-28 06:41:27', '2020-10-28 03:41:27'),
('5244be4b9cbf1ce7652a3138e6f50f134f79f6fc1ff4995e30bfb2d8882650c3010dd26aa97b129f', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-24 23:08:31', '2019-08-24 23:08:31', '2020-08-24 20:08:31'),
('528248a7c8b01ff53a01d0168b4526222796cfbc0f216bd0a42b980869d198a6ed607744672a1915', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:21:12', '2019-09-23 17:21:12', '2020-09-23 14:21:12'),
('52a63c0f95e01db9349c6646c1540cba366333d562fd573d7101948e8d06e9437a52805efe1bd097', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 22:03:06', '2019-09-06 22:03:06', '2020-09-06 19:03:06'),
('52b6ae87de6c1028f5552ca7018d605bb3692ed2f213e1916ab794d21c18b526ad9b4975cfeeaf74', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:56:28', '2019-08-14 23:56:28', '2020-08-14 20:56:28'),
('52d91cd50f1bd9ed9acd7abd6aefc3ba4783c13cd018b91bd056d60bc8bbfb4cf6c51d62cea5c5cc', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 23:53:09', '2019-08-26 23:53:09', '2020-08-26 20:53:09'),
('5312a48b547e1f26ac7254aa4c58bf2928d9ac5ec065cbe606cc086a717d4a9a57c1d9dd9ffc5708', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:20:11', '2019-08-29 20:20:11', '2020-08-29 17:20:11'),
('531560dc40a557caabd8a7431cbde10bf3d6e6ebd31c5704cafb1abdb4c2a359804cda76be9a61d9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:40:11', '2019-09-05 20:40:11', '2020-09-05 17:40:11'),
('5371228099db9b190026600b2c5e60ddf4d5537101bd5c7fac97d10daed31d4b83675935310e04f4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:44:58', '2019-10-28 07:44:58', '2020-10-28 04:44:58'),
('539dc4a0cb836a220edf4952849987415f6a2cc9aac8d114bc1fca2298f7d7f23da0fa8767e974e7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 23:48:25', '2019-10-22 23:48:25', '2020-10-22 20:48:25'),
('53b3b2ee5429c97b04047b72110e85918f0f8b0e8d0129aaeb7b6b0bb092369920d31b3933729e88', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:15:00', '2019-11-01 08:15:00', '2020-11-01 05:15:00'),
('53b74ef5d3c5a60b419c2d4202076c2c3e28831183ea6245b485e9c9c80b0ae27cd3ef978b87fc35', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 07:35:00', '2019-10-04 07:35:00', '2020-10-04 04:35:00');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('53bdc340a075f07e3897058e44633a3c728d1471f767176b4500ad13f488c4b92681f7f4def44c52', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:16:59', '2019-09-05 20:16:59', '2020-09-05 17:16:59'),
('53ff0a66acd0f487783dd412672c309c46b413284e0c0cf79b5ec21855e6d513ef0bb181fa4bae43', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 05:53:42', '2019-10-30 05:53:42', '2020-10-30 02:53:42'),
('545c07bdbbaf62c152a9fc7f0efd65c7a93e5eedb2dd8813eed3581a29aa9229943b2b0cc95ec311', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:20:07', '2019-09-05 20:20:07', '2020-09-05 17:20:07'),
('546d5ab650bca0558d64d463c64d0d21496e71474217614c9f2850fc03c4fdd9dea9828f92f283fe', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:08:24', '2019-10-01 01:08:24', '2020-09-30 22:08:24'),
('54f79babd49703c4939851a7117923d8ad5be397480956801f09324bc16a76ba42715bb7c86d27ac', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 04:06:35', '2019-10-29 04:06:35', '2020-10-29 01:06:35'),
('55472e42701bbf63db56a6c5593c98a0cba00e4f78d985c29fee90757e8a5a98c00d04eac7601d9d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 23:06:49', '2019-09-06 23:06:49', '2020-09-06 20:06:49'),
('55b6ed2ae7f7a9f8f66a9ba9cf576055e3829eec40275821cab710502a8e13fbc0f2b3a7c40fe936', 1, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-10-03 21:26:02', '2019-10-03 21:26:02', '2020-10-03 18:26:02'),
('55cc8c599386879bfb645d4511d75f046f2a785667acc2437dc290f4f401624269bf19b933fa5839', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 23:54:58', '2019-10-03 23:54:58', '2020-10-03 20:54:58'),
('55d374808e7bf51b985162f8eb12ae410f615a31962f36394212b830e51216e66bd4672fe372873b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:21:26', '2019-08-29 20:21:26', '2020-08-29 17:21:26'),
('565d9db0b6df5d8f00a7788b1e20d8653a95765f567001dda326847d3f8e1c104b2d8b8274c19614', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:35:08', '2019-08-20 20:35:08', '2020-08-20 17:35:08'),
('56a3abb2ef2dde2d0c2f144ce3125dc793c01f20d892f57f3b1020e2a182ad6ecc4730a7e0238d31', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:44:23', '2019-09-05 19:44:23', '2020-09-05 16:44:23'),
('573eab2422b9e7344e459f362fd0be4dc27748e24c29e3a775b07f8a2a27a0bce81cb601910caa99', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 19:10:18', '2019-10-28 19:10:18', '2020-10-28 16:10:18'),
('574b4b203da305039015b78c2d06b87f0935c555bbc67044501b69e771af97d1d25bf40e07a6bc73', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:38:47', '2019-09-23 17:38:47', '2020-09-23 14:38:47'),
('5767d2a50f97206f207a3eef211235529dada38c2c48d654c2a693d27aea485d326ea7fb82c516d8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:46:21', '2019-10-28 21:46:21', '2020-10-28 18:46:21'),
('576864ce9878eb922a344e1fcf41faffdf4752a54af397ded4bbd17e02150036a693fc6d473d1d7c', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:14:01', '2019-08-20 20:14:01', '2020-08-20 17:14:01'),
('578dcbd10842fa7641bc8201ec0fc24b0973480c09198b01594d93fbef7bc1c56ae0a9b86eb177d5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 21:37:33', '2019-09-26 21:37:33', '2020-09-26 18:37:33'),
('57b974c7a3c89dbbbb941c7b6eec736c5f678af5724b3ff2f43fa0321245ee9a25bea56a6877995b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:10:20', '2019-10-01 01:10:20', '2020-09-30 22:10:20'),
('57cfbced2d1c68a7a15c5260ec83a54ce126744adc14d35cb18e40dd902819b6c5da556f5404c3b0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 19:36:33', '2019-10-31 19:36:33', '2020-10-31 16:36:33'),
('57da03e651abd9cc362d8d221d31b930490e66c49bb7d493b35d6b676727658e52faa75b11c772c9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 21:00:33', '2019-10-03 21:00:33', '2020-10-03 18:00:33'),
('57fddb73863021c796cbcc4dbca3c0b859bade8d5c826f67b16763a9f97f42f7f463ed6c3f8a5292', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 21:13:39', '2019-10-01 21:13:39', '2020-10-01 18:13:39'),
('5810e039426d54df70e93ad9401b4a7f70bd6139cf69270c31206760ec9648944a6b06c74f323973', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:57:37', '2019-09-05 19:57:37', '2020-09-05 16:57:37'),
('583ea99649a17c235aa195685f7db491867a8b7882d33e6fee17a817b202e6b2c8ed946ac5b6c53d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:31:25', '2019-08-29 20:31:25', '2020-08-29 17:31:25'),
('58a93547a5f03018dd4d976d6c358a068dc9ed9090805bb6ef97711b8aabbb333a00ad7ff895b54d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 06:39:29', '2019-10-28 06:39:29', '2020-10-28 03:39:29'),
('58c896784fdf1ea150b2751bfe9ccbee39005227a69fdeb77c9169c11ad4d8114df76ac643d77070', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:59:14', '2019-09-05 19:59:14', '2020-09-05 16:59:14'),
('59017b9597d5e004a379930a50c91263e740515f7287d13fa0f43e3e9ab19c83bc05874a4b9e3d27', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:14:12', '2019-10-24 22:14:12', '2020-10-24 19:14:12'),
('591146cf3c591a0ea8776cc7866d596033bd012102ec0c9b4c2a22df9258a7a673a0095186c25880', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 00:04:52', '2019-10-28 00:04:52', '2020-10-27 21:04:52'),
('5972d43a3d3185bb06f943489b2bd5b9a620d4a77b86c2c8d18d79cdd8a7b1bf45dd1bdb00a19410', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:03:59', '2019-09-23 17:03:59', '2020-09-23 14:03:59'),
('59f848e535d28c35fbfdc36b782a12cb82945a09c366c053a272a1ff9724c336162bd9a4b92e7e21', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:07:18', '2019-10-01 01:07:18', '2020-09-30 22:07:18'),
('5a361f87f2238d02ca327604f15088859b5f74a8c9bd03495a6ce1ad142922fdc08e5603b877c1aa', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:14:46', '2019-10-24 22:14:46', '2020-10-24 19:14:46'),
('5a9505cb2f9a3f6f0c6a2fe4245a89d94e9f2eddd97ff5f32926731269c250e175c7dc221aa7d2a6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:34:43', '2019-08-29 21:34:43', '2020-08-29 18:34:43'),
('5a96b3444bd4948eaf7f1b930c1149c3e9eff8d61e8f62ff5b534d20b108d55a5cb746ffa3d5fce5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:43:32', '2019-11-01 08:43:32', '2020-11-01 05:43:32'),
('5a9da7ffef8305082695c340cd95a66afbbc25f5668c14042b93052bc2c475bef8f50989ac71676d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 06:31:54', '2019-10-04 06:31:54', '2020-10-04 03:31:54'),
('5aa227fcebf9731af4fb49957375be99536e90690bf2aebff7911163ff5c294a8b2c23186f1292f2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:13:26', '2019-09-30 21:13:26', '2020-09-30 18:13:26'),
('5af6a4db1b1746a2903ab8b9f50cad8814b4ae11144d0fa45b89ceeccbf28d61ac6ad8b116572383', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:10:21', '2019-09-05 20:10:21', '2020-09-05 17:10:21'),
('5af80c16b6f69018ddd9d5bb51818a6e754d8602417e7d77fe79ec936974f5781c642459514ebaa1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:31:50', '2019-09-23 17:31:50', '2020-09-23 14:31:50'),
('5b9c7d9dde4f412f098025c52fc3438725cd3f06a05e88f79fb84fd1845f42ddca47e77312a7dcef', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:54:17', '2019-09-30 20:54:17', '2020-09-30 17:54:17'),
('5ba8f6904f1506db5b774e1b1aac8f034900ceb585a14046494264717e29d14ebce1fe9f298f5739', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 20:56:05', '2019-10-03 20:56:05', '2020-10-03 17:56:05'),
('5bb3fd6e54975182c1dc3377e33da95a12a555a006e8b6e3f351452623df7c4a3bd634c953b524e7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 23:20:02', '2019-10-27 23:20:02', '2020-10-27 20:20:02'),
('5bd65cbd6c212ff6b7ec6c48efa362d245d9cbabba5037bc4f4e2dd8482119055b465e9fec39193c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 21:26:19', '2019-10-01 21:26:19', '2020-10-01 18:26:19'),
('5c27f93b8a78aedb1a402c04be5eee0a6aec95da82a5ed4d23c49b9fb8ef3cf255f52a25fefe4424', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 23:06:56', '2019-09-06 23:06:56', '2020-09-06 20:06:56'),
('5c51af35662b971de6814b7a55281d2ff8ea4c3517619dbde55e8245c5c1763167d75d2ecd98f7c2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-24 22:01:25', '2019-09-24 22:01:25', '2020-09-24 19:01:25'),
('5c8c93a3dbf0d051faff1e222add81055ed095e3aa834e5660f8b4a35320b200e9ce1e94227d53ff', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-24 22:22:54', '2019-09-24 22:22:54', '2020-09-24 19:22:54'),
('5c9a8ea69852625e606624cc8ef815b4255ed54f129f7d2a1dee85336ebd155c024051106165cd40', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:41:09', '2019-09-23 17:41:09', '2020-09-23 14:41:09'),
('5c9eb529924c1046b85bd980b6616f3e02a0ac57c402fc11f7500bb019a6705887508e5aff04d179', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:50:15', '2019-08-29 20:50:15', '2020-08-29 17:50:15'),
('5cc419c794df5c47264f007060b300114565c50a808e5644aedbe08e142ca702cbd38032fad7fcc9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:30:00', '2019-09-30 17:30:00', '2020-09-30 14:30:00'),
('5cf8815c57e079a6b56172ebe292a65c6d728da0561ccca1122fad8e25416c142b126ce0efde7938', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:24:31', '2019-10-28 07:24:31', '2020-10-28 04:24:31'),
('5d7d103a1479b3056279b33fb5e17a4dbb63ea08c3e3159263bf3ab518d2f035f83996099f85bca1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:41:47', '2019-11-01 08:41:47', '2020-11-01 05:41:47'),
('5de028c2c5f94009b27b5e4c3e7c9d3f3d97adc724a052ce0b9500619dcb0faea5a7d0e07e93ccbf', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:34:33', '2019-09-23 17:34:33', '2020-09-23 14:34:33'),
('5e1905526e3d410578d54e190083c9519cf5029baf30c8254982f4d2523da96026b28f4012d0906a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 07:12:58', '2019-10-04 07:12:58', '2020-10-04 04:12:58'),
('5e3b85f19841820795754bceff5405715673260648b19a49eaced52386c0afa6cf995ea030f62e6f', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:13:33', '2019-08-20 20:13:33', '2020-08-20 17:13:33'),
('5e7fe12e39528d52c7467c0c56adc1ed0d89aae4dd0ca147aadc3aa29986ab585a737cef1125ecc4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 16:49:30', '2019-09-30 16:49:30', '2020-09-30 13:49:30'),
('5e84543ff00272f3c3906ec35ffa78ed5c9180b62d007e8ad7a47f0c2a316e3e5c50536af07a6f36', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:05:13', '2019-08-20 20:05:13', '2020-08-20 17:05:13'),
('5e8f035c143dd6787e7c62099aafda349c5d64520dce3a83bdecd03b0338942dce7e68d96ad19241', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 22:11:18', '2019-09-06 22:11:18', '2020-09-06 19:11:18'),
('5edbf4485e10f1bfab85c478ec990e0e1a87c7e392066ca62cf97a81b47933bb2b794f8cc866a5db', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:13:48', '2019-10-24 22:13:48', '2020-10-24 19:13:48'),
('5ee32d49b6498a79b9b0221f11afc8b72678ca09130dcd4cfef58c77fdf8582e8bbc3a307a5b229f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 22:07:46', '2019-08-26 22:07:46', '2020-08-26 19:07:46'),
('5eebfbb33dbc7e638f68aca4315f5d3339286e46e9ee2722b692ec2e844b3930a6512a06bb0b260c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:19:26', '2019-08-29 20:19:26', '2020-08-29 17:19:26'),
('5ef3e2ed5d39be1dc806884f853ce141747db7b38ae6e8d1e38922733a75e32a0cdaafe3b9ee1faa', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:38:35', '2019-09-30 20:38:35', '2020-09-30 17:38:35'),
('5f21c9f0e4750b3bc46b947a20364d7cee9fae3e003359048e8fa1d94dc7e140f03fa81936da1bd9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 21:52:30', '2019-10-22 21:52:30', '2020-10-22 18:52:30'),
('5f4faa81efcdbd1d0c961bdf5ca8ff5519c0c2f3c4d8955d9f2dd1e461e9238d1a31b61f7c6002d3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:33:09', '2019-09-23 17:33:09', '2020-09-23 14:33:09'),
('5f58b70a294b3c5d808f13c67d55f136b2fdc1004c37833b66c625ba84f1698a7d3ad10ac7efca7e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:24:56', '2019-10-28 21:24:56', '2020-10-28 18:24:56'),
('5fcc93c43b5e641e8f46f9b41b697509ae2c7023216a86ff023321c1ffa215e0715cd0027420f76a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:41:09', '2019-09-23 19:41:09', '2020-09-23 16:41:09'),
('5fd493788459dc1a77deacedbdeed8091c4742df2b6da3da8e338ade45c97ed509f912bec1730ed4', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 16:59:46', '2019-08-14 16:59:46', '2020-08-14 13:59:46'),
('60054d9d13f698e035f34c355ca3f0c21897ab305fdcdb81df5fd6471aadad8b8825af93de5046c2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:45:53', '2019-10-28 21:45:53', '2020-10-28 18:45:53'),
('600fd9ff020e92c5a2c5969d6db4c78d8b88e2292cdfc5041f1567ec479cffce1deb818e7191200e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 08:00:25', '2019-10-28 08:00:25', '2020-10-28 05:00:25'),
('6042da03712453457cc187a41950c9e3f9ddd3022ea92ce7141435b9eb9ac6f1e4ac9729cbfd2130', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:31:05', '2019-09-05 19:31:05', '2020-09-05 16:31:05'),
('605712a322a4d3107aef814ce9ed350594f7da3f9fe1b44648faf33b100ea9ad6cc489b6b04eb01e', 1, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-10-03 21:04:07', '2019-10-03 21:04:07', '2020-10-03 18:04:07'),
('608bcf526743cdebf0c91789adf1aa66e881033dcd0726ec42bcd705835ef315815c6958020648a5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:05:40', '2019-09-30 21:05:40', '2020-09-30 18:05:40'),
('60c88d6d5235860843fac38d546864d056a3329a3676c32714ce9c4a5d6062766eebc396f322214f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 07:36:46', '2019-10-04 07:36:46', '2020-10-04 04:36:46'),
('60ddcf0ec4ddd5d71190be02bd63c91ac0d57395443e9de7701b4aff65e71d1c34bd1b265fa31eff', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:42:29', '2019-08-20 20:42:29', '2020-08-20 17:42:29'),
('60eff40254bd03498d519bcaf733ead70f75e1088f8deaeed055c18e66d140f5e2556cca6a7a418b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 21:32:49', '2019-09-06 21:32:49', '2020-09-06 18:32:49'),
('61925da12380169a2fccdfeaff369f20b3bb99aa4a06d02b6caa1eaadb09e1d3d145b9e22f73861d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:08:59', '2019-09-30 17:08:59', '2020-09-30 14:08:59'),
('61b75f9b322abdfc4a21cdb1e599bd7ec1a22f1222123acce19dc17ba3d200739381b0db14ac95f1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:16:39', '2019-09-05 20:16:39', '2020-09-05 17:16:39'),
('62933b7ec633d391d5e61a5a3212e0c36b7e676c6f7b3c3b792b839bac718c3a360712565b5a5191', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:26:17', '2019-08-29 20:26:17', '2020-08-29 17:26:17'),
('62ceb84db655c9942df88cf92782559898060c4b99e9d175ddc6c584bc4f76c591427caac53be59d', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:10:15', '2019-08-20 20:10:15', '2020-08-20 17:10:15'),
('62d0c9ed8e5c383ee1f4236af4114ce1543505e2b9f58fd36657f555e9d7714d7374305176ce09c6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:26:27', '2019-09-23 19:26:27', '2020-09-23 16:26:27'),
('6312c78338c13dc6f3115d01d68613ade7f09c2e54e55380d994ca05404236f9360c58167a4422de', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 04:07:35', '2019-10-29 04:07:35', '2020-10-29 01:07:35'),
('633e2e3c8a46e32b439298f997bb36b556dbd83fee576b5e7af936a43cffc8c369328389413810f2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:18:11', '2019-10-28 03:18:11', '2020-10-28 00:18:11'),
('636f7c2b427068368444fca01ff62d41bcf613f8ef074d7521da93e963ab50882da86e84bc84b01d', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 21:16:10', '2019-08-20 21:16:10', '2020-08-20 18:16:10'),
('63b4c790accb224e226ff3b25ba9988f7f9105d85a14a6034726f6f17ee2f4065992a5e67f2940ed', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-15 17:37:21', '2019-10-15 17:37:21', '2020-10-15 14:37:21'),
('63d8369ada98869d043989ebbc5eb9e97087c44c9221045a11c821beb579458a4b434547296bf7cb', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 21:16:08', '2019-08-20 21:16:08', '2020-08-20 18:16:08'),
('6417d9c413c4356f40b2866e0c688a9ab5ed56e81848b1979509ee668716f5fc31ab69f7f849df14', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 02:57:42', '2019-10-28 02:57:42', '2020-10-27 23:57:42'),
('64390c3e5703f2741f55f53512d56c01dc182738066139dd801054a860807251874bbe9c1a98ed5c', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:04:17', '2019-08-23 19:04:17', '2020-08-23 16:04:17'),
('6492c96b94cc7e7ba31f3d4cd823a077b9f2d84cea2c0f93e8f88be0bdddece0efb8059406ba0a74', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:12:47', '2019-10-28 03:12:47', '2020-10-28 00:12:47'),
('6493f6631dce958b293e078a6af9a30b179a6f402749a66c6632cdf235f948b3b3621762f1c5d36d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 17:17:38', '2019-09-05 17:17:38', '2020-09-05 14:17:38'),
('64a2466b990a5a5bbc1b667131158f05cdfa219d6a04eb779889e5c1e27c721304e6fc389776545e', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:05:54', '2019-08-23 19:05:54', '2020-08-23 16:05:54'),
('64f6f89b84922c8d0b9ce91d007e92c18763a0af421e315ab5b30ff1f9c401ce78c5c5a41679859d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 18:29:55', '2019-09-23 18:29:55', '2020-09-23 15:29:55'),
('65845cddae9d86e409c1f67dee308f3fb2922a2e0cf8917ce615dfa17fd8f8df78208bc7651a6d19', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:49:59', '2019-08-20 20:49:59', '2020-08-20 17:49:59'),
('659c44c41f1faabc3d5bce26113fe143a9ca068399761d2fe78d10d23e8c146c182ac1f0f9a6a1ec', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 07:29:10', '2019-10-04 07:29:10', '2020-10-04 04:29:10'),
('661b349e82309bd96a3a8fc5f00d942188fc5401ffff33d28ede9ec38c28ec34536bd19e27ad652c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:17:25', '2019-11-01 08:17:25', '2020-11-01 05:17:25'),
('662d82911a25ea97a1b66ada58c8a4569b7a1fd60c225ba7cfd2ae1620f81d151f2e37bf91b692d9', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-24 23:09:49', '2019-08-24 23:09:49', '2020-08-24 20:09:49'),
('665378950caf6881187d2dc84a2c8325672fb4b491878f9c42b50ceec8aeb95bb3ce9ce3d0c8f316', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 21:52:52', '2019-10-22 21:52:52', '2020-10-22 18:52:52'),
('6658a704b6c364f544095801c4703d530fa1a4abc4efbed4295cf1c55f56716de3e8de98c5ff1f95', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:31:31', '2019-09-30 20:31:31', '2020-09-30 17:31:31'),
('666a936d117a36049377e894547859c17fafa6423cc1db773c4928af0283bbccb354fb84b9657e0c', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 18:53:53', '2019-08-23 18:53:53', '2020-08-23 15:53:53'),
('66da4746ddb7958be6f58645c4a25d0f9eecc7fd1e0f1b938cb33cdfbba07b6532470dc4e8b0270e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:05:37', '2019-09-30 20:05:37', '2020-09-30 17:05:37'),
('671ad53136b7a494186de59a7722d76a6b58d0726cfae595d7577845339980bb5425b03a9515fc03', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 23:35:16', '2019-10-30 23:35:16', '2020-10-30 20:35:16'),
('6725aebcb50d222de512a1caa7ea71ee1afd9a037708293c3e8515a5472ee817ace394bc38404aa0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 17:09:20', '2019-09-05 17:09:20', '2020-09-05 14:09:20'),
('67917051bcd259da8db13e9b38504539c073009dddb17ced18f94603914e8598894fb4b224b93554', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:33:11', '2019-10-24 22:33:11', '2020-10-24 19:33:11'),
('67b299a5486e586c42dfdf1ca7be0bfd8e633a8cf366e66d8363f34b459a9dd8cefcca3c547ce5c8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 04:11:35', '2019-10-29 04:11:35', '2020-10-29 01:11:35'),
('67bbae8c682d8977fa0079b965995384995da8bae32a84123beadad8d3066ae9bca30ee1371d6ba2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 07:08:59', '2019-10-04 07:08:59', '2020-10-04 04:08:59'),
('6825eb4e470f1810fd375aa7b3f04fddea4177f1a0a70136c959c09baf48659aaa29b56116cca01a', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:12:57', '2019-08-20 20:12:57', '2020-08-20 17:12:57'),
('68335bc6e247707fbfab2485c48a738f49214c9c852c1b772c16ec8f5fb937cfd0b672cfcf543396', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 22:14:11', '2019-09-06 22:14:11', '2020-09-06 19:14:11'),
('6838ea146d30d136ab2d3485afce34ef6f32efc71ceee38443c0af2affa04074d42cd3738153deae', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:02:58', '2019-08-20 20:02:58', '2020-08-20 17:02:58'),
('6869e5d72cb96a15f6c24c1da09f0c3067fe041f46d5efd8e743f08544883cfa8c1068271245b362', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:20:34', '2019-08-20 20:20:34', '2020-08-20 17:20:34'),
('68ddaa895d17eb6a25bcef6d369e7666add200374ba3a97cd91b4ed90a7464fa36f6c489470987c5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 01:37:02', '2019-10-29 01:37:02', '2020-10-28 22:37:02'),
('6970fae8d1ab181b93607521db5e2c928c778ae30e9b74a48138b2a0fe5b220af4e755deaadfa734', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-22 22:13:24', '2019-08-22 22:13:24', '2020-08-22 19:13:24'),
('69d8ae050a235fd2b2e1c5632c053016b67e5623a429ec80fc4de3b22dd73676e7eca8b936a26580', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:28:04', '2019-08-29 21:28:04', '2020-08-29 18:28:04'),
('6a051591c153be9de1d90d6166b0089adffb84cbd0174ea860766444252f90f41e0b083ce01a108c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:29:45', '2019-09-05 19:29:45', '2020-09-05 16:29:45'),
('6a18952053404c8bc1f7a4dbc1469fe8cb2e461df027d896c11f51a1e760946723a7fce6a1761273', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:30:32', '2019-09-05 19:30:32', '2020-09-05 16:30:32'),
('6a3b7687f18da0f6c358ef8029e813d2a5f0053228fc5c61ec6f16d6274dfea8a565ad317670fd2e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:29:10', '2019-09-05 20:29:10', '2020-09-05 17:29:10'),
('6a589be83732ab0c509417328c2042648289f17ae589307a604b538482113d82edd20673ee8b06f8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:17:33', '2019-09-05 20:17:33', '2020-09-05 17:17:33'),
('6a602507b7f679298924895661603fbc316f675bf754b8fa577cc2fcb68e08eadee0f17ddb367a44', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:48:26', '2019-10-28 07:48:26', '2020-10-28 04:48:26'),
('6a697c00e5f0880c562bd422dd259ff383998a27b6f2c792aa29dd9511c8ed3330a442e55b711215', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:20:04', '2019-09-23 17:20:04', '2020-09-23 14:20:04'),
('6ae8a7adf7576e2b9c892b451cee4b5058c5d5c167b401651709615dbfc1d787cfe7453d3ed4b016', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:38:08', '2019-09-23 17:38:08', '2020-09-23 14:38:08'),
('6ae8cba1d930307d2f2e4f34cb3cd637c03b57d566890d42e1beb385ca86911c7a0d20faa90f856a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 02:33:33', '2019-10-29 02:33:33', '2020-10-28 23:33:33'),
('6b218d9978ce3eb601047a5875a3f720dbbce404d1bf3e2044f35e4366d37d125ad96a7d714129e1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:18:43', '2019-09-05 20:18:43', '2020-09-05 17:18:43'),
('6b418b1914a69b2a753047ef2e947c990b47dcebd2055751ca1caf0cac826ca10009daa02473f607', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 07:37:42', '2019-10-04 07:37:42', '2020-10-04 04:37:42'),
('6b457c2c69111f48301f9b253cf8e5bbc227aa687158b15e28688e869429ff9fe2a93dd702baa118', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 21:48:49', '2019-10-22 21:48:49', '2020-10-22 18:48:49'),
('6b7321ff8f20c7b6977d13bfe9ae8861cb0378d0bfe84fb5e1effa7c988d9fe81c5aa14435f232d0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-25 00:19:35', '2019-08-25 00:19:35', '2020-08-24 21:19:35'),
('6b76f4b257df82756ffe5bb0ea6490779e809d2556a0aaed71fb9c8c311c3f4f38855a1695a638d8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-09 02:19:08', '2019-10-09 02:19:08', '2020-10-08 23:19:08'),
('6bac4842714397860fc84abd7c90ce7e9948eab5b8579a6a0d7e8faea31834742eda5a38faf79865', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:44:22', '2019-09-05 16:44:22', '2020-09-05 13:44:22'),
('6c258082ee441eb41fdcbb17e3e045156da1040bd8a16f32375d86eff2187705e0b85b2a298cbe23', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 01:20:45', '2019-10-28 01:20:45', '2020-10-27 22:20:45'),
('6c295cce7d25ae10a6df2ce78615ea9c8c00722f412877cb5f3c093279d62997de04508574db0420', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:39:11', '2019-08-14 23:39:11', '2020-08-14 20:39:11'),
('6c78b8dab2380590cef30444329bab7c070d5fba8d761de9b07ab28115eb47ef802aa40f788dbc85', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:43:10', '2019-11-01 08:43:10', '2020-11-01 05:43:10'),
('6cbb09109681757d36721651b376aa8495a363d8fb0d7d636edbe4f9fea3339e23ea33b8d9ccec1a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:15:26', '2019-09-23 19:15:26', '2020-09-23 16:15:26'),
('6d397137d71a915bf02abeaf1b902f4b32f55b722240fc4a9955eab550ca09c6f57407c331bb02f6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-09 02:16:33', '2019-10-09 02:16:33', '2020-10-08 23:16:33'),
('6d50de565423c5bb2622ff8a8cfab5f171cf684d0cf59d10dc3c1ff5b3793f3a7a6e2a8c252bb358', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 06:27:25', '2019-10-04 06:27:25', '2020-10-04 03:27:25'),
('6d527d3e5faa09ebccd671aa52c2ed3370e04d3e96f2f5f5f6b4862df3af6d4b9eb143d17200c1f5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-09 02:08:29', '2019-10-09 02:08:29', '2020-10-08 23:08:29'),
('6dd33cbeaa6d072f8460aed22f9c1548cadf12203cf6c572256189e1a2f15e65e25b3e5dc977f951', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-25 04:35:58', '2019-09-25 04:35:58', '2020-09-25 01:35:58'),
('6de77f7259dd5790c2cf1d738a9c687adfe8db60232630d137a3d4b067057b9fb19b53dddbb8285c', 3, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-08-25 00:20:54', '2019-08-25 00:20:54', '2020-08-24 21:20:54'),
('6dee915209c5e5e66373205e23ba6af317d940f049a67d5178ca873305b1b3bf1b1716951de06528', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:57:17', '2019-08-20 20:57:17', '2020-08-20 17:57:17'),
('6dfa2da5d934a88437072afbf794c31815f377728ab97a6c483602b8c375e091182cd1143f35de4f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:32:27', '2019-10-24 22:32:27', '2020-10-24 19:32:27'),
('6e5094af28d58e33d0e092e334fc64fabc8f80f735628abc4de05fe8dfa873d7d2041912b0d26adc', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:12:31', '2019-10-24 21:12:31', '2020-10-24 18:12:31'),
('6e956a9de201fa4df6a4c9e2856d0a17394c3fb001e3b43d91dc9327ac3a477f7a2dd30b68771650', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 20:38:46', '2019-10-31 20:38:46', '2020-10-31 17:38:46'),
('6ef44e1807188343bcbb73f5f3c18e9461356f35ea2ffeb29539d5382c85c4c8f480545fa9127b3d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 06:59:58', '2019-10-04 06:59:58', '2020-10-04 03:59:58'),
('6f2a61152d6e0f2eff9682f525a40b055e6fd400f5bff50196d1ef6492684e9489501d68e7caa2a9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:15:00', '2019-09-23 17:15:00', '2020-09-23 14:15:00'),
('6f77395764fcde234b9ab6f44352194bd54cef3e80c5d772f63bfda1469fd97be9f9d67f5808e703', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 05:44:03', '2019-10-28 05:44:03', '2020-10-28 02:44:03'),
('6f7e9e787046c160f5c19fa670ac86f12d50b9578da6f54d1012f2c381bc53e7a129260c22ddaaf3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:14:56', '2019-09-30 21:14:56', '2020-09-30 18:14:56'),
('6fc2655b0a02466604ea675d7cfed3f774121d32731f03fac9b0bb56ee706088a0766ef218f94b46', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:16:28', '2019-09-23 21:16:28', '2020-09-23 18:16:28'),
('701209999fe8f263dc8e567232162bc31047b6a62e8a226f653cc56973666b859b190ded07257fb6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 06:21:38', '2019-10-30 06:21:38', '2020-10-30 03:21:38'),
('704d0e751820252e3c1585d1200cbbe1cf039c408e5d2ad555052761156636fa786bb954184dd174', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:10:56', '2019-09-05 20:10:56', '2020-09-05 17:10:56'),
('70be405e3e22a88f5f298bbab26078c850d13ee171e116b0b03d6144947e6ab042c74dba2720c8c4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-08 02:03:41', '2019-10-08 02:03:41', '2020-10-07 23:03:41'),
('70c12f96c1a6cf1d71c8c0f00621b61cfde1f2dd1ad7e75a93f9771ed606cf56b1295f3267058793', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-22 22:14:51', '2019-08-22 22:14:51', '2020-08-22 19:14:51'),
('70c471f1f099a32eac8ff2f135d6405c8c5f8388cf6f05c3d523ab07ef5af42ba1a34f9e41836c37', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:07:13', '2019-09-05 16:07:13', '2020-09-05 13:07:13'),
('70d267baeb29bb5c691d85a02494c514d1e5d062cdc84e56292392b58dbc10d2db7e763b8d2b3bd3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 23:33:29', '2019-10-27 23:33:29', '2020-10-27 20:33:29'),
('70d8305cf7918e8b5792f7a00ca193aa05e7e5e75c3aecfa2bda7814460f317d5f1ff33ea1acb519', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 16:50:29', '2019-08-14 16:50:29', '2020-08-14 13:50:29'),
('71362d32a82e1f212e477e86fe8a145a06c1dc781dfcb6f1acf0aaf3508b42afb566532a51a92f5a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:42:25', '2019-08-29 20:42:25', '2020-08-29 17:42:25'),
('7160714d46c8843616948276823e3e4baf659757a6b1867aa530d4d6c3395a0c724d84beab97c35c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:15:15', '2019-10-28 07:15:15', '2020-10-28 04:15:15'),
('718bb617afd43527a6c5fbf5223ae4abf1d4da82b5c0686c97909c9c3e29d477d76d0ec5816c57e3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:19:09', '2019-11-01 08:19:09', '2020-11-01 05:19:09'),
('71e0bfd1048aa7f7094b88bd07faf8157d555d60448a79ad5be3d8f96991dec3019078e5be0ea7ec', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 23:36:20', '2019-10-30 23:36:20', '2020-10-30 20:36:20'),
('720df9443f72bb6eb4edc3eeaf0bfc484e3b689fd648f8b53a4113c2a428c1c20d454cc18210bee2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 19:04:14', '2019-09-30 19:04:14', '2020-09-30 16:04:14'),
('7220a7837fbb335915988edd484e74114848516b5bfe4c3d17c87bd0a7dc4847519c83cd1c3aa13f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 22:28:24', '2019-10-03 22:28:24', '2020-10-03 19:28:24'),
('722e3e2cc9eb48123c773891179a2a29451f7639493c63b441f81f978f96f51f7eafd6a893a8a196', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 23:09:50', '2019-09-06 23:09:50', '2020-09-06 20:09:50'),
('7237fba1ab0eeab5f0b7bf80d964f2023fcf6b272e908f3f387772a3a0a404028b79819bc123a887', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:27:38', '2019-09-23 17:27:38', '2020-09-23 14:27:38'),
('72516efafcbc8fe970f23b7274a2080c0e16c19b7764cb277ceb8d29557554ff0eaa70c5f7aa82b9', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:26:42', '2019-08-20 20:26:42', '2020-08-20 17:26:42'),
('72638a2804c21f4751666e524f9e5c16ad5d658c48eec52b9e2e1dbfefe631631f876cf5449f40b3', 8, 3, 'Personal Access Token', '[]', 0, '2019-10-03 22:10:56', '2019-10-03 22:10:56', '2020-10-03 19:10:56'),
('72655bc042cd3e184ca196a9f1ec328dcfbf71a424c57feb9ed96472e59e22a528b9d572b435c4c5', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:04:14', '2019-08-23 19:04:14', '2020-08-23 16:04:14'),
('72ba96ee6a8caf714602ad6dc9edfb61794d4bd50d03c2dafde44f1a44b19e696e0b4136b656566b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:13:40', '2019-09-30 17:13:40', '2020-09-30 14:13:40'),
('72dd35f0cf6fcf2d51f7deb49b049cea57dfc9c031ffdfe71e6c984b987716b760f8b79e2315d999', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:25:41', '2019-09-23 17:25:41', '2020-09-23 14:25:41'),
('72deda3667c1666e703b10ee5cbd84cd3bedcaa6dec4d00a3a621f7dde64c666b08f75b07429a6f5', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:13:17', '2019-08-20 20:13:17', '2020-08-20 17:13:17'),
('7322c7834b116d542b92d82a59db6ac69900afccaa69dab485b849954db7fa27d176f5b10ca03158', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-16 01:54:21', '2019-10-16 01:54:21', '2020-10-15 22:54:21'),
('736f4f95292e1e16cd29605fe5f7a2762ae2a3cc0f6a2f1f065a6b395a1c6c22a44f82a250a282a5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-24 21:19:58', '2019-09-24 21:19:58', '2020-09-24 18:19:58'),
('73d87a40bb964444043701d2246a69951f9a5e67e89794d99bf56ad10ad9bc109338c7701bf9ec36', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:32:01', '2019-09-30 20:32:01', '2020-09-30 17:32:01'),
('74171d189f9ea3aee742c939de45a23e4ca0227100a44013b2a0e624734af177e702b583e067f762', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 20:43:51', '2019-10-28 20:43:51', '2020-10-28 17:43:51'),
('745dff1cfa2283d57517eb069cbc9437c19381b41ce3203d61e1d98dcce110289aeefd98f570da14', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 02:31:26', '2019-10-29 02:31:26', '2020-10-28 23:31:26'),
('745e83cdf37e264d9a68fd5f6573f8a598e894aa18784b5cf061125a2c1eecfe3e8c1d20fd27077b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:27:48', '2019-10-28 03:27:48', '2020-10-28 00:27:48'),
('74eebd5aeec1693b872cc70d788d461c1917a5713eb1fe261fd813942ec63b4fe178b1a7f278cfa2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 03:55:16', '2019-10-29 03:55:16', '2020-10-29 00:55:16'),
('7517a08ead24ee4f5d6949e5d5f06666db89ea6092b2d5d70de23ed71999e4b02e714cf3d22d1fa2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 19:15:46', '2019-09-30 19:15:46', '2020-09-30 16:15:46'),
('7534e6f79bb7e85701b3890bdc06016eb271b908088b6b5f35b1c2e28b4704156b53739c10f6d6ab', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:10:19', '2019-09-05 20:10:19', '2020-09-05 17:10:19'),
('754f9b31816ba755c731e66907c650acfb6346b396bf1fbc23ecf71bdd9aba5d3a245a7ead9318e2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 03:59:31', '2019-10-29 03:59:31', '2020-10-29 00:59:31'),
('759cbfde4af14d3cff799ef756846041c6586311e7647db30e26a4f4617cbff288bf1224b208047a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:50:33', '2019-08-29 21:50:33', '2020-08-29 18:50:33'),
('75a9fe3fe09a0abf4d682fdf4b71461ea66b8d870b08d7e7ff83815a2c8047d5c1105f4975c05300', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 01:22:58', '2019-10-28 01:22:58', '2020-10-27 22:22:58'),
('7639689ec79d4f4f987c84418cfa82e3dc06dfa49bac257df8395d71862dcbf0612ab20a3f020049', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 22:22:16', '2019-09-26 22:22:16', '2020-09-26 19:22:16'),
('765bfc1d4f7a7c4a1a21f17a6739b446f0518a26ae3e1fefe87008953044014ff97e9a9e9d30f7e3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 06:23:06', '2019-10-04 06:23:06', '2020-10-04 03:23:06'),
('7689109d74348811c3ea3b9bf1a7cf6c5a0adb4ab274c55b396c3b0bdbc1070a01ce4647c4c66f4e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 23:56:42', '2019-08-26 23:56:42', '2020-08-26 20:56:42'),
('768fc61ed246a2da148f23cb4a2892aefb51ba2390a7dc612e3992a2645725ab1addc63c561f4b75', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:43:58', '2019-08-20 20:43:58', '2020-08-20 17:43:58'),
('76adc6e7841e867f08e88222d1e6887a81a9feabc0335557ffabc9794135cc63d4c4ec0e6998e2ce', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:04:15', '2019-08-20 20:04:15', '2020-08-20 17:04:15'),
('76b44dee2be3c16b6f5f57fd4ac64580c8f0b9848dcc3b6383fbab8e3d8974d626b8984bbc4abb44', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 22:11:58', '2019-09-06 22:11:58', '2020-09-06 19:11:58'),
('76bbf49ddec6cf387f394caf83cc8382d4a08b6a012a9b047f116d9b795118021fee2d0321dd44d5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:23:49', '2019-09-05 20:23:49', '2020-09-05 17:23:49'),
('76c2da7156302843bfbe62a0d7645381cd018c3e441a0624d0d69329898c8467ee2889b0b16f670d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:36:02', '2019-09-23 21:36:02', '2020-09-23 18:36:02'),
('76dec22be3e57db6dd703adcc3f1471c421e842e145265d9f967e92a39ddaaf2275feb3b30e3a83d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 00:34:39', '2019-10-27 00:34:39', '2020-10-26 21:34:39'),
('76ff3faeac44b3917278edade8701a958b09a8b70ee219b8ce32def74f149ab43204dce52c0c1730', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 23:18:34', '2019-10-27 23:18:34', '2020-10-27 20:18:34'),
('770776e35df331da23c0c80c7627b870c0200932f074a79ae89f31288e527c458c38e5e4e45357b2', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:44:50', '2019-08-20 20:44:50', '2020-08-20 17:44:50'),
('771946e207cfb77ac03dc0377d50ad92c1c9724fbc4832d4caf1c9aed014df5b17a8eaae49962def', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:18:17', '2019-08-17 01:18:17', '2020-08-16 22:18:17'),
('7775b096423c09d970179f681b81cbbe2df7233aa9e7b1d67f7adb99d471386a2804a3a6373d9ed9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:55:11', '2019-09-30 20:55:11', '2020-09-30 17:55:11'),
('77860138370c256ff466ac76ed0f886c0d726cc2ff373d5b477929e79cdb65c06b617aad0fa7ce9e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 21:31:19', '2019-10-01 21:31:19', '2020-10-01 18:31:19'),
('77c65fb766914d0621b1692b99eb74f659c395e40c246dfe640623b6a35055907de47888f2f16a8b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 18:10:48', '2019-09-30 18:10:48', '2020-09-30 15:10:48'),
('77fdacea597445a57972cd0b9b00383ae3757eec558941612af5ed49f31c4e2e722d39f27e94d7df', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:41:34', '2019-08-20 20:41:34', '2020-08-20 17:41:34'),
('780f4aa5ae7f349a083e4725efafbc07efce970e15e76c28987edb5b07fbcf31b1fcfba04d815cc4', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:13:58', '2019-08-20 20:13:58', '2020-08-20 17:13:58'),
('781779cc7bfa651956b4be336e1f264e697b48a59d124e1cb41070b40e8b5c56c65f06fde9deb35d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:13:08', '2019-10-28 21:13:08', '2020-10-28 18:13:08'),
('7837093f7c68e26a00e33658ad63631e95dbda9622b3481409efd997c00dedb834ebf5f30ff5b2dd', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 22:52:24', '2019-09-06 22:52:24', '2020-09-06 19:52:24'),
('784c0f3047ce1ef88fb2d3df0c240546ebb4f46edfaccbf3d6b93b1681ddd1c696db1bd03f25c5fe', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 05:44:58', '2019-10-28 05:44:58', '2020-10-28 02:44:58'),
('787ce3700cc82d4ed858801c1e0ff457d811c0d975d4bf64a7ec9e0cad0e3682fcd4a79916cdff92', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:17:04', '2019-09-30 17:17:04', '2020-09-30 14:17:04'),
('78b24216e4db6281edd3e447fb292573dfa16bc77fb42cc0032788e5118b76c0534ee186efde8b84', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:20:28', '2019-10-28 03:20:28', '2020-10-28 00:20:28'),
('78f9e6cdcd2b0ed13311d4e48061917593e52a9f8fdeeeccbb80091003b86171eefdf15fee854022', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:02:09', '2019-10-24 22:02:09', '2020-10-24 19:02:09'),
('792397d8fc47e7dedb937080656ce1a5b0210693175798efa6cc8895dba64dd179664c03d6963960', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:16:34', '2019-09-05 20:16:34', '2020-09-05 17:16:34'),
('793410c928decb52be3a68210f4fdb8ab6dafa8c1187f626d9cc972dcc2e8f6ff734f9de7d3f7b59', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 20:45:19', '2019-10-22 20:45:19', '2020-10-22 17:45:19'),
('793a0c845acdf17f5d508d757a89c2b46d8ac15ff7b5640855ed13d54225bedffde7952faf570489', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:23:00', '2019-09-30 17:23:00', '2020-09-30 14:23:00'),
('7949faa9df35966396940375c2984784638340114924870c274ab4f638550d4165ca3af9e8529d7f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 00:36:03', '2019-10-27 00:36:03', '2020-10-26 21:36:03'),
('796aa07f3e78124464b5de5f9de0edbfefddfd4df0a37d3d4a918bb58b452bbcd8d161d71372f3db', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-25 00:19:58', '2019-08-25 00:19:58', '2020-08-24 21:19:58'),
('79f0f221cd9718e50a75e01d5b76f31d4d906af07f932e036f68ba96bf70bedb4d016fb4eb2df046', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:19:19', '2019-08-17 01:19:19', '2020-08-16 22:19:19'),
('79fc7457553d74fbaabf43e1343831d9c75409c155ccef1976869d4e9c2e78ad72a9f8e940dc91a7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 18:34:33', '2019-09-23 18:34:33', '2020-09-23 15:34:33'),
('7a02e950e7044d661f1e65a641d70d33acb71561b0041a38b9b124e437f0dce61b3f9b2012c02eb1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:41:57', '2019-10-24 21:41:57', '2020-10-24 18:41:57'),
('7a18a299b8152b9347dfb15460a8624da809fd2d2110ff18c1dd17ca9abd0b9b870e8644131d8818', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:43:33', '2019-08-20 20:43:33', '2020-08-20 17:43:33'),
('7a1ed37cb298253d8d5761e3940bc325642217bdbb33e9503a03b0a210380fd4a7c34971727c5bf3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-08 01:59:38', '2019-10-08 01:59:38', '2020-10-07 22:59:38'),
('7a2d5b19a5bcd85fee9d79861466ea4710f196dabe061607b331b0b7255891983fd6ee23547025ce', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:15:09', '2019-09-23 19:15:09', '2020-09-23 16:15:09'),
('7a4bc1253e1f18388e51de98cd7910a8ca07888f45fa67e113feaf4ff88cc9e703c87a3813981ed6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 04:18:02', '2019-10-29 04:18:02', '2020-10-29 01:18:02'),
('7a71c6f1188707d547153ad0bdcefd7e342a53d3aa1f46c3209ba72868aa51a8cb203c164724d7f9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 23:35:21', '2019-10-04 23:35:21', '2020-10-04 20:35:21'),
('7abb3d0c3b6d2842ab301df7000e650090524cd42731e22af85952ce9cc32793168543a3e54d5df4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:37:42', '2019-08-29 21:37:42', '2020-08-29 18:37:42'),
('7ae46a830f5b4003757ca358b95ca04ddc42585ec5db7aaf3055571d03e27ba20480b2d275d77479', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:38:24', '2019-08-14 23:38:24', '2020-08-14 20:38:24'),
('7b0bf2d9ed0dd3a95749186c30c3d698b86a79ff4dac28da0035eda0735caff09083bf4a07a6e7b2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 17:51:33', '2019-11-01 17:51:33', '2020-11-01 14:51:33'),
('7b132f4ab59547ac9a503058016a579d8124fc1b92ceaca13027e33c97e738e37178fb048c478a9f', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:58:34', '2019-08-14 23:58:34', '2020-08-14 20:58:34'),
('7b3d1951fdc16b9113d0b389592abf0393897cd83cdae0ba684e70c92d1f510d5e5a668941719854', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-30 16:30:22', '2019-08-30 16:30:22', '2020-08-30 13:30:22'),
('7b40c09f121af93665fd5cd98c80cfa5c38977484e5e24914a3cb76068b67d381200a16270fd765e', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:34:44', '2019-08-20 20:34:44', '2020-08-20 17:34:44'),
('7b5bf1f1e89d0f3310579bac4d5b34a5712a31554c72cdb01917fe5ffdf4fd0848dd35d96f3ee85f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 22:35:20', '2019-10-03 22:35:20', '2020-10-03 19:35:20'),
('7b5f960da03fd493dfa5291ffec44582a54347a2807ad8ad45a0495fb98da12ee3e786829c167243', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:31:16', '2019-10-01 01:31:16', '2020-09-30 22:31:16'),
('7ba919fee9804cd6bc032746c7c6fcf34a0348896b7d5b5c0f7af1eeab96a4769cc8dd8dfd6ae1bc', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:37:31', '2019-09-23 19:37:31', '2020-09-23 16:37:31'),
('7bd02b64214744d0e49e1fae4488bd5dbd620da36f0d5bd62bd98fc4ba502b411d5e56d09c1dd7fb', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 23:07:23', '2019-09-06 23:07:23', '2020-09-06 20:07:23'),
('7bd638019f60470c968d6a0c3089612b00222999dd64106a98a41b5d9ebff72490a49f0c1350ec6f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 01:52:00', '2019-10-29 01:52:00', '2020-10-28 22:52:00'),
('7be346f89bb331f4faefce28b51d06e75a4ee9c0f274b229599d6198fe25b9172dec7578ca24db2f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:21:36', '2019-09-30 17:21:36', '2020-09-30 14:21:36'),
('7bfee7ba4b4d0506d0cc01e9eb6756648b55acd4631e0946731bdd42d73c815d46f1601a8d2f6a61', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:40:22', '2019-10-28 07:40:22', '2020-10-28 04:40:22'),
('7c0574337dcaf7d26b88ab0cd82f2ee679a49e34fc8ed548abe9fcb60e582225dad6fe7edd227639', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:45:12', '2019-09-05 19:45:12', '2020-09-05 16:45:12'),
('7c8443b4d16f9c16c7d117da3972a92947e6caf61a2469de70f46c3529440b8b623231c5f1dd24f4', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 18:54:04', '2019-08-23 18:54:04', '2020-08-23 15:54:04'),
('7c937270a4a4f5caf7a2c83c77f1d4ca784bb787d57033e6473fae9788d218b876031389661971de', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:33:33', '2019-09-23 21:33:33', '2020-09-23 18:33:33'),
('7ccdde8727b831ea2981b851053b247a785500fbfbcf5d392bf8d1ea22562c0eb925a3375adf810c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-16 02:00:49', '2019-10-16 02:00:49', '2020-10-15 23:00:49'),
('7cdbccf7045510d1f777cf138a4c29ce73e62a3cc152f20365ffa44b1ddde6c9b74df653bbeb644a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 01:42:13', '2019-10-28 01:42:13', '2020-10-27 22:42:13'),
('7ce04751e1ec0bc950dbf02e0f254ce1ff430a7b8426a33c7a227f94c65ada49492aab4cdc9b697a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 21:42:50', '2019-09-26 21:42:50', '2020-09-26 18:42:50'),
('7d0a2cdbb4fca28759fea4a6dbbc07f28c16fcc7081a5116b14440b87f208940504f19de86fd9188', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-19 05:51:27', '2019-10-19 05:51:27', '2020-10-19 02:51:27'),
('7d3aced46712c4f802471cefc8b35f5494463e8e583d368322f634906aa5bb330a56fd669d8908d1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:39:13', '2019-09-23 19:39:13', '2020-09-23 16:39:13'),
('7d54c742a10cec7097f27951b6e4e92974fa3cde250e8ab46483792408fc8ceef5e83e1748a5fdde', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:22:11', '2019-09-05 20:22:11', '2020-09-05 17:22:11'),
('7d8c038c8ca85d24cc61b227f2410ae28228138f312049d2af270cb1eae83c6840e2a094476fe775', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 00:40:50', '2019-10-28 00:40:50', '2020-10-27 21:40:50'),
('7d96b3535ba58c5e442c239d0495aafde719b2dde08775475d358cdf7c660e927423a4cae27ade1d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 04:11:06', '2019-10-29 04:11:06', '2020-10-29 01:11:06'),
('7dba2e4d39ba7790d1e668e08285d159965ccc992d8f3ae2db4af4c164f773ab4e7ef7338acd19ce', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:19:03', '2019-10-28 07:19:03', '2020-10-28 04:19:03'),
('7dcacaf9da252581c4a7dc4af3a404cd661947d085b9af8668e8b2485ef82619dddf15ee2f85a5b9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:13:27', '2019-09-30 21:13:27', '2020-09-30 18:13:27'),
('7e35af4a354523fac38a2e8b6b7a57064977fba9419fe471bf68839ca3e958a09318c557a432b763', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:22:49', '2019-08-20 20:22:49', '2020-08-20 17:22:49'),
('7e4c54e4017bef700cabec722447ff5e109f2e0d836a2efe520880fa3042e3d2eb60299a0a169407', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:56:21', '2019-09-30 20:56:21', '2020-09-30 17:56:21'),
('7e4fcf9dabd67b90384e827699a00bca776b396104280a87171d1cb62d3ee5ab452266a0ca219261', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:30:14', '2019-09-05 19:30:14', '2020-09-05 16:30:14'),
('7e514ee979391f1d5edd2692dcd7466723a88c0c4dbe8fe86ea3d36e360a933fdb61fe9771fc6c00', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:19:03', '2019-09-30 17:19:03', '2020-09-30 14:19:03'),
('7eb070ad9d6b972db2e6755eddc7392278c5b66c2940e71d556577753e90d676817361be9a3c0ac7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:25:13', '2019-10-24 21:25:13', '2020-10-24 18:25:13'),
('7ec9c310ce8ca8d6045be2db87532afe539d53fb9ded3ef553a0a668d26bf9f895e207cf57961493', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:42:57', '2019-11-01 08:42:57', '2020-11-01 05:42:57'),
('7ed293d3f0459dc2ae0dc5fe20b6ff95c81d1b7e44d21a740f2da2d5f8a0df3acf3639341e6db7fe', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:39:30', '2019-08-29 20:39:30', '2020-08-29 17:39:30');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('7f01f2b57d30fb60c13280ca28016782ba7942f7fe16a7cc88df594909946bbefe8cf51d210a5759', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:26:05', '2019-10-28 03:26:05', '2020-10-28 00:26:05'),
('7f3f54f7f666c5a2127b7d7d01793182b0900869600255f76ac9978d73f2aeddd09bfc280a186a2c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:46:45', '2019-08-29 21:46:45', '2020-08-29 18:46:45'),
('7f7c070f11e07e1d657ba5be5cd27ae74bef89323d5c6a2b4e7a2cbf74cb410745b6f193802c5250', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:27:43', '2019-10-28 21:27:43', '2020-10-28 18:27:43'),
('7f8c622c122584a1ec2e62352a835b97047ecae38c6aeaa85a2d0f56aaa80ad72e74967323b252aa', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:10:08', '2019-10-24 22:10:08', '2020-10-24 19:10:08'),
('7fb6ec2e2da20543c953b4ebe5e5007e0631475c4c4e43d971ff398584a4220c9cd111d2633ab01f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:34:44', '2019-10-28 07:34:44', '2020-10-28 04:34:44'),
('7fca339861888db2b7094d7a18dadbc8ad5f977fe5a2bdfc4b5afb2cf7436ec881bfd6e7f8b1e5a5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 19:48:05', '2019-10-28 19:48:05', '2020-10-28 16:48:05'),
('7fce79cb099ade16c553c5e1de1674c87fe3f9ab3f6c6a19c6c00e902687206cac01c30d8ecc295c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:50:59', '2019-09-05 16:50:59', '2020-09-05 13:50:59'),
('7fda5d4f8f09f8137cc8908ad1b9a9fe35ed39b6bab8d8add1d975f9c864ac1c0391c33a6809c03b', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:34:39', '2019-08-20 20:34:39', '2020-08-20 17:34:39'),
('7ffba9cc812f34b9cac100896336e56f1c315df6ef591f9d3ace4979a57fd1c196b7c1f1f5074e09', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 17:01:11', '2019-09-05 17:01:11', '2020-09-05 14:01:11'),
('801831f7f4cb0e3295d41905bbff713abb6ae49d001434c0f2b0148a3ffd144f4c211ad98e68bc3f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 16:56:56', '2019-09-30 16:56:56', '2020-09-30 13:56:56'),
('8029b14191ddf31f073e46ab98c627068068df0064ea568d0faf91ee9dbdaeb1de0b2a1c60414466', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:53:19', '2019-08-29 20:53:19', '2020-08-29 17:53:19'),
('807311468d67f762e62376d449a4e6cc51a925fa0fe21cdce570dab580aba5f6f3ad71ffeeb676de', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:23:13', '2019-08-29 21:23:13', '2020-08-29 18:23:13'),
('811d4c10e87a87f746341b214beda5d33714b2a8ce68aa21e50028f8f99e4ccb76075eb6fe9255c4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 02:56:40', '2019-10-28 02:56:40', '2020-10-27 23:56:40'),
('812a5a07e7892947c3f6125eee75bf6e3450287b5b563f34b0ba7784e01d3c6b2504bf5ac762d2e5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 22:36:08', '2019-10-03 22:36:08', '2020-10-03 19:36:08'),
('816e76a21f0442cc2a2d86a3372d26bcf9ad7a758733e16446bdb45b9d551f53c5463b432a323380', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:33:47', '2019-11-01 08:33:47', '2020-11-01 05:33:47'),
('817c9b10ab4ae3267c3e41cb375c870c1f72e160c2e67989b1186e84dc2364447eb71f1cde2942af', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 23:52:15', '2019-10-22 23:52:15', '2020-10-22 20:52:15'),
('818d88230c7e401da4ba4205a2b2528b3914acf9f4e31818d6f80ac6febefed5b6f2878c52fb8636', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:05:05', '2019-10-28 21:05:05', '2020-10-28 18:05:05'),
('8196ad902a004bb0bf085ac77d5ee99698f156222fa5fcd2939451e8cd94f776e196075fa2633f2f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-09 02:15:52', '2019-10-09 02:15:52', '2020-10-08 23:15:52'),
('81b6486d7071f1848b9fc1d9cfc11425f46c1ffe0d106558cb05d0b25430ab8f1f2c855e958c2e92', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 23:58:17', '2019-10-30 23:58:17', '2020-10-30 20:58:17'),
('81cfef426530115cbd33354d6260f3eea1e48b4e061f7bc8a2fe86f0c264642b35f9daa0714510d4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:25:09', '2019-09-23 17:25:09', '2020-09-23 14:25:09'),
('81dffef411e282a70fcd4e4699faec36514f8392c71a9d752b338f984a8af8621e6dcb5523fc0568', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-15 00:09:09', '2019-08-15 00:09:09', '2020-08-14 21:09:09'),
('8213b6d5685f1f844c62521bb7c33f7d89bc135e8e72d10cfec944cf4724463d7485169b17db45bb', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:26:27', '2019-09-05 19:26:27', '2020-09-05 16:26:27'),
('823ac8abe6b75b9577defb14ef799cd50c7b97988aeb9a415f2912ee1ffa81d605538b7f7e6bc304', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 17:16:58', '2019-09-05 17:16:58', '2020-09-05 14:16:58'),
('825cbec8fc370e36a24fd0bc24db47fb85fc2144cfc19a97d1fc3f1593eb597c3d8f91a92c93a402', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 22:00:51', '2019-10-22 22:00:51', '2020-10-22 19:00:51'),
('829aa9be5dc2f0738ef98a730b5cc3b7b0edeebe7e8b4e4c83386a0d8808750f74a6de1c9108ea3c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 20:49:58', '2019-10-31 20:49:58', '2020-10-31 17:49:58'),
('830e479a594a07fcff68e389b2bc58a37d6a67459a1e0390392cb7628cdaa5ff7f0cad42c512fb05', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:06:59', '2019-09-30 21:06:59', '2020-09-30 18:06:59'),
('831c37e9a72c716a5365721f852bd7a049f9702dd7603a27487fb3dbb9d04d5d61970c53796688ae', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:24:52', '2019-09-23 17:24:52', '2020-09-23 14:24:52'),
('833404fcf2bf3cad806fb70a484458d11d0520cd9c66d6e0681bc95dfbfee2183a1afb95a2c3a590', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:30:51', '2019-10-01 01:30:51', '2020-09-30 22:30:51'),
('833d4e51cb054574665bda278e14545e0129b96be8ac3bc60e9b2c3eddb4f059329b4f7843db9971', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 22:15:56', '2019-09-06 22:15:56', '2020-09-06 19:15:56'),
('834f9c49ea621b71dd2ff3f205c7841edce95a463536832627ba062e8c3796e415dde4bf9c4fd746', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:42:17', '2019-08-14 23:42:17', '2020-08-14 20:42:17'),
('835a1fe3e5a225ff0ea4e73f26cd56eac4e65494cf437ee7b0ff6b4b465869ea704335d19c81cba6', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 21:23:04', '2019-08-20 21:23:04', '2020-08-20 18:23:04'),
('83678e7aa685ef38ba8250cc7262e34e91935a204703688b9a56d8d4d39c57e8961ca8ffd679fffa', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-23 01:19:46', '2019-10-23 01:19:46', '2020-10-22 22:19:46'),
('83711dabc0e6a86aaf49f3584d81e33687ffe945758f73a325a114d1ac849a16c45caf016505cbb3', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-21 23:05:28', '2019-08-21 23:05:28', '2020-08-21 20:05:28'),
('838735d5f5b8f87ea2bb57549961b4648d0314a3b491b3f5fae6ba9f334756e8ba94ddd67491f962', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:12:58', '2019-09-05 16:12:58', '2020-09-05 13:12:58'),
('83a81d833e4744780c332b1bb641b11a6942bdb58939db503c1736dd809db06f5211f409bb1f303a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 03:37:21', '2019-10-04 03:37:21', '2020-10-04 00:37:21'),
('83ae130d27c8ef3fb7a238e0835fb398bdd7a383b806b11729afeae470accfa687a88b8f157b8b53', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:32:08', '2019-08-20 20:32:08', '2020-08-20 17:32:08'),
('83b3ed325da6f581bda1632c3a77679f548145d25c798ed7da8938f179d14ad09bc796c976193eb8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:37:44', '2019-09-30 17:37:44', '2020-09-30 14:37:44'),
('83bf39d11938a936dde5984a199d9718c37fe0b98093f94a8c5990b56ca5f8417290f1e273cca0ac', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 22:13:17', '2019-09-06 22:13:17', '2020-09-06 19:13:17'),
('8411cb4b74e22092c2f81592063c44287ff83df045f1f56cb8c4e6819f0e63f783b71962d07d4411', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:38:57', '2019-08-20 20:38:57', '2020-08-20 17:38:57'),
('84786544661972eb31647356a51cf44b8030e082b91a4fd74e0992b783822b4178e235817136134b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-08 01:34:35', '2019-10-08 01:34:35', '2020-10-07 22:34:35'),
('8483444a8312e95416acbee23049ec8c57995bcf7d16c2572480c6d876ecef7088b4acf9af419d0b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-25 01:20:49', '2019-10-25 01:20:49', '2020-10-24 22:20:49'),
('8484431005c399e234379d2dbb80dd7a238fc6f827ddccbd9f23cb0fe23ada84a06786ccff6482b9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 03:38:46', '2019-10-29 03:38:46', '2020-10-29 00:38:46'),
('8495d315efae3b553028ffff18cf7711be82c3075cf042e76a50403e882b0ecc20209d91829d1883', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:50:52', '2019-10-24 21:50:52', '2020-10-24 18:50:52'),
('84add29ac9c71a5814c470e6a44dfad6f3cf8c3543bd6bfee3a1d68d5ef4f2df695edd9955f09606', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:22:07', '2019-09-23 21:22:07', '2020-09-23 18:22:07'),
('84bbe291a6ef2f039b1dea044824c7ae3b429fe3fd64b5ad5f1607dc4ca7afbaab0f945457e34d60', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:18:51', '2019-09-30 17:18:51', '2020-09-30 14:18:51'),
('84f2cbd55526b595356c887382eb276859f3b5f805e7b44e0b738110c7b66ca6fa123511c6ecf819', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 20:58:54', '2019-10-22 20:58:54', '2020-10-22 17:58:54'),
('8505eaea04d81dcd46379237611b06abf6166ebb16f50af806a6b934f66242f0aab61e9be531a42a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-13 22:59:37', '2019-10-13 22:59:37', '2020-10-13 19:59:37'),
('850c67b4e5d025925582adb279f0ad1e294d5f96383fb096b33e5bd85a16b17e5ecbe3186227cf27', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:43:17', '2019-08-20 20:43:17', '2020-08-20 17:43:17'),
('855a1bc9e2ec61a8bee9f922d602177eec21b54947f1d213bafad44286983b83a2dd7333d755c286', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 07:06:36', '2019-10-04 07:06:36', '2020-10-04 04:06:36'),
('855bc1259614221f0936622fb67cffab5516183b8fa88c0155710d0eaa57ab58f3963bff0b0050d8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 21:48:09', '2019-09-06 21:48:09', '2020-09-06 18:48:09'),
('8568bd943cfa9bf202ddeaa6dcf8dbb8d4813f907a147953b59015aac47113ef3bed8e27f04cabc1', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:21:33', '2019-08-20 20:21:33', '2020-08-20 17:21:33'),
('857812ff314b503c2efc37fa951ff40404e6430fd366563fdb6907ff0706041571543386cdf5c537', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:12:01', '2019-08-20 20:12:01', '2020-08-20 17:12:01'),
('857ccfa0be85b199cf5dc296ee15811525fc28b2314eb91630a005878bd6248789bccad5d6101cf1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:50:17', '2019-10-28 21:50:17', '2020-10-28 18:50:17'),
('859ddb4421bb5ccfcb2eb440eb015b02b90998b60944ce60e9c234ba1bfd2ef9148b46c7bfc7afe3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 20:54:22', '2019-10-03 20:54:22', '2020-10-03 17:54:22'),
('85b4c115132773371b560b0995a0f6a5d79bf302279df002bf87f4a31cfbc2324dfab28c7a04594d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:40:19', '2019-09-23 21:40:19', '2020-09-23 18:40:19'),
('85d6f596823c0f17db54caf899413903ea0cf0589fe3a65d3d255c0896ce0472011ce2ce894617e8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 16:32:49', '2019-09-30 16:32:49', '2020-09-30 13:32:49'),
('85ff1d52b64ba5905c7da9b7f4a9bd1ac56c92564a2f4d7b5c9b28d8dbcc841bfe91f790903364f6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 21:46:56', '2019-09-06 21:46:56', '2020-09-06 18:46:56'),
('864188ba5d8e1d7fc98fe315934f2ac63f6faad55ccfaef931262cd2468a805708a53781aaa3a86b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 00:29:39', '2019-10-27 00:29:39', '2020-10-26 21:29:39'),
('864c8fb28ef150ecebbe50783af614da65daf6d5b1dc09232fba7c859a018e0a441763bcf879b66d', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:26:57', '2019-08-20 20:26:57', '2020-08-20 17:26:57'),
('8677aef43efc5550a4683c4fe21f06d20d1ad8d00fef6bca1bf3446bc979946b0f56bc53d27db39b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 22:04:51', '2019-10-03 22:04:51', '2020-10-03 19:04:51'),
('8687e3f21f220a5823ef87f1ec53bb98f24111eed28b07ff092e06a9a4062fabfaaae12df20a0707', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:19:18', '2019-08-17 01:19:18', '2020-08-16 22:19:18'),
('869a9804ab133c3d137d0a5e6b9090b4ef9605968bd86cf6e04e950b31be67eef7825c93a4249f73', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:50:55', '2019-08-29 21:50:55', '2020-08-29 18:50:55'),
('86e99cbef82c1e091539f8ad7738505e03284046c4b9b1153a7d39bbd6b3547e7f3df2ad8f7b0f29', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 23:42:09', '2019-10-03 23:42:09', '2020-10-03 20:42:09'),
('86eea7dd2fe7dc571d984d829cb8bba2fab9a1b4d08e6f4962b19dfb9263d3c08f833cf51247e4ae', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-24 22:57:25', '2019-08-24 22:57:25', '2020-08-24 19:57:25'),
('86f619e51b648852d7f0c83aecd6802d0c4dba2c181d87ed9597712414205449d6f21b79f6f9f3fb', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:25:43', '2019-09-23 19:25:43', '2020-09-23 16:25:43'),
('872f32f053582610f670a6066c60b05b44024de0d2161507d0406e9e9c4298a75a8a97103827e67e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 23:53:11', '2019-10-22 23:53:11', '2020-10-22 20:53:11'),
('873f07fdc1de2482613822dca2315d1791b9e578e0eb70d32b4b0a2166d9391db5d025968eacf399', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:26:59', '2019-08-20 20:26:59', '2020-08-20 17:26:59'),
('8742a592ff35ecce188f910afce44a2cff1e238c9b6ceb71edba9b1e24331b2eff93cfb9bacfcec5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:17:00', '2019-10-24 21:17:00', '2020-10-24 18:17:00'),
('874e4ee219d1c346a8f2169a087d2bd96d0e26997144a2a0b22435c88080910a517b001e87901316', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 21:43:38', '2019-10-03 21:43:38', '2020-10-03 18:43:38'),
('87663106831e8adcb09134c545990c8345bcaec88b49f1e6322fe5e1670a5bfe3c617e479cc3a05d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:55:09', '2019-09-05 16:55:09', '2020-09-05 13:55:09'),
('87dede49c77f0670512e22e170239253c92a4c377721efb8ecce537de01c72c66d23a0181adc8ee7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:15:58', '2019-09-23 19:15:58', '2020-09-23 16:15:58'),
('87e9e3106b0d7a00a9643ea113f6b36dbdee11bfee607d573bc50b46e79657fdbcf27bc632c7095c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:04:46', '2019-10-28 21:04:46', '2020-10-28 18:04:46'),
('88101cb799a1529e937da66ca507a54e70bd047c5ae49374f0a4a758d3aafa6e288f5fd0add54906', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:25:31', '2019-08-17 01:25:31', '2020-08-16 22:25:31'),
('881eec137ffddc955729f23183e1fcdfa475f6c52fd9e660bde28b49ca9fec05409df810a8701da4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:45:35', '2019-09-05 16:45:35', '2020-09-05 13:45:35'),
('882660ab98bfcafb64be1e11ca9c36c4f19a1c7ebca37e6d7c593a709c21857bdbd8564f0816ab4f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 20:35:19', '2019-09-23 20:35:19', '2020-09-23 17:35:19'),
('88679ab2b083d243108cea9a8d145caabb70ef27c5d98881ba1b24e6e204ccc1ad5f357e9f8f054f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 16:36:17', '2019-09-30 16:36:17', '2020-09-30 13:36:17'),
('8876b82d57d105c1c84913d2e9d2d4de1dd4e3e153e59e8a9b334ff58657508e8a6737f18eb3582e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:26:35', '2019-09-30 20:26:35', '2020-09-30 17:26:35'),
('8897a720ca8ab1c8328b5c5760db147c01055e46023731c15be05619360ae8cd86d733f7f9d61cd8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 21:56:37', '2019-10-22 21:56:37', '2020-10-22 18:56:37'),
('88ac7fd89ef95c0a34bc6bbd5e4ea724dc2da58fabf6d47162259239f06304a652640f10ad9ff685', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 21:40:44', '2019-09-06 21:40:44', '2020-09-06 18:40:44'),
('88e6a8da795ad410eaf75c05491d7f85761514b80f75fc1e8b9a7ba6892400c8004e07ceaa8f5c26', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:20:19', '2019-09-23 17:20:19', '2020-09-23 14:20:19'),
('88f8a627ce1ef4ebecb46a368b0863b6e66e9e591df9d689388583bd68065ce4a7a4f5e913c57fc9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 06:19:45', '2019-10-28 06:19:45', '2020-10-28 03:19:45'),
('89bc40e94192ab611882c3fdc2dc88654825514ecffcea3d614f44517bff43352a40975342ea8fde', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:30:25', '2019-09-30 20:30:25', '2020-09-30 17:30:25'),
('89c6ff6ad9a05dc3534dc167d2c15809a341340ef61ee28cf7780070a3c2693eaf167d4758b8ff5d', 1, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-11-01 07:55:44', '2019-11-01 07:55:44', '2020-11-01 04:55:44'),
('89d1d426a90bb77d141f89b267932ba84c907ee0479739fc5b501768a0904d39c69bed0e05fca15b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 00:27:21', '2019-10-27 00:27:21', '2020-10-26 21:27:21'),
('89ebeea01b20e30ef6bb6f0da22af0d73d3768317b676434aff585c0366f5407683344f1d4b906a7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 03:30:35', '2019-10-29 03:30:35', '2020-10-29 00:30:35'),
('8a6938f4a497dd74f7a56faa455c83fd652b197913790e7a5b4fc2593c7e85ef3cf1e1f314d11d87', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:26:54', '2019-09-23 21:26:54', '2020-09-23 18:26:54'),
('8a82a538680b85b2540289a46e325ef468315f132d462bbef67e2d96cc53048f31ac626b49f7d0da', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 23:54:56', '2019-08-26 23:54:56', '2020-08-26 20:54:56'),
('8aa6f616447ea0542d6bc4b3215540d2387a2f801d05496b542d8fb649775eb6be70e211a9a15974', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:13:18', '2019-08-20 20:13:18', '2020-08-20 17:13:18'),
('8aa9316a437b19977b76094e41763862b7785e780e1f52d48addc5f74ab94965d39b043034ccde73', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-26 23:35:55', '2019-10-26 23:35:55', '2020-10-26 20:35:55'),
('8ad6ecfe78d238d6512b25f5b7dcddfc43fa67b0900f6ebd047573a42531f67ad3550e87ca84aae4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 16:51:17', '2019-09-30 16:51:17', '2020-09-30 13:51:17'),
('8aed63ad370d676add77079bb38403da28be4e99773f9b7e5ee8a630c84b3b8e6ff8628b6eaae5c7', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-15 00:12:50', '2019-08-15 00:12:50', '2020-08-14 21:12:50'),
('8b25c743f829fc76ae46d72fc35c6193b260634399d19c4e868053ada92339732ca3328778bf80e6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-09 02:12:04', '2019-10-09 02:12:04', '2020-10-08 23:12:04'),
('8b5e28ddf89e61fa227fae0f2b9c54f21e00ae96946ac737cb191d7ee360e67234e124bbfb574cb8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 17:13:26', '2019-09-05 17:13:26', '2020-09-05 14:13:26'),
('8c263ae9c88fe25cfbae99536395d4d71c77c5c2c1e17dbbdcfff99c2b97cd6bcce7b9be48fbba4a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 18:02:00', '2019-09-30 18:02:00', '2020-09-30 15:02:00'),
('8c2a8effbcedae4bfb098842a3e0e7edbf45e6c4b325268f9c118dc83123972c0d6332b622ec75ba', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 21:53:45', '2019-09-06 21:53:45', '2020-09-06 18:53:45'),
('8c5a63112ff13aa9f640f6697ee28a8c42265518ada88a7a8e4f21afbcec0fdee8f1a9f1c5904add', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:45:00', '2019-09-05 19:45:00', '2020-09-05 16:45:00'),
('8c66b2b364efe5568da1f28c7236ba295374cc5c826b1e12ee98e87350e686c55950009e152b5558', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:06:06', '2019-09-30 20:06:06', '2020-09-30 17:06:06'),
('8c7cbdc9e54507bcce0faafba83b948af5752fcc65ae684be0687a4b7c4f07acffff4849c0ca3745', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:33:55', '2019-10-28 07:33:55', '2020-10-28 04:33:55'),
('8c86ea5243b841e3cb0d9e34f8e6e6266b97bb3b36bb4daf464e8fd36a81a60341c4be9ce33fce13', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 06:44:37', '2019-10-28 06:44:37', '2020-10-28 03:44:37'),
('8caf68be1bbe410564a3fea9360c3edc749d928bd7984a49325287c28ae8d7ace53b287f61aacb21', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:58:43', '2019-08-20 20:58:43', '2020-08-20 17:58:43'),
('8d05fdca2198829438e87cf58c8d3dc75e1266ca92425601a8adbf44c5c074dbe3c374e9b0baafa5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 16:59:34', '2019-09-30 16:59:34', '2020-09-30 13:59:34'),
('8d1664e9dc9a12104cde3e633972c574dd6947dc5a8c7f364a98fc805a61b6ecf27e5974706d79d1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:26:27', '2019-09-23 17:26:27', '2020-09-23 14:26:27'),
('8d5ae68e28cbe7a363a3952f040affc244561e8028164f60376e3f965bf3c26559efcd0ff8a6afb3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:09:39', '2019-11-01 08:09:39', '2020-11-01 05:09:39'),
('8d85e2006db62f971f54bb35b3e8446174c6817a83d73f378622536255004f18a30e21ab3f01cfca', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:02:36', '2019-09-30 20:02:36', '2020-09-30 17:02:36'),
('8d8d77250c39c0f34f73dfd1e7a5707810b15217891290065772dd8797e89dde1780c67ae557f4f6', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:28:00', '2019-08-20 20:28:00', '2020-08-20 17:28:00'),
('8de4672524d4cb706343daac0d7c340aef4efe6c8d0663f139ea7b7c4292cee1e2d82337faaf1fcd', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 16:48:55', '2019-09-30 16:48:55', '2020-09-30 13:48:55'),
('8de9265c78341f1d682296782bfd08ceb1b08b05b5b7b6df2dc5c5600b2117861785e6bc4f9e829d', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:14:45', '2019-08-20 20:14:45', '2020-08-20 17:14:45'),
('8e33ebb3b67785702226ac2ca1e407f14bc1265450c82dd5f38bb2a18d2e3f8a14587d930e6c9121', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 01:29:42', '2019-10-29 01:29:42', '2020-10-28 22:29:42'),
('8e3c08cc7a4080b2453e8489fd446f9a5bed8301ad0f963e4831c3f56050f3b63260305d64e207ce', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:37:21', '2019-09-23 17:37:21', '2020-09-23 14:37:21'),
('8e418dd7b5eb7aedb76728b64e2416980e4b599bb01f155768d323e32c80f50ddbd48080e10c0fa9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 23:34:17', '2019-10-27 23:34:17', '2020-10-27 20:34:17'),
('8e6db8d1c523eed4250899fee179772da23034699b6e5ffe4267e0636ecd3cfec785dca913bb0821', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 20:45:45', '2019-10-31 20:45:45', '2020-10-31 17:45:45'),
('8e754153140a1bd1cbbd94523b55dba2512ab9795afe71edadbbee91251ea62fb8bd1fb475120ca9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:41:57', '2019-09-23 17:41:57', '2020-09-23 14:41:57'),
('8eb3c57ca5bd9963e4493bdf8a614e5133ee20a8bc929071499f738e433edabbb68f75a0347b499f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 23:42:49', '2019-10-30 23:42:49', '2020-10-30 20:42:49'),
('8f0a1c77546a9756d80b62b8650c9ff247db28f38dc0d703fc1b5baf949c9d92873b6a7a84a86cb7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 20:32:09', '2019-10-31 20:32:09', '2020-10-31 17:32:09'),
('8f58d57ca61d7013887fc666cfc820658538ec41d3e1ad73ee8836c9643db9bcf47a6bc4bd5e85ca', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:50:03', '2019-10-01 01:50:03', '2020-09-30 22:50:03'),
('8f7a7e33fbcbfc0331bad7755cb589bbc7fe3622d45dc62545db61c00aa4720ef3a002dfbf0769c6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:40:12', '2019-10-28 03:40:12', '2020-10-28 00:40:12'),
('8faec017b6d64776384694bed60295f7b151d212937a7dc776403ad8ccd6fbc6aef8b6efb7dddfcb', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:23:14', '2019-08-29 20:23:14', '2020-08-29 17:23:14'),
('90144cba15adebed349f903f7f262ec81a19981f4d9cf77442a3a25991a4743e6395fc091e902108', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:22:40', '2019-09-05 20:22:40', '2020-09-05 17:22:40'),
('905f3e151a6a226377dfa0e49c4edce9efe228856ce16199e05976152d72dd7c5aa3c506da7334f1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-26 23:47:05', '2019-10-26 23:47:05', '2020-10-26 20:47:05'),
('9077497789dd167721b0f934c272f1646816d8ce6c3f7a18b03bf3590b7a152aaaecaf57e96dbefa', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:40:11', '2019-09-23 17:40:11', '2020-09-23 14:40:11'),
('907d536c62fe2bf2b6f095369ba4b8cb34ad4a0c73eadeca03b371443e33016cad299afcb2df5d27', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:25:44', '2019-10-24 21:25:44', '2020-10-24 18:25:44'),
('909090caf3a7a666cad2746d19c123791e86828db245dfac023ab352bdb106f804f8377b57e897f5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:55:31', '2019-09-30 20:55:31', '2020-09-30 17:55:31'),
('91272e31bfb9c26f026f1dfcac54c2575c54c766fef05ab23125925cb01b4ed7e1373f2f238e89c1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 20:28:33', '2019-10-31 20:28:33', '2020-10-31 17:28:33'),
('919355fcd61c46ccadf08c8bc1bf586f263de1f01792df78d3c081373bf93967a6eb8f891ba1d262', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:24:41', '2019-09-05 20:24:41', '2020-09-05 17:24:41'),
('91e0b9661683e886dec21379cb250f5c47e5ba95964f1e29269434c84fdc3009ad43aaf8c9914450', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:26:44', '2019-09-23 19:26:44', '2020-09-23 16:26:44'),
('9211f78e301ba32f77c328bae5b321879596b8791d0988d6f2072efe31488c25873631616ff1417b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:30:25', '2019-09-30 20:30:25', '2020-09-30 17:30:25'),
('9232145c0668ddb431e9b63319fe3c17fcad5ac52ab6fae62ea58bffe52cee1ba96f66de7fa3affa', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 20:52:14', '2019-10-03 20:52:14', '2020-10-03 17:52:14'),
('925e496267b8de8543afdc651edcc083525fb4d078bd3a241b824d0413e5836427dc8b3e91e7a164', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 05:28:54', '2019-10-28 05:28:54', '2020-10-28 02:28:54'),
('92b2634a5df42d070798cc110a17d2b73b7778d13bb9da1dcba7f826e7fb1b452c079a4bb3d76324', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 03:52:35', '2019-10-29 03:52:35', '2020-10-29 00:52:35'),
('92d23dd7f282dae6e9da265184f9f0f82a50e7facd53f1a85ba39a0400eab26a6939a8c74a7f4d15', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 22:51:51', '2019-09-06 22:51:51', '2020-09-06 19:51:51'),
('92d2515427e70b2226150e952a0b7c29a4ba8e93fe385d4cdf6d618b037ee40e06c0eccf6d29a85b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 18:01:29', '2019-09-30 18:01:29', '2020-09-30 15:01:29'),
('92e4de3259ceac735525644a8a7328949923d0f59ae43a9bc6c6479155af731ff1c21baaeacb6787', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 03:19:24', '2019-10-29 03:19:24', '2020-10-29 00:19:24'),
('93274108b85e32d7ed513a2f3bd01ec02ecd1b515b0797017cb797593c6c5ffd5fc1953c3b4dfbb8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 23:10:54', '2019-10-24 23:10:54', '2020-10-24 20:10:54'),
('93399391e8e064f5d2cf579a6ce108233f0782384ac91edd77978c16d1c41739c45184786e4c28ab', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 18:23:05', '2019-09-23 18:23:05', '2020-09-23 15:23:05'),
('934ccdbde9c933bf3d06c5abb4e833b567155722b1a2ba1b2e48f87faa8ee1602dfe9e67844c9a1d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:18:50', '2019-09-30 21:18:50', '2020-09-30 18:18:50'),
('93590fc24193bfd42569d60ec8493d7ac2cd5b23273a35869d5d7374a5376ebe218cbbad7e115944', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 18:53:58', '2019-08-23 18:53:58', '2020-08-23 15:53:58'),
('9363c0ae8b37a2ffc0bb1372e38f32b39be9ef9897cb44b1b8485e56cd475a2d2395a8ea3d05593e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:27:32', '2019-09-30 20:27:32', '2020-09-30 17:27:32'),
('9393d5ee7cad8f8932b3656de49bde8dcc2dce6085804ba24d337a19091a1ec2c7d559b8fbc988cb', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:18:59', '2019-09-05 20:18:59', '2020-09-05 17:18:59'),
('9459d7c8645c4f3cf96801b6166e9e0da62dabead1087ec2daacb75cfb8849a05f769ddaa124f6f8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:45:51', '2019-09-05 16:45:51', '2020-09-05 13:45:51'),
('946d62857c378abcd1b84bf364ee544c127621e7807dd4db5c2559c899565c9c66aea7adb1d03596', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 19:52:33', '2019-10-28 19:52:33', '2020-10-28 16:52:33'),
('947f866763dfcc5fa049347da224216db465201911f344efa74f4a6ad6d2c707511840ab66429ced', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-23 01:43:44', '2019-10-23 01:43:44', '2020-10-22 22:43:44'),
('948152d3633fd9279043f16dfeb2f64d3628c09d66051e4f71322edbf017bb2c97534fd2e074a54f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:25:47', '2019-09-23 21:25:47', '2020-09-23 18:25:47'),
('9485307b2e3273fe605961571e83286aec4b3599a712c2e6a598470130a4dc824a1b6689f50a6ee4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 17:01:43', '2019-09-05 17:01:43', '2020-09-05 14:01:43'),
('949317f979c36ec9767d9863fa80be580e1c19aa9e41c43e5414c6065d369e7103e2e8091555630a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:59:39', '2019-09-30 20:59:39', '2020-09-30 17:59:39'),
('94998dcc7ee56f50ac5c9db9cd1319a809b87678123de6319a34bddf68ad2fb88cdf1f074c299e5a', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:14:46', '2019-08-20 20:14:46', '2020-08-20 17:14:46'),
('94afa9e5bd7f764e9d0856791719c5c5139de21fda99e072a4cd28be565aadb3220c8c6ce43a7ac6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:15:09', '2019-08-29 21:15:09', '2020-08-29 18:15:09'),
('94c009b91b9c670512837834e5fd5011361a7891d1a61a296132bdaee9372643b596416318af956a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:00:51', '2019-11-01 08:00:51', '2020-11-01 05:00:51'),
('94e13d1fd0e95369c948867ea60963d44089e06419b95ee6aa1f0456562fa2fda86f46350d5f5b12', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-09 02:28:48', '2019-10-09 02:28:48', '2020-10-08 23:28:48'),
('9527739da0153e413f1e5c25de29cf8eb50a38af8b8f88496950f3ba5ab573e0cffc58f50797b902', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 23:57:14', '2019-08-26 23:57:14', '2020-08-26 20:57:14'),
('959939f0da0e48895c2a5431370a5830bfed7bd6cdd5959405d4081cd0e0b0128cbe45f475885af3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-08 01:33:34', '2019-10-08 01:33:34', '2020-10-07 22:33:34'),
('95a3ca8af43c67753be1047137de997c31cfc2ee6f1f528472e6e18c33dbd7b371b762532cc25a94', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:25:09', '2019-10-28 07:25:09', '2020-10-28 04:25:09'),
('95a74fe9aa9545e20034a2302e31ba1776099ba43182ead1edfd6658044b35bdecbb2f417a920c25', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:47:17', '2019-08-20 20:47:17', '2020-08-20 17:47:17'),
('95ab1fb588d3b1919585d47baadf4fbbf0c09d1746f47bb662482544e1f4d17d431b19a3bf7e5d88', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 00:59:13', '2019-10-01 00:59:13', '2020-09-30 21:59:13'),
('95b65db3b94e9b2106c9a4130a79ab066a3a5a7a6f76b936c82369a7879d8161e0c34be976181759', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 06:56:47', '2019-10-28 06:56:47', '2020-10-28 03:56:47'),
('95ca770825da6f0ba4b3ce20f780a39244e97eb60e5818476c129cda673903ffd2a10838050f997e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 01:36:41', '2019-10-29 01:36:41', '2020-10-28 22:36:41'),
('9621cecb78cc8bbbaa8eb88781fbaa40ff72ded229d3aa457994ea8e2496fc88aa1951370dc57d87', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:10:12', '2019-08-20 20:10:12', '2020-08-20 17:10:12'),
('9633f3f9f6a2305a676a813e146c604f9d0600135fd585a1fb711bca46826b283af91773d89655d3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 00:34:39', '2019-10-27 00:34:39', '2020-10-26 21:34:39'),
('96a679d6f409d0085f35716a2c6a047bfd7a4920a96ed1176b6697dcdae0fe1bc7066c454190f4e1', 1, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-10-27 23:31:45', '2019-10-27 23:31:45', '2020-10-27 20:31:45'),
('970446f40024962933812a03ec4140105e95c3c29c33a6cf7266f8b9e48deea44007dc491379eadd', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:38:44', '2019-08-20 20:38:44', '2020-08-20 17:38:44'),
('971aa97f88f7a2076f71b587779b39f7dcb77d15e0e616b19d310d50faca067eac3b2e343ffed283', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 17:10:22', '2019-09-05 17:10:22', '2020-09-05 14:10:22'),
('974742529411b2f6d833f9b22263a8cd1e511f94628e1293310ea01fa10023825e482e7bd46cf297', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:50:21', '2019-08-14 23:50:21', '2020-08-14 20:50:21'),
('9764b9734548fedff15bc3eb6e00151484401d936192b555823a5b2c75b2466799aa87407c470ce1', 1, 3, 'Personal Access Token', '[]', 0, '2019-08-25 00:23:06', '2019-08-25 00:23:06', '2020-08-24 21:23:06'),
('976f02228ff9562f0c97aa48e76001500113679e766e1af0fb73ac7a81e225818d277ca6ceae552b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:12:37', '2019-09-05 20:12:37', '2020-09-05 17:12:37'),
('97757d5274d82238bedc45597b51c5985866ad4481036cce34b0370eb6d563a57a3e97f5415108f6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 01:20:29', '2019-10-29 01:20:29', '2020-10-28 22:20:29'),
('97d53973bff492b0defaa96a35aa72d034cff0acbeff22330b5324dd46b51cf541fe654d72b14d15', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:30:45', '2019-09-05 19:30:45', '2020-09-05 16:30:45'),
('97e79800b85fd6d1626b9567c7d4bd540d45099903fb03831db66d5f5dea136e0dc4f1735a712e53', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 19:38:01', '2019-10-31 19:38:01', '2020-10-31 16:38:01'),
('97f90598bc78c6840ae62ab46a72de14b6fd5792f3369864eb16fadeccf75417820a0c380d3db4c7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-08 02:08:20', '2019-10-08 02:08:20', '2020-10-07 23:08:20'),
('9810aea2561d9351aac979d5a444de9913bbc650845522569b1ebf688fcb42f252585f4ce7526f5d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 22:23:39', '2019-09-26 22:23:39', '2020-09-26 19:23:39'),
('9861efe0ef1931267096b62add0af364624065b34b83d775006245290d538250e0a25079780db94b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 21:10:20', '2019-10-22 21:10:20', '2020-10-22 18:10:20'),
('987c8a4e1cb57a4db637bd4caefbd31de841258095e6815588588909a6a647c9e3c6471ee96b354d', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:19:17', '2019-08-17 01:19:17', '2020-08-16 22:19:17'),
('987df78308aaf3674bcf12d16a08b18dc23bb7caa9eebea98860d40b9d4ffdf80c8adbb9405f197c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 19:51:17', '2019-10-28 19:51:17', '2020-10-28 16:51:17'),
('98ac89efa53316c1d67d65d9baf16f8ab44e348003e56238386b8a79fca89864c43257b397eebb58', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-26 23:52:48', '2019-10-26 23:52:48', '2020-10-26 20:52:48'),
('98b07862235edf80fd030c265c61db75c8da8b562a26cf1b3e900a753c7c5b47446d8f6fac69f758', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-13 23:27:36', '2019-10-13 23:27:36', '2020-10-13 20:27:36'),
('98cca2a83b6fb74ca96354ab3ad1c31402bc86cdd9949b2307dedca24c0bac7c6b82c5e1ae7def51', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:28:05', '2019-09-30 21:28:05', '2020-09-30 18:28:05'),
('98df700a01b4d80953d8b419e87cab0710107f57dabc796f3a53a42d80d21df46cb75c669a9b9699', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:48:36', '2019-08-29 21:48:36', '2020-08-29 18:48:36'),
('9909447cffc65f87fda0f301f642b149df133c8a12f8524c6b54315244bb6d2c61f8212a11dd4d38', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 00:00:39', '2019-10-31 00:00:39', '2020-10-30 21:00:39'),
('99167059389731a1ce100aec144a7e2f1b7bb3c7b54bbda800b3b2b1fbd56a1bcc41640add52d3d7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 01:37:54', '2019-10-29 01:37:54', '2020-10-28 22:37:54'),
('993819d16fda4c72addbc431821d6d1d846601f11389340ec2a0e897072cb9d131e1e1b695dd5a97', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 22:10:42', '2019-09-06 22:10:42', '2020-09-06 19:10:42'),
('99670420ad3bfb1bc540e94dcf777195ff697641afed5bd7d28f6907286c81e6380e9866b4269a23', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:22:17', '2019-09-05 20:22:17', '2020-09-05 17:22:17'),
('996bd204c0023b9090eb27f9d98075292256083d47f4ab01c4bf67e669b5b56b5e74b88474ebb4d0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 18:28:51', '2019-09-23 18:28:51', '2020-09-23 15:28:51'),
('9996076b2c4cf86c6e3e41cac73389e72ccf365cae6b816e545733a95b05434a8b1bec32da7ffa1b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 07:23:53', '2019-10-04 07:23:53', '2020-10-04 04:23:53'),
('999e6b67dbf8cdf71a95bf682ef0ecf3ac61277f045a0ba15db8621e0344acfab7614a59f08b1066', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 23:49:49', '2019-10-22 23:49:49', '2020-10-22 20:49:49'),
('99a84326aa80501f2dfc1eccf97852f6e2e955587b083cbf4f4d4d3ff229c3403f57c36e441ea2bb', 1, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-11-01 07:58:31', '2019-11-01 07:58:31', '2020-11-01 04:58:31'),
('99c161cbd661f5ca4b0c0ab8862be574dfd5d03b121fc8838903aceb9a10ddb01c3b4ef92845b0fb', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:32:26', '2019-09-23 21:32:26', '2020-09-23 18:32:26'),
('9a2539c5cdc5d9a35b1364ae1e6fdf1bc768a22eea927020aaf5372d0e0267c28daa23644b9a144b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:13:56', '2019-10-28 03:13:56', '2020-10-28 00:13:56'),
('9a739667a3cb41cfd1e0333207be32426c13d13d280dc4b803bfec58f828e4f2436c95d0ebef042b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:28:49', '2019-11-01 08:28:49', '2020-11-01 05:28:49'),
('9a73d7e953889e163423c23e45a4940c2c88bc445d959fa83e2c40fae14e4183f34fba9c73a48290', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:45:16', '2019-08-20 20:45:16', '2020-08-20 17:45:16'),
('9b4a3124603c2b0c88615b3cbb456bddfd718125414c5a9b10c7e9bd0b58fef948192d6e0b538a00', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:01:42', '2019-09-30 20:01:42', '2020-09-30 17:01:42'),
('9b52a0b345bd23de07e891b33e5229619c2ea118f7f088827bcb2936636e97057ab695510b766c72', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 02:18:33', '2019-10-29 02:18:33', '2020-10-28 23:18:33'),
('9b9420b05e96315350358f9149e9a1b87ccf81015e8b6e240a34e828c704866213f2b91f3c7e0861', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:29:20', '2019-09-05 19:29:20', '2020-09-05 16:29:20'),
('9ba92c263e89b5dcae7cae8a160541aeefe4b3284599483f67a94891f944484bf65fb778fe8923f6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 21:58:40', '2019-10-22 21:58:40', '2020-10-22 18:58:40'),
('9bcd997752fa55cc6a12113805cd75671c2cdc00b7412b2c15f173570a8f4a02e1e9d7c27f27ff61', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:25:01', '2019-08-29 21:25:01', '2020-08-29 18:25:01'),
('9be5d276f37cbc04c2157f825bfdc33641e681634642f2ee0f0236a3e6b587277a66f2ccd08eace6', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:35:25', '2019-08-20 20:35:25', '2020-08-20 17:35:25'),
('9c1d8c53c0d9c323b9d7c2df07869a335d2d103dbb49bbee5cc7b84e8eac3e0c7c418267f296f706', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:49:41', '2019-10-28 03:49:41', '2020-10-28 00:49:41'),
('9c6a16c11cc83a27095cdcad8135990348b3cbbcd797f4f85bd9b21d8bdc1471fdffdeaaf742d6ec', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:08:01', '2019-08-20 20:08:01', '2020-08-20 17:08:01'),
('9cb659f0820e4cc2f7d9c506f89b068f1a153410cfc492af1e40ddf7d7014b936fd173553f271d84', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 06:57:58', '2019-10-28 06:57:58', '2020-10-28 03:57:58'),
('9cf8c2e624f93fc6557aa39f1ac93ff88a00129b3b5b20250ae7d27652c00069ca9915b4ae01504a', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:04:16', '2019-08-23 19:04:16', '2020-08-23 16:04:16'),
('9d01d1408545e0bfeae643715992a56ce3742e0575e3af73dff57d41f9171d2f38e7b714303809c8', 8, 3, 'Personal Access Token', '[\"tecnico\"]', 0, '2019-10-03 22:21:27', '2019-10-03 22:21:27', '2020-10-03 19:21:27'),
('9d4bea79f3fd94f48e029d03eed1edc76cbcac164954277a5d90e8b81e0d7f6132860181a14bb224', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:24:46', '2019-09-23 17:24:46', '2020-09-23 14:24:46'),
('9d7713767da1f59c16a23817fc06795818e8161bc2205542857c93669c0b8947808bdd21d29c3d9e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 23:43:50', '2019-10-30 23:43:50', '2020-10-30 20:43:50'),
('9ddae12965fb7848ffe85047222a00b86b79b68af44d959dec6f260d17527c3ae78488b3f3d2df76', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:30:11', '2019-08-20 20:30:11', '2020-08-20 17:30:11'),
('9df494a0c4a8690000ec593c61c2c538f0a8ab821e3cec4fe3ce116095ae1269f2c4ec94ba68b5ef', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 06:29:16', '2019-10-30 06:29:16', '2020-10-30 03:29:16'),
('9e214758578aa46b52bcf6c33f6a2c24521f11619fd83f4dba3f2d96c70bd03a108023c0fa22c72a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 00:37:28', '2019-10-01 00:37:28', '2020-09-30 21:37:28'),
('9e4297e2239a6caadf0d048d4fe2e201d8d2ef29fc309a7f0ba32fe698cf4cc54a82f386a26142a6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:08:20', '2019-09-30 17:08:20', '2020-09-30 14:08:20'),
('9e8786a55442d71918628af189da4dd5a0d82a9d7019ad10a5390a15844dcea170698ee620a5fb49', 9, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-10-22 20:54:31', '2019-10-22 20:54:31', '2020-10-22 17:54:31'),
('9e93ea258ed28303456be94c2056a91d3a20796192444bd736ed1e7df52765b64e8f1712133512e0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:02:47', '2019-10-28 21:02:47', '2020-10-28 18:02:47'),
('9ea8b2db02fbcb45f8db3f842c94d901a103a062cb8134931df5b659d3b87aa7c20e27b039cc57cd', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 23:24:29', '2019-10-27 23:24:29', '2020-10-27 20:24:29'),
('9f5a65be38a9536fa1335b0a6abe12cd6a4c0c7a8ae7f8e27af38b0340f37854104a84a60e3491f2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-09 02:25:51', '2019-10-09 02:25:51', '2020-10-08 23:25:51'),
('9f6ab7590531d56f620b32560365b3b0f0b0a7a3077a93e8a80f79e65b976ae1eb0184721c1c2433', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 00:24:47', '2019-10-31 00:24:47', '2020-10-30 21:24:47'),
('9f6d31ed2878b78bc7b7b7b68e78f3016396b003c79b88c2e0ef032f64fb0773c031e389b565d7d7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 21:52:34', '2019-09-06 21:52:34', '2020-09-06 18:52:34'),
('9f7cce5041b3477719066d673021e62a5d420d4c7aaa02aee5b84b2d8f850a440118203a7c160235', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-17 00:13:04', '2019-10-17 00:13:04', '2020-10-16 21:13:04'),
('9f9e8cee3a5e1baa62bd9df95f3341bfe0f09bc948ac26592e617cc892b9bbc3f4d97ddf491bdec3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 19:04:06', '2019-09-30 19:04:06', '2020-09-30 16:04:06'),
('a038abc70c45c5501e0442eaed169fbe28e4ed4dd69cd5b472fb303e5217e44836a675090db9250f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:53:49', '2019-09-05 19:53:49', '2020-09-05 16:53:49'),
('a04e0e4cd40777b536907aee46e871fe524c4ac5b83100323cdb4a5131af78c3d75a5801d0a6cde7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 06:47:08', '2019-10-28 06:47:08', '2020-10-28 03:47:08'),
('a0699abbaacebef7e0d8d2a78b64ce188f49864cb507bd98bd278c8a81540fc9891727c168a97a67', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:24:34', '2019-09-05 19:24:34', '2020-09-05 16:24:34'),
('a0866bc7e5c2d4458fb897d26ff1a131378ea795efc139d221aad55818813eef0345109e2487372c', 1, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-10-03 21:27:52', '2019-10-03 21:27:52', '2020-10-03 18:27:52'),
('a094816b690135bfae6b226ac450b7a9d7a6dc13e2099668effb245be33abadcdd4ae6cd2fdd209a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:21:46', '2019-10-24 21:21:46', '2020-10-24 18:21:46'),
('a0c2b0c899cb1031cd2ef49e4b4a44e383db397649e88300822eaaa933b145ea4ae4282b14413ca9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 21:36:26', '2019-10-22 21:36:26', '2020-10-22 18:36:26'),
('a0de7c6047714ee700e655e89146346d65eecca0da265cac165fe79b66d2cdc10d4c69d356b29946', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:19:53', '2019-08-29 20:19:53', '2020-08-29 17:19:53'),
('a11ea76622215c1e85c382cfa09e154d6de6d00532c36eceb60e7c03f26edb54e125b3d640af1056', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:40:14', '2019-11-01 08:40:14', '2020-11-01 05:40:14'),
('a145da288dd841177071e259fd581e84f64535bb7a95b2889a7ab43ba3d72f43a7238d884d0c4e33', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 22:34:55', '2019-10-03 22:34:55', '2020-10-03 19:34:55'),
('a18f6eb9dd800b55f468612ad17e2dea7cffd544a083e9e5f9358c2b4c7b767a1fe75ed01b6eedaf', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:13:20', '2019-10-28 21:13:20', '2020-10-28 18:13:20'),
('a1a688b0dee7b11ccdd320c5e6793c298674e9e3c18f35dc9bf4f7c8a684deb35a7d05b9d2f0fbf3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:23:14', '2019-09-23 17:23:14', '2020-09-23 14:23:14'),
('a1b1741386c71461fc27aa2d81b3d807e59be74d35aec10239dd0528e47b7b417c0805b5c64b1f45', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-19 02:38:20', '2019-10-19 02:38:20', '2020-10-18 23:38:20'),
('a1d1c4018c6f72d91ac7d5cfc8e777bf049af99f31bb28b4f19a8c913024957c46dbf0eef20f2158', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:42:15', '2019-08-14 23:42:15', '2020-08-14 20:42:15'),
('a1fbe911971aa0e0fc55c735e0fd336af88d5687f04c50832ef39ad5a6c29ea3757e41d2fcb4af3b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 22:11:09', '2019-10-03 22:11:09', '2020-10-03 19:11:09'),
('a20115856026c57868a6a972d57972c219906eec09b8c31b2c69b75455f4124d5986a614950f9f5f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 17:10:12', '2019-09-05 17:10:12', '2020-09-05 14:10:12'),
('a2078b697d9d8bd206329a5f27cac9e14bf180a371c8f88311350fcfad960d0f24c4ab2653d5f2e4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 00:24:39', '2019-10-27 00:24:39', '2020-10-26 21:24:39'),
('a2215eb704cc805074842e48221bdcbeb47df6eea205f8e64ec268150d1dd712523f1ceebf9a180a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:14:42', '2019-08-29 20:14:42', '2020-08-29 17:14:42'),
('a23ebcf44ae943b916816c1ea5e496bf71e19ccb682966af5379c897ea35492fc957a2873fd5dd39', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 23:17:50', '2019-10-27 23:17:50', '2020-10-27 20:17:50'),
('a35acbeee48e48517f544f16a2ea5397080b152cd6e849db51fb57b4ed4676ec875c6c03197e6884', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:20:12', '2019-11-01 08:20:12', '2020-11-01 05:20:12'),
('a35b39fde1f95b6df4532f9beb8d7e31bd3f4d8950fd1be7aa2167d44348ac2e9109aa476093bae4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 23:04:20', '2019-10-27 23:04:20', '2020-10-27 20:04:20'),
('a4019197e1bebda1f0cd5071c0f281161f2b92789a0344169b9d65ac857c57039e8cf60c7296dc6d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:19:52', '2019-08-29 20:19:52', '2020-08-29 17:19:52'),
('a41a313e32e49e13d2ed8f840bbe0cb5aabe2545c5b54275f5c144e34fdf1cf0af117ce1185b635d', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:22:08', '2019-08-20 20:22:08', '2020-08-20 17:22:08'),
('a41e955cbd9e081d4addf9593afb75afc8a5049f50c0a29c63e4d50ec48eee981c1c64a6cdee89fc', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:11:58', '2019-08-20 20:11:58', '2020-08-20 17:11:58'),
('a42e5aad59ca1e3e5a8a8d44405bb8cc94688e8a2409e222ed8f626d8555f8c1c51fd50462a144af', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-24 22:59:33', '2019-08-24 22:59:33', '2020-08-24 19:59:33'),
('a4ac570fe62a4e6894e1899ea6e336ed9d455bd0f9a27e33e514e6bf1fd1cbd82b333da2385c56fa', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:18:36', '2019-09-23 19:18:36', '2020-09-23 16:18:36'),
('a4d409eb163fd26d8eeff25509e078e5e8597548c26772120edf3bcc6b5983a4ca9674e701541643', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 21:05:11', '2019-10-22 21:05:11', '2020-10-22 18:05:11'),
('a4dfc55c1e6b980bb42d0285c945f9845d5629c317fd42c349603c3cb59faf468148f278f995d5d8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 22:21:42', '2019-09-26 22:21:42', '2020-09-26 19:21:42'),
('a4e2341d4223e88d2b93d6982225aebeb33392dd103430c6a348eaf65db04ea3a568b19d19ca0b71', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-19 02:36:12', '2019-10-19 02:36:12', '2020-10-18 23:36:12');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('a50a14bce369c923fd7cd6fb0d68240a18adcce8b97161ddd64faa4baeb4f558eb9a39aa432c1c78', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:18:16', '2019-08-17 01:18:16', '2020-08-16 22:18:16'),
('a5cf13217a0d9bac4fdca7b413939fba537f27d966122f33bfd48f5ff429c2441f9eea86542acf9a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 17:19:03', '2019-09-05 17:19:03', '2020-09-05 14:19:03'),
('a5d224703e7e961baf31395468cbf2dbb5a4031faf14223369d07ccdcff8788943ceb783bbe956c6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 02:01:20', '2019-10-01 02:01:20', '2020-09-30 23:01:20'),
('a5e78adc1567c541ebefcf818770f5b0c69d048f68fb9e7fe24ab4eaef0a9c2b411734c9f7208051', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 02:32:11', '2019-10-29 02:32:11', '2020-10-28 23:32:11'),
('a5f310ff812c38ccd4b6107504b9415c390bb1e349a633a2753d6cd4a65f2eb09958a74f41cf7322', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 21:36:59', '2019-09-26 21:36:59', '2020-09-26 18:36:59'),
('a5f874c5842d9d679c4f993d07c0b2b0aecf70ab3741289405d196db9b1c673b1332e125833c4dc1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:08:32', '2019-09-30 17:08:32', '2020-09-30 14:08:32'),
('a61f447d9db75f50a9348502181a5e97b11f9df3e71ebf0a2840c935c9c8c34b0f164ffc89f2fb74', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 23:53:07', '2019-08-26 23:53:07', '2020-08-26 20:53:07'),
('a654214209979ed1ff5a57f4f2b3746ba368b18749feb6eb3f61d7b51ee849016345793d7bab86e7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 21:53:49', '2019-09-06 21:53:49', '2020-09-06 18:53:49'),
('a65a6940b19d36e97d352415f280e75da6e9190f05b82b6fe142847652651a57ca1de03126c75cae', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-24 23:15:09', '2019-08-24 23:15:09', '2020-08-24 20:15:09'),
('a66b67432388112d28a017c6841fff2deee6cf9cdc1a6865b95cbff8215397d7b198610134e77413', 1, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-10-03 21:19:41', '2019-10-03 21:19:41', '2020-10-03 18:19:41'),
('a6c218e4a24652f2385e282de4aa391588798eb444cafce777490c45fd856080998aaabae12590c2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 20:44:31', '2019-10-28 20:44:31', '2020-10-28 17:44:31'),
('a6d00b6e420273096ed04b078abf4b8a3c8721965a38395ec71a4131fda60ce25c08188479994d11', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:40:48', '2019-09-30 20:40:48', '2020-09-30 17:40:48'),
('a6d1d189a9982cabcf074454f1f9a3aff5e90ac241678db7c5329eaf93cf495ae9c721f16862d0db', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 23:42:26', '2019-10-04 23:42:26', '2020-10-04 20:42:26'),
('a6f8be51559715d2e5e058fc1c057348eb6fd69bbe5b4b236a9a6dd05f9f395d475ed04100da9cfb', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:24:24', '2019-08-29 20:24:24', '2020-08-29 17:24:24'),
('a73dc10ecbdafad5c82868d5f60ec6890b233eac3b8ddc8cbbfbcc7137e63a5758a4f9a46ae4da6d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 22:20:26', '2019-09-26 22:20:26', '2020-09-26 19:20:26'),
('a76f573605de74c14f4af529bf406094e227cbb1e83e374bba133ee29b2a08b421e8e48d724c0695', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:42:49', '2019-09-30 20:42:49', '2020-09-30 17:42:49'),
('a7d21e17763710924e284c7a52766c90e2f2b26268804d05728ca9f2e18d8b9302041b2b4a596272', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:13:50', '2019-08-29 20:13:50', '2020-08-29 17:13:50'),
('a7d806ebebf6d4cf94a9ce173fe3c85e76f528cbfed821687576ecaa8357ef158641a5c3f2a215e0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:19:49', '2019-10-28 03:19:49', '2020-10-28 00:19:49'),
('a829dc7ac550c53fdd8d5bdb33722db09a3308d42b7521d701cafe22d16b3a228ea417c39ba138f8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-23 01:14:40', '2019-10-23 01:14:40', '2020-10-22 22:14:40'),
('a82ad9b55a42e615887596a52090cf3360d37acd09a7f2dc1e802c46ee5a0c9c91e539b9aa4e1fe6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 00:27:48', '2019-10-27 00:27:48', '2020-10-26 21:27:48'),
('a84d5d4a083ea47ae9855f6085f9e794be340a062cf8588740de437571225683c517a595a8f9673a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:31:19', '2019-10-28 07:31:19', '2020-10-28 04:31:19'),
('a84f1597e0de7f86535106ee4856f825b436e7c9c9d23518605face1f68e347c15066e8e0fc93213', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:41:57', '2019-10-24 21:41:57', '2020-10-24 18:41:57'),
('a863cfd890ee6a20257b13d433b0d068a7c98b3deb6834ac9f4097940ed81afe9dcda70b08cc4fd3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:24:19', '2019-09-23 17:24:19', '2020-09-23 14:24:19'),
('a8724976385de4a9d9473f85edf9d4bdd7e2a4a70d3a61a7c62f262cf25934093f327f0ea53700ce', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:37:18', '2019-09-05 19:37:18', '2020-09-05 16:37:18'),
('a8782bcef8429a6c641378032420ae5fb2de31d423b597ac2b4aed361fe271c37540ed1a11dee2f0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:44:04', '2019-10-28 07:44:04', '2020-10-28 04:44:04'),
('a88b6c438b53c93e641d5a9e1d0fbfb73ea5b7e8292fcc236b4c07a7cccfa96dc20957e4b2e50789', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:19:33', '2019-09-23 21:19:33', '2020-09-23 18:19:33'),
('a8a76d08424f438bad8d526af7d97ce7fbe892be9d200c6d499e22997160af7cf909e0fd4d0ffdca', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 22:06:16', '2019-09-06 22:06:16', '2020-09-06 19:06:16'),
('a8b4fa45e4e7c0271714335acc82d6f7a9c386b254a0084eaea16afb8ec08edfde055061e0e47b22', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:47:20', '2019-09-30 17:47:20', '2020-09-30 14:47:20'),
('a8e8af7b5fe024a0c85a7993be5a0b6daa223b43fd5487eeb9cb140656acddcba4c9b6a6e9330db9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 00:31:02', '2019-10-27 00:31:02', '2020-10-26 21:31:02'),
('a92b0c1d5cee530884d1672e1bd297e390be56cc300714721f43f74c9dd1d62600fc16b30b4062d6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:07:39', '2019-11-01 08:07:39', '2020-11-01 05:07:39'),
('a9cf4a0967adfef513db54e72be426085cd4b977ac708c219d75d4e082fc6153b37c06550fa0540f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:28:31', '2019-09-30 20:28:31', '2020-09-30 17:28:31'),
('a9e2bdaca071eb597261b2aeebbc541e304bbad71b9a77ada3c362d937085deafd2eba3d4843f483', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:23:00', '2019-08-20 20:23:00', '2020-08-20 17:23:00'),
('a9f38d52e6cfa9b1b3174950a3e3ef19d5b9a1c32dec4f6303fe5c330216261c33961a51a2af19ec', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:15:19', '2019-09-23 19:15:19', '2020-09-23 16:15:19'),
('aa381c8832af14a612e0167ee378b928b7b8896fcf39c6d71d77b64e55ef9e7000d31b238181a5e4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:13:18', '2019-09-05 20:13:18', '2020-09-05 17:13:18'),
('aad400df37ad9776bdd44d24ed1ecfac05a32b8df161378ea90d789e1f2ce945acdda371a01996db', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-24 22:30:28', '2019-09-24 22:30:28', '2020-09-24 19:30:28'),
('aaee63eb19715c28115fc246d4ff9bb62fdf7dd9bba34cc0532d0a47fc5a0985bac127ea380ce88b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 21:35:52', '2019-10-01 21:35:52', '2020-10-01 18:35:52'),
('abf14e98c363995f3493c9cebe77c1c9d209099a1d93052557ff6c03057137b768c47ddef880e15d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-09 02:28:33', '2019-10-09 02:28:33', '2020-10-08 23:28:33'),
('ac66aa7f595bf30badeca5b28eba78e8c12cad4ce12191507b2d48de13115d87445d759e203fe351', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:04:11', '2019-08-23 19:04:11', '2020-08-23 16:04:11'),
('ac7d93e85876005f4ee5865f351cb2bc78762529bf05477b272251937c340392aee000677a11067a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:17:52', '2019-09-23 21:17:52', '2020-09-23 18:17:52'),
('acdc8b419b9f9d380f9cf60736f7f1c0b156a12e4ad43ae974533f2f67151f15b1b28aa04cb366bb', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:52:51', '2019-09-30 17:52:51', '2020-09-30 14:52:51'),
('acefb9c3005d7d9127e82ce98b39ead89eee3ee2418407a51c07415ab4a2c50d131fbfd84564f0bb', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:16:30', '2019-09-30 17:16:30', '2020-09-30 14:16:30'),
('ad2d091c43aaaf619e5ad9ed1f8d1bf1823765151c4767198c9549090c3a84e2fa0d8e0980279d77', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:14:51', '2019-09-05 20:14:51', '2020-09-05 17:14:51'),
('ad3909f2baef661973f059388ca3de45a74be6b3179385d9d748742cb121aa27682530af46232c38', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 23:59:14', '2019-08-26 23:59:14', '2020-08-26 20:59:14'),
('adc852f86b3327eb5283c984ac41bf1ce411c7f70210906f3bda44ada89ea418dc2d6191db585059', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:27:01', '2019-10-28 03:27:01', '2020-10-28 00:27:01'),
('ade0a6b82e76fa83c0b1d45fa0d58713d195bbb111e762d5f41d13319233067ebc0fede414554dde', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 21:51:52', '2019-09-06 21:51:52', '2020-09-06 18:51:52'),
('ae2dccf3ec8df9543604d6182357b53111cd191363a7ecc75b5ef1f6f3f7bcf2043b02c8922fa7be', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 23:49:59', '2019-10-03 23:49:59', '2020-10-03 20:49:59'),
('ae6a7e27594210cc7536708739fda045df15214f52addfe7abc123d888304699cc2e86747ebe0eef', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 02:29:15', '2019-10-29 02:29:15', '2020-10-28 23:29:15'),
('ae72f8d46adeb1268c21d9e18fbb9d4179433eb2b487bbe84e8dffa162ceb668f58dd9d479265892', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-24 23:17:43', '2019-08-24 23:17:43', '2020-08-24 20:17:43'),
('ae982ff24a1ea911e387152aaf2305764cd028c91ee8ee4cde118dfd84d394ecd014e13d7265e18f', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:44:54', '2019-08-20 20:44:54', '2020-08-20 17:44:54'),
('ae9d2914288ab1dc5fecd63b29b32d8a616dadae57d563c84128fc8949de51d6ff43af3b56ec0ed3', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:23:03', '2019-08-20 20:23:03', '2020-08-20 17:23:03'),
('aeacdeca8c0326803f07af6025a401bfbe16f40147715ccc4b17b946942de2dface66a4aba7b67ba', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:12:57', '2019-09-30 21:12:57', '2020-09-30 18:12:57'),
('af03ab8441fca860ac269edbda8a77d008124f42a957af173afafda446bf04c02d394f33908d9eb9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:27:08', '2019-10-28 07:27:08', '2020-10-28 04:27:08'),
('af04ca204b0e0e9386865ddd1c3ecac204d26817651b9150874b6c68b7bf76ef6361a21914a35bc2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 20:47:19', '2019-09-23 20:47:19', '2020-09-23 17:47:19'),
('af09e0b6879892d46c3c2209aa54cf32becd024959090c7a52e70f83711597c715cc534607d8c93c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 21:48:07', '2019-10-22 21:48:07', '2020-10-22 18:48:07'),
('af230c72ce8a0a199d72d197e881c348adbf7f03aee2933fd4d484eb64d1dcda00542bd809470d1c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:21:48', '2019-09-30 17:21:48', '2020-09-30 14:21:48'),
('af6d06503f5bdcaf70fcb12d81b8d689926da85880d40d4a0e5f40d63cbb32c60138225749f65d02', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:05:46', '2019-10-28 21:05:46', '2020-10-28 18:05:46'),
('af7ab8761f400ceb39ab5e58edfb4a1c19181802f021af1715d3c1691db335857516eef711c5ad73', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:47:53', '2019-10-28 07:47:53', '2020-10-28 04:47:53'),
('af9619afad838396cf41c01e3996838989c5f370fc13e7224590f494403521aadc226cf4958b5856', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 20:46:49', '2019-09-23 20:46:49', '2020-09-23 17:46:49'),
('afa4283ea330504da1859ae70524be0127c11345796b67268affe16e5b21e11b7f96f2ca76fecc17', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:11:23', '2019-08-29 21:11:23', '2020-08-29 18:11:23'),
('afd3348e92fc4c00f94def875bf52cf9406bc24fb2c3c073228a11eb44e9995a53879489722bb6a9', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:30:12', '2019-08-20 20:30:12', '2020-08-20 17:30:12'),
('afef2645d4eb8e07e84d393e5eb8b7cc3417f980327e77dbbf0c229c9e7e21d6ff10be03ba0e45bb', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:10:00', '2019-11-01 08:10:00', '2020-11-01 05:10:00'),
('b007cfccc332007b1cbfa2ecf42851c6299a5e7df7f8eb2d12e12dd9a13fe53a09f7384997c0f968', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-13 23:24:15', '2019-10-13 23:24:15', '2020-10-13 20:24:15'),
('b011dacc98080d1001dbae228654f5315ab870ab7dd7d042d239e8bfa15ff8e7d7432e0b827dcaf7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 21:08:43', '2019-10-01 21:08:43', '2020-10-01 18:08:43'),
('b030bdbfe96b90541c1e385df7f7566b1e3c8a7e57483288b62d931bd33535db00bc7219df8e4ce3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:23:35', '2019-10-28 07:23:35', '2020-10-28 04:23:35'),
('b0541a18a7063cda6045c00c7bbc7646d40b621aa16a6da6322d91a4bdb9048a9dfb2f215cb7a5a8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 23:56:22', '2019-08-26 23:56:22', '2020-08-26 20:56:22'),
('b0a5d2889749f591666ff6fdeb51657123f490e737d76a31a007fe0ed90a53aa43ac1df670fecdc3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:36:25', '2019-08-29 21:36:25', '2020-08-29 18:36:25'),
('b0f085b37eae6834c4d68a4878e056e42c9188d5c63ceb5c2165064b993596d1892e9c9143212388', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:08:18', '2019-08-20 20:08:18', '2020-08-20 17:08:18'),
('b0fb0cf956401178f87652819623fc82490e4faf5e9097b5f1913809159918b5f43abd5ad0972247', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:38:44', '2019-08-29 20:38:44', '2020-08-29 17:38:44'),
('b0fd96e06b81418967bab2393ec56e84f02b30eca3725ac047a5d5eb2c44e79069e391558d9fc538', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 22:15:59', '2019-09-26 22:15:59', '2020-09-26 19:15:59'),
('b0ff484ea7ea5108db0f2a5ee52795343f0edcb409bfbd4975cf9e3c5f0f966bc2a8a9aaafe64d7f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:29:11', '2019-09-23 21:29:11', '2020-09-23 18:29:11'),
('b1415e6e04a943f975493c26c812d2a05811bc72f424bed00a84a14e92842ed954da9c78ef9d1077', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:31:32', '2019-08-29 20:31:32', '2020-08-29 17:31:32'),
('b1cfc8ba3b72f09ed79465d2bf542bd151911d68fdf1e82b136961f4309e1cefa26206deb5931bb3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:22:53', '2019-09-23 17:22:53', '2020-09-23 14:22:53'),
('b1fc5780795be6e81f796040885cb0c47b5d4ae0306be95243bca3b333cff08791c96e6a1487f053', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 21:50:54', '2019-09-06 21:50:54', '2020-09-06 18:50:54'),
('b1ff409bda92805fe98d58c5c61fb9492521f7ad62798407a5b225170f4c4386bedb0fc28f3cd942', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:08:05', '2019-09-23 21:08:05', '2020-09-23 18:08:05'),
('b20a3adc3fb9d420d716803266de544991e2f4b8ded60cb198198513516f10a25649cfef97797c86', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:12:17', '2019-10-28 21:12:17', '2020-10-28 18:12:17'),
('b22b7ffad34b8c987cbb67e24f680cabfa89b1639387fe1e1e894c05bb108d83efc5d755a06b7103', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:20:18', '2019-09-05 20:20:18', '2020-09-05 17:20:18'),
('b292a14a5fef26658c384cb89913a0d81ebf6c53cef809aeee3dc4cfb84a4e6aea9e2e734ea53766', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 21:39:42', '2019-10-03 21:39:42', '2020-10-03 18:39:42'),
('b2e9dba2e6c454ffc068601923b023e6f67a5d99157d7a6c4195ca9c3bc36059aafc958e388919d6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:23:03', '2019-10-28 21:23:03', '2020-10-28 18:23:03'),
('b310d486442a6454b2df3e5c790dde274bae54905c798eaf91e2c1a3de33ffaae183801e980e3d8f', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:20:59', '2019-08-17 01:20:59', '2020-08-16 22:20:59'),
('b3a3a062f1b49bc7f779c37bf1dcb345d0ac4ab7c6f91bc6cc829ff8d6a3233611ac44599f0a1f16', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:07:14', '2019-09-05 16:07:14', '2020-09-05 13:07:14'),
('b3a42905c7676404046b2de8ff6cd0e509a29bcc3ff153201e926d9f53712bd8c2b7086f4dd41dcb', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:10:11', '2019-10-01 01:10:11', '2020-09-30 22:10:11'),
('b3ad0c2cead5c8f617dae241265735c9c9a6d0dc07910ad56060f441ffeed5a36d8264e01ec5f8ef', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:11:49', '2019-08-20 20:11:49', '2020-08-20 17:11:49'),
('b3d855fc2c2ed095f6f08d4d1ef7218a5a9e400e1cc9801a8495caeea02544c9ecbe6b82f381671d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:21:19', '2019-10-24 21:21:19', '2020-10-24 18:21:19'),
('b3eae46ca65e99d11c205a947ccc53e04ed910b1ac63d92bc20022356f478d972bff8dcb5d0f641a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:25:56', '2019-09-23 19:25:56', '2020-09-23 16:25:56'),
('b452f011e0124dc6ed5b3082c74ad56855d318f5272eed38911c88a0b661eb2562d82b4aefd60f2d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:32:54', '2019-11-01 08:32:54', '2020-11-01 05:32:54'),
('b4600e31618f972eb9805c7a2ef15255cc3ed139dd56d9f0d75376dacc8f00ec2cbbc30d610cb9e4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 22:18:00', '2019-09-26 22:18:00', '2020-09-26 19:18:00'),
('b4687846829321b92d11df6112740cd1a6bfef88c94e4981c8d9f1dfe376e0de7cb1865eb70c59d7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:12:12', '2019-09-05 20:12:12', '2020-09-05 17:12:12'),
('b47699df3dcd4b56e84e6a684aca76c7f0d3d92b7145e7037db6bea09596ffd3c333fb8433f90505', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 21:47:37', '2019-09-06 21:47:37', '2020-09-06 18:47:37'),
('b48ec7788b015e555cbec26b09ceaab61eaf64ec6348b76c7c9d45669a462c880ff099ba1dc2ecc9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:18:38', '2019-09-23 21:18:38', '2020-09-23 18:18:38'),
('b4dd75bee3be12f786a9463fd0702550ca6449d24b3b6b0f5430b59cf460cdbb13d7ca05def6cedc', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 01:32:12', '2019-10-29 01:32:12', '2020-10-28 22:32:12'),
('b4deac84b11ffe7447b0871be927c207f8b4a2df9ae1fe872b5d6f29cbd7d4572244dffe0f4994f1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:10:20', '2019-09-05 20:10:20', '2020-09-05 17:10:20'),
('b522c488c673dd93a677aab08903e2ef9cecb9ddb5647bf84489ebf184b2c7e8dc0995db0b203af2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:38:40', '2019-09-05 20:38:40', '2020-09-05 17:38:40'),
('b524614a5a5388992ae02776f253e789506e82b92f1f8da75a6e16941441ab5e0d7934baf242b223', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 06:24:11', '2019-10-04 06:24:11', '2020-10-04 03:24:11'),
('b59f057853d0ed494c959f2daf0a09f255dbb765d8c60a8bec3c67df6f6d26127b63b72d89f6eed5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 23:38:38', '2019-10-04 23:38:38', '2020-10-04 20:38:38'),
('b5c394c78f4beaa516f958b0e0133cb85007675378f1560464a80f5c705f2e247bbcf869335bb86c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:35:03', '2019-09-23 21:35:03', '2020-09-23 18:35:03'),
('b665646feaa9fbcc6cd3cbd30538726ff2a47cc97192c1128cec37cd9a89081ce80bc14cac6b7170', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:52:54', '2019-09-30 20:52:54', '2020-09-30 17:52:54'),
('b6ad348f9a6fee433f8b1c6a76af1519d213c54de323026fbb2788e10fa28858cce42d3037c00924', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:16:17', '2019-11-01 08:16:17', '2020-11-01 05:16:17'),
('b71c6869969a4e36615195a580a8f6593ce9ff30f01099af13d05a4dda3aea91bf169e70dcef8745', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:06:18', '2019-09-05 16:06:18', '2020-09-05 13:06:18'),
('b73986e94cc869d8a6f88ccf705bab47bc9e3114f8816aaa88fcba12571c3a39c2eddbc02fd84d4a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:19:02', '2019-09-23 19:19:02', '2020-09-23 16:19:02'),
('b87ab4c34afd4e7182fd897b2050c41868a2f635b49c5dc4a5a68082624bd017c1780f48e9ec10d7', 1, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-10-17 00:14:24', '2019-10-17 00:14:24', '2020-10-16 21:14:24'),
('b8a0d09f5c4e10ab558a08fc6c2c89266420b24e9efdef1cb204c97ebe2175958ed9d624ca3db7d7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 06:28:08', '2019-10-04 06:28:08', '2020-10-04 03:28:08'),
('b8af46ec28a270a0a705df0be5401fee5569e5d6e10ba2414f83a56ac967b2159d576d72680b20e7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:17:44', '2019-09-23 17:17:44', '2020-09-23 14:17:44'),
('b92012eb5a3d44a27fb3800a3c091cc83d69ca26f0e55ac5d9ad224d8a65c65c7ed89d0e119d44e6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:14:33', '2019-10-24 22:14:33', '2020-10-24 19:14:33'),
('b939f27c56e3a42e1eeeb85edc18a692d7603e1ac0904c4f16421253a126179b1e04d74bb1f39437', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 18:23:41', '2019-09-23 18:23:41', '2020-09-23 15:23:41'),
('b97aa5f46235dda300ec1dad9b42935376e5b462692b3b17ec7d9c7601e0409f6213cde8ae47a030', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 07:49:30', '2019-11-01 07:49:30', '2020-11-01 04:49:30'),
('b99876e7f33806f4b4736d39c7b1f37842d02716ee3d0829a5838b3550cb4984b0dc40a5cbd48507', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:04:33', '2019-09-30 20:04:33', '2020-09-30 17:04:33'),
('b9a7d4197e5e5aab93ed301464e268bebc8af157e9b7ae3a073ced2ac03b17b05c8bf2fdc52a7b49', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 21:33:11', '2019-09-26 21:33:11', '2020-09-26 18:33:11'),
('baa0819d93acf8d02a8ac4aa2b90f158d507423be84c574719f232cdf63183e78f5be18b0b0bcd9e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 03:41:48', '2019-10-29 03:41:48', '2020-10-29 00:41:48'),
('bafc299166cb0f4eb71e8c3ffe041e25c55c7a654f3629bd47baffd62c9c22d6af3860291614b441', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:31:22', '2019-09-30 20:31:22', '2020-09-30 17:31:22'),
('bb1217662860757f00bebc14227a2097954fcf5d55c3abcb2f5330ecaa585877dcc3c328a6a3aa94', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:27:49', '2019-08-29 20:27:49', '2020-08-29 17:27:49'),
('bb7999bf0208098550742b1044ff44d9396b47683598a57437f52c45da81dd880a6798c218768158', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 21:37:50', '2019-10-22 21:37:50', '2020-10-22 18:37:50'),
('bbc3f26a1e7df8d5f890f11694983ae949a62aacd2c8cb7abcde32878a0cf6fbcbecdb6f1e0be1fa', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 22:08:12', '2019-08-26 22:08:12', '2020-08-26 19:08:12'),
('bbc7c0865744b8fbac9552d77ba385c235afc83bbbc12e3c47b381a9fec38156691999af72bd6da3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:41:02', '2019-10-28 03:41:02', '2020-10-28 00:41:02'),
('bbf9602b6ddac0375de75907164fc48a050ec61c6f1284e0f6347b8d80fa085471204aae5b16f63b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:12:55', '2019-08-29 21:12:55', '2020-08-29 18:12:55'),
('bbfaca2ba33f9cd3e69cbfe7a528fa5388950e676be272ffdff428609b034e83a9df743635801762', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-24 22:14:20', '2019-09-24 22:14:20', '2020-09-24 19:14:20'),
('bc0135492e7ba870e3779625545223745798f188f433df3cb588354a527228f3c10e5cbd32875f35', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 01:36:07', '2019-10-29 01:36:07', '2020-10-28 22:36:07'),
('bc352e96682329201e03cee4412077136c75f27a79624f4e62ac8013f8c03fa0210b3066002dc1b5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:12:18', '2019-09-23 17:12:18', '2020-09-23 14:12:18'),
('bc4f1f1189cfce0bc0e9aa089c564c60ac3ab749cf8a96b2901ae6d0832e21436f97f561d3c09371', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:52:33', '2019-09-30 17:52:33', '2020-09-30 14:52:33'),
('bc531e4c8940f3db0258c9184f2ba9eec455a825fd16c55654b5c5712087e17b2654eae8a7b68458', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:42:02', '2019-08-14 23:42:02', '2020-08-14 20:42:02'),
('bca17925d20c25c1ad533b99a453c43c1b1b0a1b59a72080da117caa4931800344e1f1c641763d70', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:08:28', '2019-10-24 22:08:28', '2020-10-24 19:08:28'),
('bcd2c2e934a647aba99f6d2408b5ad3e6bf5a3967af61a938e1ea26474fbc7bc06de094d05702178', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:07:38', '2019-08-20 20:07:38', '2020-08-20 17:07:38'),
('bd66ab37fc3440fbec52d4a799bac3ef59c5326d717925a149eea91dfb04e46cff007acd3c37debb', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 19:07:41', '2019-09-30 19:07:41', '2020-09-30 16:07:41'),
('bd81f62e6973728393ac071d4862c0db9bfc3e1be76557884abcffc96d558e5e4a607b3373cf77de', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-15 00:07:50', '2019-08-15 00:07:50', '2020-08-14 21:07:50'),
('bddc99e259e89179720c68b0b162fa5b46865458c58aafc3605ff0e259e57a0074c4cec22547a58c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 19:31:55', '2019-10-31 19:31:55', '2020-10-31 16:31:55'),
('bdf4849816089264aadae3d86e85b6d35c3c6bf43444b139db0de0c9caef8186978bdf46a3d3cd8b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 07:07:41', '2019-10-04 07:07:41', '2020-10-04 04:07:41'),
('bdfb43d913606c36f784760b6a41dfab790b237b7da171c44682b3f0582a28051510a4cecc1047eb', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:42:52', '2019-08-20 20:42:52', '2020-08-20 17:42:52'),
('be10baa81e84e035e19b95c152cb59cd9d5e95c7f1847a4f5391f3e7f6d69153a8e91cdc957f5305', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-25 00:23:45', '2019-08-25 00:23:45', '2020-08-24 21:23:45'),
('be1e1e04640830a52d4105b7c29645cc6f1e8f1ce5176b320db7c283392bda1ec11a9d43600d2a36', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-17 00:21:58', '2019-10-17 00:21:58', '2020-10-16 21:21:58'),
('be5f59b043a6ce510afc73f2ab5aed106973244d854d5c014739d20c1c29ca6cf10879deb61f9453', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:13:51', '2019-10-28 21:13:51', '2020-10-28 18:13:51'),
('be6972250620d600811e014d645485e681b7865030e47d844d2ee23c4bc07462c1acb09957aa0453', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 23:40:43', '2019-10-30 23:40:43', '2020-10-30 20:40:43'),
('bee3673e4a5734c92a8617f190d69374b64db954265a6ecc04333ef7aa20cd7e83ddb31da9c79061', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:04:36', '2019-09-30 21:04:36', '2020-09-30 18:04:36'),
('bee69d639582928cc55fe7ca80c7d182a40434b787e14bcacf797a962f3e9f9f65f7d51986fb9dcf', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 21:46:00', '2019-10-01 21:46:00', '2020-10-01 18:46:00'),
('bf06b1e0e452540a7ffd5b2d01fa49b9057450c1e70bfc40a4ece8ee3a88751d9f0b8352ca747d91', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:17:50', '2019-09-05 20:17:50', '2020-09-05 17:17:50'),
('bf2dcbd78a5e0eea37a393d8c2e94bef7ccf07139003b153abcbc4ae5f12645a9f9917de17a7deec', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:16:57', '2019-09-23 19:16:57', '2020-09-23 16:16:57'),
('bf40680e60f71ae7bbe96884d8ce516c303bc9042393ec0d8a7ab88c51dae02a78741bdeb57a0616', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:17:48', '2019-08-17 01:17:48', '2020-08-16 22:17:48'),
('bf9aef7699423c6e3b3cb600776807d2d25f1bc7b81399ff63f83b3fb898c807178f2cd15e37cb94', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:12:56', '2019-08-29 21:12:56', '2020-08-29 18:12:56'),
('bfc9e8fcd8d02883c929936d672ff291b3f912bcf2778983196991fb31446e78cf84d79bd9c1679f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:28:07', '2019-09-23 17:28:07', '2020-09-23 14:28:07'),
('bfcac6d1cb73b414810bec7b575b2b38f2782048340a50ef014e1ac6cc186a990938a7c6044fffdf', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:38:04', '2019-09-05 20:38:04', '2020-09-05 17:38:04'),
('bfe54cf73cd7dc56e813dbcfd416f3c782d98cffc9939ba0d9387b03976e0828fa14ba03b3c008df', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 19:35:03', '2019-10-31 19:35:03', '2020-10-31 16:35:03'),
('bfe7124174d26d1374d107e83d4eb2058ab1eefdcf65cfbf1f0f2edca042fc28c8ba5dab119a1cef', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:19:16', '2019-09-23 17:19:16', '2020-09-23 14:19:16'),
('c019379ad0982514ab0a1c0f1f877c72c7abf458cfc8ef7d4980853a2caa9fa92ae827872e240679', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:20:37', '2019-08-29 20:20:37', '2020-08-29 17:20:37'),
('c02429a5f8245fe635fcc8cfd58ff7ebf3da016d6afb8f3a8005171b62aa3969433c1d66f3b98fdd', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 21:26:57', '2019-08-20 21:26:57', '2020-08-20 18:26:57'),
('c06ec45921bc517f25f1abe95cf28d37aa34f5caa1b59bcf83d50e06e88b0a5bbb972063eda410f5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:41:22', '2019-08-29 20:41:22', '2020-08-29 17:41:22'),
('c082a15a1201a96e7070280e4c3e9eb711650dc04148756d1aca7b4a70e3503de0fe6e8e2edda6ee', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-15 00:11:35', '2019-08-15 00:11:35', '2020-08-14 21:11:35'),
('c08a8f5f09a7e89a8bbbfd6c855e25daf92a0f629bfdd37a89f46647a627047f50da4da531302f4f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 03:43:44', '2019-10-29 03:43:44', '2020-10-29 00:43:44'),
('c0b5841790d21c69520c2ffb21265996bbbb4d25548d24dbe6e4e5e2f8edfb91a5e339dd73cf2a41', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 21:21:10', '2019-10-22 21:21:10', '2020-10-22 18:21:10'),
('c0ed925fbf7c725d3270a99cde33ec5c655303a797e976b5c5921db99c12ffdb7d0a8cf7a2f4cde5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:38:46', '2019-08-29 21:38:46', '2020-08-29 18:38:46'),
('c10e721c34b91bcd5116581280d3f2e2ab3d0e3c98235a95747e9a8dde95a56067589f1004c00afc', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:39:40', '2019-09-23 21:39:40', '2020-09-23 18:39:40'),
('c179e211e53e5bbe2d414d2f00af5304948c6a6b864ec91ab0bf4654a9a3470a75a824a7ac299e62', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 05:59:23', '2019-10-30 05:59:23', '2020-10-30 02:59:23'),
('c18e43e1ae31d5ab5b5be19db830d86cb8fe1e51ba32509804f3cc56ef22bd1a3a04ccc4a9efe20a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-09 01:59:42', '2019-10-09 01:59:42', '2020-10-08 22:59:42'),
('c26770d2825a2b2f5b8f30115d894d273f23c48ef34aa4e2afa52e586224d434cf9e572a54ba4985', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 19:36:02', '2019-10-28 19:36:02', '2020-10-28 16:36:02'),
('c2c34797a43547d400589e83b52f9b50daad96ca417301950ef38245dc6f57e369daeb097c4e641b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:35:10', '2019-09-05 16:35:10', '2020-09-05 13:35:10'),
('c2ee9964d6f00e0e2ffff1beb9eba94b0f1daa3f2d4c1d1ba4445f449db3c3e38e79500ca24d691b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:13:32', '2019-08-29 20:13:32', '2020-08-29 17:13:32'),
('c31c5b19a8205cd0c0807bdfb5b7c378de44f0c1f5c959a6d4a7e8a9e1dbde6e2e17649a6b1a0f68', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:35:40', '2019-08-20 20:35:40', '2020-08-20 17:35:40'),
('c344cbf711643cc5def77f91c71d90b087c78726a872ad066c91bee30fefe8d9c118f1f692abe24b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:29:59', '2019-09-23 17:29:59', '2020-09-23 14:29:59'),
('c355ff93a3806e65ba6dbd55ae211c589d9c58d26dcccf5d1c4b5c297a11bbf2629feb73e962b3ac', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 19:08:58', '2019-09-30 19:08:58', '2020-09-30 16:08:58'),
('c39a7f79685e2bc53454a29456d0c93d57982d2bbd55afcc502a269e17286f158fee1ce2f328ffe1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 20:32:50', '2019-10-31 20:32:50', '2020-10-31 17:32:50'),
('c3d408587ff8667b68c0d2c69433e45db98d49e693197d05025bd9c4d72f8fdccde43639898249d5', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:37:42', '2019-08-20 20:37:42', '2020-08-20 17:37:42'),
('c3fb38b18e4fdfef13ae3932362ebc88849ee4392e8483e0e154592ca02e432dd2577c05a2caef14', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 17:16:36', '2019-09-05 17:16:36', '2020-09-05 14:16:36'),
('c42d4de8621bd89503ffbd6692ebad4534d2eff5473f2797fe17de7c8e1d86dbc2e1d11f101f899c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:07:18', '2019-09-30 21:07:18', '2020-09-30 18:07:18'),
('c4387d1f6150e24b5b7cd6456ac82848b27dad99ffee3cfef1a21054914945ff7c4b643d2774adbe', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:29:45', '2019-09-30 21:29:45', '2020-09-30 18:29:45'),
('c463e5a8ef52d366a63669bcb99396db26938a24eca7976b8116309f9959d69e06327f340d179577', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-15 00:08:34', '2019-08-15 00:08:34', '2020-08-14 21:08:34'),
('c4de1a16a69f6fec2d1da8ed1479a42c748d0d237eee15eccdbccd96ab04d4bcf49c9e42b9c77577', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:00:19', '2019-09-05 20:00:19', '2020-09-05 17:00:19'),
('c4e43c2fd289ee3992bf67b339c49c684ee2dfb39f7312b52fa1a25952d8ad2e58382640759b6fc4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 01:35:41', '2019-10-29 01:35:41', '2020-10-28 22:35:41'),
('c5480dd0ceda4e56a74a6f5ed3e5e543ec1ed0a0b98c92074889b382a041e27e4e1c931a73f35ce9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 22:00:27', '2019-10-22 22:00:27', '2020-10-22 19:00:27'),
('c55eeb3583306821c71d608f746967e6c24a46a6921400005f41616950a27c16ebfab586eb575772', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-23 01:40:52', '2019-10-23 01:40:52', '2020-10-22 22:40:52'),
('c58b56fed16a638456e74a410fcd14b478b8dd2c2f4b0e5a298d2e2b306c927248e3f16be0764e65', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:19:59', '2019-09-05 19:19:59', '2020-09-05 16:19:59'),
('c599f3dad306bc58b4213c3b0943d497cbc8078521fe7d9c5155ad08454af5a5b87eb6148b549939', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 06:58:54', '2019-10-04 06:58:54', '2020-10-04 03:58:54'),
('c62bf93f8e1cf2db527300d2b812dc5bdb4ba69fd7a38366a1ef6afe5ceef2e291a446b7b356ba4c', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:38:56', '2019-08-14 23:38:56', '2020-08-14 20:38:56'),
('c692785e21764494c0f52036beb384c2abe568804dc99ab8fbe5a879bb21009d12515bdc0aa1a286', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:42:15', '2019-08-14 23:42:15', '2020-08-14 20:42:15'),
('c69570c6e8341236eb98034ba481e8972da0c5673f123584b341a09abdb1783113cfe1113dc5ce74', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 01:32:44', '2019-10-29 01:32:44', '2020-10-28 22:32:44'),
('c6e58bbc5d155db69beef1ca121cfbe84eafdd7299e2c9917e1a861e8655e3c3c1faae16ba40295d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 06:21:24', '2019-10-28 06:21:24', '2020-10-28 03:21:24'),
('c6f6b7eb24f0fac165d0e23c63bfad313d8a4c379e2c1738a87dae4e97c14b9bcc3d7b65cbaa7177', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:11:18', '2019-10-28 21:11:18', '2020-10-28 18:11:18'),
('c70657f52a1d61d4ab183b1601334d7b9f0d9bdd67d1cd5efe862688d6f007ffcdcee29c909656a8', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:26:48', '2019-08-20 20:26:48', '2020-08-20 17:26:48'),
('c74804a0b3c7c399f6ffc38dc15b01e8e7b36ea50137064eacfe4bd41c4fb9afd1549234d8cde27b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 17:07:13', '2019-09-05 17:07:13', '2020-09-05 14:07:13'),
('c7547403a54cbfe98a77d48932089e92c86ac524f10ba47ef92e156f1232a5cd6c452932a5df8d33', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 22:50:13', '2019-09-06 22:50:13', '2020-09-06 19:50:13'),
('c75d6f975757f5cbc6d74b801b61e1911cb0451d4724e4ba9e1b24d81415add977ab2181f19be8e8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 17:12:42', '2019-09-05 17:12:42', '2020-09-05 14:12:42'),
('c75f49bb5bb4e26d570ff750bd95910173a25723e5f24ff33dd03cbdc885e5304f6c7ea6ce51ecdd', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:11:54', '2019-09-23 17:11:54', '2020-09-23 14:11:54'),
('c7c44eb0c53fd30dd678f555138a65703d20a8d83e7ce49f5e4ce64dc74c174fba1a4972de227bf0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:52:54', '2019-09-30 20:52:54', '2020-09-30 17:52:54'),
('c7dfe3f960ec5b0a197834b3e64730c8bb85fd56eba3efdc106ea1bbd75b62a532a7824095c9b4bd', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:39:08', '2019-08-20 20:39:08', '2020-08-20 17:39:08'),
('c83bda2c0311784c119efac317548b31ff33659a95249cc00aa901bfd2417cfdcfb41f9c6070f8d3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:18:46', '2019-09-23 17:18:46', '2020-09-23 14:18:46'),
('c86829709ae22e3a5e1ce310f7f2a263741d1aa6d7c81ae709a69b72a30bd2d4bf199febb8efa774', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 07:09:46', '2019-10-04 07:09:46', '2020-10-04 04:09:46'),
('c899402246d69e1001adda32c7d821f4b7f0f5fd6f5915f66324631cf434b3a518e945578928f022', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 01:32:12', '2019-10-29 01:32:12', '2020-10-28 22:32:12'),
('c8cbef0892dda12b59d99c76fe99007787e74432b1890635e3a5a2a1fc2e93082c8978b48a4a9583', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:19:21', '2019-08-17 01:19:21', '2020-08-16 22:19:21'),
('c8cd195a0895b3d5cade26020244636794c4957040d82a62624ffad459e0664a68baab1d091d19f3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-23 01:42:30', '2019-10-23 01:42:30', '2020-10-22 22:42:30'),
('c906128a0b64c00abd0425a9c50a7080f13a203b6ab8cceff339a3aed579e8ea98b198178bdf05ae', 1, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-11-01 08:00:23', '2019-11-01 08:00:23', '2020-11-01 05:00:23'),
('c921365c7efa4d5ec561fe67145f15d751c15d8f8b8ea090e56611904f2c8026e6b43cc887f47f22', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:14:00', '2019-08-20 20:14:00', '2020-08-20 17:14:00'),
('c96e030cbeb375a695d6d42e1206b5ece57d00c478bc9f27465d63f944960f9953d1375ca56d9a0e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:18:26', '2019-10-28 03:18:26', '2020-10-28 00:18:26'),
('ca2dd1899c876a933feccbcee41afde83248b90620e50f1e79961d613d4a0e082e3729154a156b21', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 19:36:10', '2019-10-31 19:36:10', '2020-10-31 16:36:10'),
('ca98c24939e25f1f7f759ccfe03714ea9a2292a3b5ff8267b523e5c6aba752047b7f64295f877c31', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:37:37', '2019-11-01 08:37:37', '2020-11-01 05:37:37'),
('caa4e4019a0ed7da056a51a6286c03d3836d1311dedb65cb15e87b48efac43acb2c04e0e100534ef', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 17:14:07', '2019-09-05 17:14:07', '2020-09-05 14:14:07'),
('cab907e11414d625b4dc6b3c22d2f359177a71bdda38a821c97919e477e621351dbf1a2559e62bfa', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 18:34:30', '2019-09-23 18:34:30', '2020-09-23 15:34:30'),
('cacf5d3a57eb93a4bdca51219c87de8d67aef415820842d67d395c0e8c92ad61d951328d8b4457aa', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 23:44:13', '2019-10-03 23:44:13', '2020-10-03 20:44:13'),
('cb5bc267fd9b5cd982f5f473629941af34dea31fd2d4658d269ddaf796a9d642213803c32aa5339f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 04:13:22', '2019-10-29 04:13:22', '2020-10-29 01:13:22'),
('cbac6a6acfbdd943df24a35b5ac1375f20fb71289b922f0ffec0066d490dd9b5e81d983c4ead6d20', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:30:13', '2019-09-23 21:30:13', '2020-09-23 18:30:13'),
('cbbe484919948775e809ffb1c349c42398c4a4ec80c45f1645d5585927413982a687086ca116f15e', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:22:46', '2019-08-20 20:22:46', '2020-08-20 17:22:46'),
('cbf4919b284348fd623a2617fdf6f56ed986d523e590260bb3d2e5fbc423a387fab6aafffa10ce26', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 06:01:39', '2019-10-30 06:01:39', '2020-10-30 03:01:39'),
('cc09a232fd0727475d883375c4c774421199bc963da002710042249475859000ba7b43d0ad6a6e4e', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:11:58', '2019-08-20 20:11:58', '2020-08-20 17:11:58'),
('cc4fae740dfcc8761fa77e076af5d4edc62fb2b87314c231aa7ee289a13d15d5165dbbd99014a03b', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:04:19', '2019-08-23 19:04:19', '2020-08-23 16:04:19'),
('cc944fec24da5cb724ba32406e5682fe8ad7297a2a5be983475c7e5a0f94bce5d7f672ea8a9de897', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:24:29', '2019-08-29 21:24:29', '2020-08-29 18:24:29'),
('cc9b14abd37f1fd41c9b2d8255d39747a9b7cfc1d4a3de13c94bdde048cf68d741f4665707fe559c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:30:10', '2019-09-05 16:30:10', '2020-09-05 13:30:10'),
('ccdf9a4a09c7531f10339aea28187cd04ebea0cf4df81eaef616489c1bbabf4575e68b6492ef31e0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 16:46:53', '2019-09-30 16:46:53', '2020-09-30 13:46:53'),
('cd280504ce2bbbfe2819a2cd5f10c3afd16f1f71ad9a9e7939067ddb562ba8512e2c5c9bf7844530', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:13:53', '2019-10-24 21:13:53', '2020-10-24 18:13:53'),
('cda3908fd1c1525ec63ffd0cb3985068bcfe1726102319a5ad5b8ec23602318fdee6ecca599ceab4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 01:42:14', '2019-10-28 01:42:14', '2020-10-27 22:42:14'),
('cdf3963097a7c08a654f911f3079ace8364715630c1d311144f93db99436c665f164324979fa7d06', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 22:51:06', '2019-09-06 22:51:06', '2020-09-06 19:51:06'),
('cdf7ceac7ad3d7575b4ba8c4224dd276a6f9ed7ce28401d872821cec1510a95b28ea72b03af21e64', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 20:46:16', '2019-09-23 20:46:16', '2020-09-23 17:46:16'),
('ce17f46b917671263ad75de0a021d8c7d38af62db8db13343922e0adab254c5811d0d404724b5617', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:17:30', '2019-09-30 20:17:30', '2020-09-30 17:17:30'),
('ce1ccafcdd5a7a588042445f1ac76e7f76ce65d7dc2e5d6ea5a692806a85c92d21635740d05b03f2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:46:23', '2019-08-29 20:46:23', '2020-08-29 17:46:23'),
('ce2996fb594a04b0593d7b9dc6c3f29e4fa33ce5dad3b3dd1149f0a5a024fc89dae019196647a5b9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 23:01:24', '2019-09-06 23:01:24', '2020-09-06 20:01:24'),
('ce392ff6bb4712022fea21e5829284c69339858496cb53581ed831a99f94830217fb0be057d8c144', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:24:55', '2019-08-29 21:24:55', '2020-08-29 18:24:55'),
('ceafffd226967ffdfab2be76a000b747ad11954eb0539096003e40fab1c1bf1e511a5728375aea64', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 20:45:55', '2019-09-23 20:45:55', '2020-09-23 17:45:55'),
('cede7fd5c25f32d25bde1d4c99e14d12b0ca2cc5118dda9d9ab81fb0b9041c2eda460df9b649ad32', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:24:13', '2019-09-23 19:24:13', '2020-09-23 16:24:13'),
('cf77f35780b6543042ab5033ae2182859dd32b8229552827527e2a4f86b13fc3b5d6b1c23793a91d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:34:08', '2019-09-23 17:34:08', '2020-09-23 14:34:08'),
('cfa737065ecf8c8ab4c1848578431339fcc13248888a66fdefd5281ba1dc6cda3d866544d6e0e898', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:50:49', '2019-08-14 23:50:49', '2020-08-14 20:50:49'),
('cffa0fded5e87b4fbeabf7c429686fd4d746455797038b393ef12a0aca371961c66976bceb5fd7cc', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 00:25:48', '2019-10-27 00:25:48', '2020-10-26 21:25:48'),
('d009c7440b979b573ce5e637b1b0cf6b20fad84ddaefd9d4e7b55c7cc39e1095dfbf6ce9992fe0fd', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:20:56', '2019-09-23 17:20:56', '2020-09-23 14:20:56'),
('d02dcc6a8b5f4a9245faa7063a5f9e5cc99360ddffc989850ae9fc06a16abd19b6a505a16619bf66', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:18:13', '2019-09-30 21:18:13', '2020-09-30 18:18:13'),
('d0450f9a311ccdc12929031585d12d418b6efe7caa09f64a71edd5c9cdd695678de10d049b5e78e8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:30:23', '2019-09-23 17:30:23', '2020-09-23 14:30:23'),
('d0a15c7354bd091f9b626ab1311f1c042cb262f11a3046465ba79a8e03e16e179483c16fc5a3933a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 21:41:02', '2019-09-06 21:41:02', '2020-09-06 18:41:02'),
('d0a19976155cfc76febe97d0ce7ec6ae193f08dbed8c01a1507fdf2c7299c7d89a3db4dc202b9a7b', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:04:09', '2019-08-23 19:04:09', '2020-08-23 16:04:09'),
('d0a985385d227368f2c8a3ed7d49ead87cac630b15de3ddcec0bd0a9253580eb502a9a67ea9ba855', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-09 02:22:44', '2019-10-09 02:22:44', '2020-10-08 23:22:44'),
('d0d00ae9f5cc1a35546d2ec3dba5f2e70ad7264213406eb18fe983a2fe80f8584a7819a9708303f8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:16:27', '2019-10-01 01:16:27', '2020-09-30 22:16:27'),
('d126a690b1840cfaa49ef72f3e1bfab9a60f163c10277fabf6f117453bae9c69455ac966f2edfeda', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:17:59', '2019-09-23 17:17:59', '2020-09-23 14:17:59'),
('d13674f32cdc9797ba4ac28cc8189a7b988a05d6d02aee4498342060d71d4f617f3561b538219503', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:33:46', '2019-08-20 20:33:46', '2020-08-20 17:33:46'),
('d18a79c1afbf7ddb922597dd0395ebfa66b40dc8f710432a35103d73bd091aa125b9125281272d2a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:17:22', '2019-09-05 20:17:22', '2020-09-05 17:17:22'),
('d1a8dd435b1154cff77a5647d3dc3cde8dccc942b5a08556456d6b87cf3ee55548f1380b561ed543', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:06:27', '2019-08-20 20:06:27', '2020-08-20 17:06:27'),
('d1c417eb15517a50444b39b2cf186e1b1637e870f46f9027c72297f652058f66a448308ef731d57b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 06:19:27', '2019-10-30 06:19:27', '2020-10-30 03:19:27'),
('d1ccee946eb50152b30fff6602dbdf70b165eacff846d4d213e92b47aabd76db97be14b0406b1666', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:25:58', '2019-10-24 21:25:58', '2020-10-24 18:25:58'),
('d1d45ce08e395e2649d59f355eb8079311550788ea197f588a5f377fa9c489461f48570c2ca58a14', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 17:12:28', '2019-09-05 17:12:28', '2020-09-05 14:12:28'),
('d23f425bd318962ef131a8ee42fa2568d070891d62e7ea10ae262ff337abb04f71b66c281c9cd780', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:41:06', '2019-10-28 07:41:06', '2020-10-28 04:41:06'),
('d28dec195cece3ec9f0fe0edbdb6388b78bcdfceaabc8657819275f5f8e513b243046c5f39328306', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 21:38:34', '2019-09-26 21:38:34', '2020-09-26 18:38:34'),
('d2985e3a332d3ac5a7a14a0f5eb02c3fc96d2a0f81979305a8314a9aae3563331e07b017a572b750', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:29:17', '2019-09-23 17:29:17', '2020-09-23 14:29:17'),
('d2c7c934ce465947ec077606bc90ba8b7de3fc1cb4961cadec5652ab7959e1bb423ac7f6dcd27066', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:28:08', '2019-08-29 20:28:08', '2020-08-29 17:28:08'),
('d2d6bdebddc8ffc7fcc76515f3d77472188a9bb08648fd29a9b52078097c383a56e6e258fa84345f', 1, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-10-03 21:24:55', '2019-10-03 21:24:55', '2020-10-03 18:24:55'),
('d2f0d2b68290e0cce7124378383afb965c49667c95e747550accfb3c3574f4b4702aaa6dc749dd78', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 23:16:36', '2019-10-27 23:16:36', '2020-10-27 20:16:36'),
('d337cacf6606aee5479d370c8db1ead0c07cfb11081a11c17b55d81aa2339595ec7fac966201a401', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:34:19', '2019-09-05 16:34:19', '2020-09-05 13:34:19'),
('d39d4d1186205b6c0a016af7fb0d69c3734fe2a6c3b7ab78d09df2ec8da90f130b12e609bd7636e7', 8, 3, 'Personal Access Token', '[\"tecnico\"]', 0, '2019-10-03 22:23:14', '2019-10-03 22:23:14', '2020-10-03 19:23:14'),
('d3b194a50059da85e02fc91352206071fab2f5c955199b35eada7bf34a1c15c551b180ecb0355bfc', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 18:54:01', '2019-08-23 18:54:01', '2020-08-23 15:54:01'),
('d3ba6cf6b29b41117fc12de33636fed042f65d09d95d028492bbd482e6230521102713df67692b22', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:02:09', '2019-09-05 16:02:09', '2020-09-05 13:02:09'),
('d3bc4100fe155a5506344b1f982eb69761ad163687b03f328d40037833ad473b52d03f565bae76f0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 21:36:39', '2019-09-26 21:36:39', '2020-09-26 18:36:39');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('d464d8aba0ce90566b4b9567924abe8b3b27292de611ba7d6774c7e356ba78351342b7ace3db41cd', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 00:31:46', '2019-10-27 00:31:46', '2020-10-26 21:31:46'),
('d48392fb0c7b7cab5b8a026fe598ef7ee79c71827a6953447eae09bfe1cba224b05f74a99a9f7a41', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 22:07:34', '2019-08-26 22:07:34', '2020-08-26 19:07:34'),
('d48b612ab016cd813ac3e4ea845b654ecf53eb1be3910d224c3dd661bb6fa0bae6a56bcdc332734d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 23:07:02', '2019-10-27 23:07:02', '2020-10-27 20:07:02'),
('d4b9bd52a1765666fa7a0873539628ba9041a6d1a04776e99da6c52c3f0d2207e281a67d4c2f701a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:18:34', '2019-09-23 17:18:34', '2020-09-23 14:18:34'),
('d4c4b2c8fa42939b429e70ef17e0c0dd1f543f7f9a0eec528d0ab40a2d2563805af5948702ccd998', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:19:20', '2019-08-17 01:19:20', '2020-08-16 22:19:20'),
('d4e88982d5919b46f858bb1cb6da8cbb9398c4cc3948e5c8ee2796248480743046b9a6a21af632ea', 8, 3, 'Personal Access Token', '[\"tecnico\"]', 0, '2019-10-03 22:12:34', '2019-10-03 22:12:34', '2020-10-03 19:12:34'),
('d52b9e5f05845c7a7110f40e807da7514038f582113e8f3b4bbebdd94e78d4c1cbb83552db950bb5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:36:30', '2019-09-23 19:36:30', '2020-09-23 16:36:30'),
('d54860c1b840d66ba17c81c93c718ec0eedd7aee55ea4cac6c5908a8cb9ec1310fe1284d4e4aaca8', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:38:01', '2019-08-20 20:38:01', '2020-08-20 17:38:01'),
('d56ac540bc2082e1af3b54ff79682d4bdf8f6cd9f9fc5eee1e57451be4991011193eac6bd1ea29a1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:07:20', '2019-09-05 20:07:20', '2020-09-05 17:07:20'),
('d585615477b9f76fd72dae47642bbf16e7d5702cfabf83479aee1dbdccf8307d417bda52adc18dec', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:42:42', '2019-09-30 17:42:42', '2020-09-30 14:42:42'),
('d5e516b86723f0ef7eca83de83e0e18cb2d196e17462ba27575fcb199226806b78b4b132a8f39147', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:15:47', '2019-09-23 17:15:47', '2020-09-23 14:15:47'),
('d5f77dbb39cc5db3882b2da17cecec0dcb2ab772eacae75dea41f8b5b8082a5a8470f0ec58f8bd9c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:42:34', '2019-09-30 20:42:34', '2020-09-30 17:42:34'),
('d615010138a66a3b4546a9ae42c9f2214a3a2007622c600054282df42142832dc8a903b866a4400e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:06:21', '2019-09-30 20:06:21', '2020-09-30 17:06:21'),
('d62a7d5c862cdf47dda3f1486c1d524357ae9c02329cee621402f8c4f9a729457c0c1ea926701823', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:42:28', '2019-11-01 08:42:28', '2020-11-01 05:42:28'),
('d652de46fb55c07f47c835d6e2243e8f1d509c761added87b80b5d2dda7151fd6deaf23c150fae8e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:17:09', '2019-09-30 21:17:09', '2020-09-30 18:17:09'),
('d68675352b40ff74af23c6a8183fbaf48bfacd4b7bc62132f3c2cb8783a64295c3c675ce69905368', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 00:09:35', '2019-10-31 00:09:35', '2020-10-30 21:09:35'),
('d6b71f9a27cdbc2f28587be2419d87c3209e548f26f8a6a9f3669dc1d70cf6b419563fb09c2e32af', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:13:17', '2019-08-20 20:13:17', '2020-08-20 17:13:17'),
('d6eaadd0a27258be97e3e2ef4b50a5bf465ba671092d7e67341cf80ebed6a1b70487b101b0f07302', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 06:42:58', '2019-10-28 06:42:58', '2020-10-28 03:42:58'),
('d6ec9d06af927a23b21afb705f2cc3f1006ac5faef230b710fdda2d7234adb66ba602993813f1b02', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 20:46:02', '2019-09-23 20:46:02', '2020-09-23 17:46:02'),
('d75fae3c780d42201b927f9869a60725616498b383f4eea0f05c69164759e18be07ccd4cf00071d0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:19:35', '2019-09-30 17:19:35', '2020-09-30 14:19:35'),
('d76b3644c3a6980d2758214193ac02fcbe8ff4cfd6d9000575db22e5271eb8a60a252d134d19d7b0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:09:57', '2019-10-28 21:09:57', '2020-10-28 18:09:57'),
('d76bc8ca5886ecc51eb5cec7330652e570ca5246300bf463ad614b36aa8aec187a5fa29dfdd4efa1', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 18:54:02', '2019-08-23 18:54:02', '2020-08-23 15:54:02'),
('d78d8c396868b419624a039bec9eeddce4f7ad5d7e5762c7bbf54f6ea7235272de9d8ad4c80e79fc', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:45:58', '2019-09-30 17:45:58', '2020-09-30 14:45:58'),
('d7c834ebb95a10f53c4e42aaeff122c721038e80ffa997a5a2c8f85a1cc34a6ac6fdcc1939f273af', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:38:45', '2019-10-28 03:38:45', '2020-10-28 00:38:45'),
('d7f19a898f52c528564789344dbd9fece7f571544ba684a984fa72208ba21e31bf22fd2f5b0dc4ce', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:55:07', '2019-09-23 19:55:07', '2020-09-23 16:55:07'),
('d8198fec026f92cda30fadc20ad754b0a6522b0b05fc0056ec9fa9746a3ca67916aa88b71311679a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 17:13:09', '2019-09-05 17:13:09', '2020-09-05 14:13:09'),
('d81dbb16fe12aa59b7797c7d30248efc13b995294f201fe32996a0e2bd09a6bd2840b36436abcdce', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:21:31', '2019-08-29 20:21:31', '2020-08-29 17:21:31'),
('d8574287f8e48a9e23d87316103bd3a066a570b2ba63d079c91aa86ddbe261b0d254be1d3f9cd1cc', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-24 22:16:06', '2019-09-24 22:16:06', '2020-09-24 19:16:06'),
('d87d369cb7ac700078b3a378286a328936cae020f397c76079a02048fd24d7eaa04f303d40b8532c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:27:58', '2019-09-05 19:27:58', '2020-09-05 16:27:58'),
('d8a2cff0ae5e9344866fb6bf35f48167a947f7220e38ab00b1ee0729fa900a113f5b72e8af9fa086', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:43:16', '2019-09-30 17:43:16', '2020-09-30 14:43:16'),
('d8a556042732284e7e6a7c083d36de45ac2b97989b16d60b5945c082b4c39dd059aa5cc9d0dc5b15', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:33:55', '2019-10-24 22:33:55', '2020-10-24 19:33:55'),
('d8bc4e1a27ac1700c84bf0e8970feb90c96df456d4008e52f82b97054edb4d117739922315e891c5', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:32:02', '2019-08-20 20:32:02', '2020-08-20 17:32:02'),
('d93a4d21487a7fc366845399cf27e5db6b3c27cd45e009379c0a7bf1c42878978247a2caea6f37f4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:33:53', '2019-10-01 01:33:53', '2020-09-30 22:33:53'),
('d94b859872cc3ee4c2f7c1c432d3f359fc71f9a73851c527cc12a38868c5f2ee63d2323e29c01156', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:27:35', '2019-09-30 17:27:35', '2020-09-30 14:27:35'),
('d966172634c44e6a7a0adb96ce9b9ad7dd4511a23d5dbe8e78c9d36cd15c62b083bfd8ee3c0c8b96', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:30:17', '2019-08-29 20:30:17', '2020-08-29 17:30:17'),
('d97114f2c037d81a4a4009c7b0696c4e0e208146302040c11b89c41c8bebb270d4de053c7ad2b140', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 06:25:05', '2019-10-30 06:25:05', '2020-10-30 03:25:05'),
('d9799e7c1e7a458957e544b9d071fc1ab2f789aa6b2aaaf4a75bd91d21073e4a077b5d8f0f7da6c9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:43:41', '2019-10-24 21:43:41', '2020-10-24 18:43:41'),
('d991d7e80cb50b1c83678209f377bce6fd3260d034491d0c2c3727e566319d47fc02ac24fa06c7de', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:08:03', '2019-10-01 01:08:03', '2020-09-30 22:08:03'),
('d9ada8b7719e778a51419b438d5a0f4e3f1fc46cfba0837ec111c43c99c90a1f6952954eaa472845', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:04:15', '2019-08-23 19:04:15', '2020-08-23 16:04:15'),
('d9edc7d9fcd7516d542b6f494182beb8c5a928cff8ee9f425d6600073daf6a313f1a18a7d44d1c54', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 21:12:56', '2019-10-22 21:12:56', '2020-10-22 18:12:56'),
('d9f4656285450224f4c9153e193530531b79cf8a3021484e08baf2e39dd9935e4f6e0995e8d233fa', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:04:13', '2019-08-23 19:04:13', '2020-08-23 16:04:13'),
('d9f56c6878eaf5d31afc42d50cfe706e6e773f7bb706732b21a43e863bd54be0e086728d1689b69d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:55:06', '2019-09-05 19:55:06', '2020-09-05 16:55:06'),
('da07d5f53f6c42cd83978f9135cfc2390c2d112bfa1b89744c0d78cbe3aa9f8a0c601b42cdc33d1b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 21:15:59', '2019-10-24 21:15:59', '2020-10-24 18:15:59'),
('da21676e9326ec090cc52ff49861ad716a057e556c53bc88b536ad8420552ce74a4aa51530f6dbdd', 9, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-10-23 01:39:10', '2019-10-23 01:39:10', '2020-10-22 22:39:10'),
('da53ca1c145d9605ded46fb2cac710129d70dd073c5a56276aa2f7b4703cab7d4e32ce70e17f8d54', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 21:35:13', '2019-10-03 21:35:13', '2020-10-03 18:35:13'),
('da660629d2caf18a890d3f7f8dd8e168cdb83dae3f5a843abd2f2b9925f1c47a93a8d1f7a04aa92c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:43:36', '2019-10-28 07:43:36', '2020-10-28 04:43:36'),
('daa6b625ccbec58007508c8aa6b9e92fa73bd5ca8c00ecf1397612f81064601902205afd9591071b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 06:54:13', '2019-10-28 06:54:13', '2020-10-28 03:54:13'),
('dabbffe713b586cb2dea94abdce9b6264b34814f82d8190280bc78c1cb0381829342b8d5333cef35', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:37:52', '2019-09-23 19:37:52', '2020-09-23 16:37:52'),
('db078d2b9f7909395b3bfc5ee377d4cd78d7adb7949704d83fb09bcb4fbec6c3e2fba3abcd8999ba', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:42:14', '2019-08-20 20:42:14', '2020-08-20 17:42:14'),
('dc3b2497a5e233e9826683b9a9a1a2c5243c0f11534b822fda0d8746da682d671ec0e0558a4e1f29', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 03:27:44', '2019-10-29 03:27:44', '2020-10-29 00:27:44'),
('dc6c4dc6d863302b7adaab53ee81ce4303012d7fa8382eaeef27024919670b06e1e3c96389557c02', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:24:31', '2019-08-17 01:24:31', '2020-08-16 22:24:31'),
('dce5891be9138dc3869523db0d89dca639be2f0db6302225a9d4a970f9bff1599bb3a9eb18693f54', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:12:00', '2019-08-20 20:12:00', '2020-08-20 17:12:00'),
('dd052bd76107bc908e39f172776fddfa25f66b730ac8e6bfa1942a6d19b5a08f46ed78a8d059a4ee', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:24:01', '2019-08-29 21:24:01', '2020-08-29 18:24:01'),
('dd277c37275528e859d0c0e62ee51a404db0b8083008945a426f70c023563c89e0a205e2ab28a5ef', 8, 3, 'Personal Access Token', '[\"tecnico\"]', 0, '2019-10-03 22:23:24', '2019-10-03 22:23:24', '2020-10-03 19:23:24'),
('dd3c42860b25db10b732d5b9286f45ba84d30819ff5d7bbb10bb13d04374aaa58648ce8dbb425579', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 21:55:32', '2019-08-26 21:55:32', '2020-08-26 18:55:32'),
('dd46b5177e6efa0e97829d3f92d3e716ede6588afbc81560b20918a4be889af9392c6b9a4b42ca21', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:42:10', '2019-11-01 08:42:10', '2020-11-01 05:42:10'),
('dd660f694bcdaebb66eac9c3aed27ec8a5e81837fb45bb8823b10e25c8829a13bebd12e51c84fa83', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:27:25', '2019-08-20 20:27:25', '2020-08-20 17:27:25'),
('ddd7ebba979aaf958255323bc299a5881a01743cd6e00adba9f546a2f7422e3f8c0f8a474e4bc105', 1, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-09-26 21:29:37', '2019-09-26 21:29:37', '2020-09-26 18:29:37'),
('de31a6007dfbc01f0f6532595c6273d0ffbb80088d0cc447421dc2867c5fa78069956f8218338f57', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 04:09:45', '2019-10-29 04:09:45', '2020-10-29 01:09:45'),
('de374e0992eb950e29798f59bceb5ae4115b5773e2b8460879d98ae33396c39a343d77c0d8f134cf', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 21:53:07', '2019-09-05 21:53:07', '2020-09-05 18:53:07'),
('de616a13e78e5beedf98eef290a6793128cbbeb0516bc8c3f051c1c154b00a7cae8440e9d9e3807a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:13:31', '2019-10-28 03:13:31', '2020-10-28 00:13:31'),
('de73ed99b8e3f79609b56fbce3dbb4c762913b27540163ac69329fd530a31350003a910d72b0b1f4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:39:04', '2019-10-28 21:39:04', '2020-10-28 18:39:04'),
('de79b1ed044a8f9dc496f307e8f41f8c8bcedfbdceb8ae7cb8430a56ec880e835e62671bcb540600', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 18:53:59', '2019-08-23 18:53:59', '2020-08-23 15:53:59'),
('decfe6ddcc66ac273c894434d727accdd4aa293152713d104cbae364e302ca3eca3fe90403e7c5a4', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:42:16', '2019-08-14 23:42:16', '2020-08-14 20:42:16'),
('dee1c5d6ebfcbcdfa860564080dd12896cb9dd9a12522e41ff2c470ad923a98a5c0cff7e8748bf8a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:22:17', '2019-10-28 07:22:17', '2020-10-28 04:22:17'),
('dee50ea0e2e50bbf9f94fcd0229b0fadca565c88a367d8375c8d4ad776f7c5117df5aaa43afbb0f1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:15:31', '2019-10-24 22:15:31', '2020-10-24 19:15:31'),
('df6c14212ffbb2d05e2db0f5b9155d19ab5b1dccfc9d3c909f429385cb021447d6b59fde687888d0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:15:57', '2019-09-30 21:15:57', '2020-09-30 18:15:57'),
('e02b6338ca922ee7d192c7e06a37399ee1534b769cc2f9638fab7cc5073fb0a35e87acb9ab2d1397', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:26:07', '2019-09-23 19:26:07', '2020-09-23 16:26:07'),
('e04fd9a49266c17c1c1052b7a2e144ac99e886a31f9b65c8b94738fc5f2033fc0591c82700b4f9cc', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:41:46', '2019-10-28 03:41:46', '2020-10-28 00:41:46'),
('e0609f24e583229eb87873f4e44df3bb590b2811925f82cfa3b1923664b7d851f705963ad8704721', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 00:25:53', '2019-10-27 00:25:53', '2020-10-26 21:25:53'),
('e07866fa7918ed800d3e6073098271ac5e39cf2b785baaacc000426947741945cf8e4fcc08e13ba0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 23:47:03', '2019-10-03 23:47:03', '2020-10-03 20:47:03'),
('e093109110c41f7c06530e89dcf3f7be97795c81544a3d23485d5551ec00970e6e85a7fafdecf750', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:31:41', '2019-09-05 16:31:41', '2020-09-05 13:31:41'),
('e0b847d3e84c54cfbe9a9b0e4b8fe9f15aa63af85c7b48013af00f883644dc2a6a026dd105cf3457', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 19:35:45', '2019-10-31 19:35:45', '2020-10-31 16:35:45'),
('e104d7c8d3efc0c906819e8129d0286511f561aa0ca3034c6246831268aa29617ba183ebf64d5893', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 20:43:04', '2019-10-31 20:43:04', '2020-10-31 17:43:04'),
('e138f94cdcd76f78b3a11ab949a1a8c576266e269e668ca9918332670df5072337157f9dfe936902', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 03:34:40', '2019-10-29 03:34:40', '2020-10-29 00:34:40'),
('e147ac58aec8f17348c3e1207d52d4246f355cb9dcfc8a845319933a537b93dbc3967ab289e24a65', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:40:32', '2019-08-29 20:40:32', '2020-08-29 17:40:32'),
('e17447887fefea4881c695e81134636fa3c740f44de0e7e2b19f94e5ecb2487a98ec1ce9de2b5987', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 22:15:08', '2019-09-06 22:15:08', '2020-09-06 19:15:08'),
('e1e554e60893fc0f877ecf52541901672019a331eb18f48922ce44ce1a5ee37b16dbc7fe5e8e0852', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:12:38', '2019-08-20 20:12:38', '2020-08-20 17:12:38'),
('e239c5df96678bb54c3da96634fc3ba634f7752b21d79ae3b6c2ff4c67a4a752761998df8e84aca3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 20:02:11', '2019-10-27 20:02:11', '2020-10-27 17:02:11'),
('e2ab3d2d4deeec0e865d3305bca4cb92961ce722a5cb9fa22fc411687e942cae33332a2cc8e72884', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-09 02:19:09', '2019-10-09 02:19:09', '2020-10-08 23:19:09'),
('e30b0306cc438b595abe3e78c538d545823f8c23888924eb069bc3eec8e4af86cbe78738b1d9f6bf', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:26:55', '2019-09-23 21:26:55', '2020-09-23 18:26:55'),
('e314742fc598d1a0622c777c64ed06347b1e444d02d5e3d4d6793d55bd90b4bc5cc1323e18740bcc', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:00:03', '2019-09-30 20:00:03', '2020-09-30 17:00:03'),
('e369871c57519c1e30365306f03c1be9adfc74db6fbed6fc8529571ea9f18944d3bea62644a592c0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 22:43:43', '2019-10-03 22:43:43', '2020-10-03 19:43:43'),
('e38c24111b9034cc30a77010e3f19ab57de0c50650251622e56352a5a1da16e307ec36088cad9f5d', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:13:34', '2019-08-20 20:13:34', '2020-08-20 17:13:34'),
('e3aca09689e1f604566ef3b56760e6050855f6cf2b31ce5b1fd470eb55758068bfc08ca40c4c14c6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:40:02', '2019-09-30 17:40:02', '2020-09-30 14:40:02'),
('e3ed2f4dc5e8b6dccfea299fda632c2c31b285a6f45b25331a055adb60d449d0aaceff79b481686f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 23:55:09', '2019-10-30 23:55:09', '2020-10-30 20:55:09'),
('e41921ab27e94aa9bc412d47f9672fdd1279d9fb06617418e5786885d248dc0c5f7876ecbd2ef282', 1, 3, 'Personal Access Token', '[]', 0, '2019-08-26 21:56:28', '2019-08-26 21:56:28', '2020-08-26 18:56:28'),
('e423ed8b9685c221db6c465d29b3d26ffa77765f085d5afc8221580a4c5da8561f4098c45210edc6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:48:00', '2019-10-28 21:48:00', '2020-10-28 18:48:00'),
('e473c03a54db03296fe0fcd293ce1af07fa96ccf3939317b17ef7e1bda932a60608e58a6b15de510', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:09:49', '2019-08-20 20:09:49', '2020-08-20 17:09:49'),
('e4853f4361086068ed7d01076364dd406a3c01bafa095c118469e9f590a5df061007bd5b59a2e8e8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:35:16', '2019-09-30 20:35:16', '2020-09-30 17:35:16'),
('e4b383b440dbd1d73f90abbc5bae72c8c2c925ccf236bf00727f352db8951da2189152eb290a950c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 17:06:43', '2019-09-05 17:06:43', '2020-09-05 14:06:43'),
('e51bb34d86b6bc646372bbbd511b9077b37be288e1b29b42744b239e45d09c121152c7d8a108c734', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:34:43', '2019-08-20 20:34:43', '2020-08-20 17:34:43'),
('e5a5e7e0b485da9d2fa386f068da564f8dd5e5ba1d328f924a5a2eae59703b882dc0fed67f83879a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 19:49:55', '2019-10-30 19:49:55', '2020-10-30 16:49:55'),
('e5db60e9848960d8f7426a23e896cc9a77cb21e7a98af237c67376dba1332d0fd3aa9bff598516a7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:06:10', '2019-10-01 01:06:10', '2020-09-30 22:06:10'),
('e60108f8935a2937ed3856e0adcf2724034abba394ee55e9ba9eb30d767f3b383ecc976619f7910a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 23:48:39', '2019-10-22 23:48:39', '2020-10-22 20:48:39'),
('e614878eee10bb2d0635523dd77d73246c88196e902a2a19ac5deed51ddfde3a03dd9dbd9f020ccc', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 23:51:55', '2019-10-30 23:51:55', '2020-10-30 20:51:55'),
('e633a639599ba1b6aa8d89c420e6892c3fe737d127617ffe6725b03c21bca9921e93dceb8de8efbd', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 18:11:04', '2019-09-23 18:11:04', '2020-09-23 15:11:04'),
('e6534ae0826e2c6b82bafdad7a5d8406f51eb485d15a373fc2dd765500a78fd34c47a1cb630d93e8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:29:19', '2019-09-05 19:29:19', '2020-09-05 16:29:19'),
('e6606af5f012bef3a44aa99f6ba27b9b239eac84bce91f788fea50bca63b9d05dac4721c42b10e17', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 05:43:09', '2019-10-28 05:43:09', '2020-10-28 02:43:09'),
('e668e10e4a7b8b1b3e95318506dd2257e799ffd78299543d95e58f2f06ad772fefee53923953e980', 1, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-11-01 07:57:31', '2019-11-01 07:57:31', '2020-11-01 04:57:31'),
('e66ce5d5ea08f875a7cbbf61c68ab5a01cb1a10fe1874b7a9c5862889b14659c98f1079d4b9c27da', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:15:18', '2019-09-30 21:15:18', '2020-09-30 18:15:18'),
('e6ac39d1189b9fd61aa43b1c35d2cd212af0678a2717098a896728ada0e9aaf876576671da46217b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 19:45:36', '2019-10-28 19:45:36', '2020-10-28 16:45:36'),
('e6b99bd8e78142df5ffe130e286c85090d08d43022b0a8c4df874ab70b27cb2f2ab04ef34c2608c9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-25 21:25:16', '2019-08-25 21:25:16', '2020-08-25 18:25:16'),
('e7260d3f454d289165f1af05f49555dae7e3eea20bf882a8885430840b57ef0790200d45f7686260', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:15:57', '2019-09-05 20:15:57', '2020-09-05 17:15:57'),
('e73750cd024f5b0e7de83fd1f4fbbebfbaa6fd76782dde4afdcc197ef8cf8c0aaefad2483cc29549', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 22:08:13', '2019-09-06 22:08:13', '2020-09-06 19:08:13'),
('e73a03f005206d3033ec02c4553bc91f8d7e5df4006e33cadc7e64ff2d1dfdcd8a0b63b78aedd470', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:16:53', '2019-09-05 20:16:53', '2020-09-05 17:16:53'),
('e766fcc8721335c49d2d3e85a97abe65615feef11374ccb4110c85fc5ae78b6e6c2960bdc53a9dc0', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:07:09', '2019-08-20 20:07:09', '2020-08-20 17:07:09'),
('e77f52b3bc9d0cb790266ea4a8d944688686d706854967ac9eed4949c29381bfd252536a0c08d70a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-24 22:27:18', '2019-09-24 22:27:18', '2020-09-24 19:27:18'),
('e788ebf63a7a1eac74dc7bdd0d5d52fcf463f3b425b071470621d02ec62baf3d289af96d33c73160', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-31 19:14:34', '2019-10-31 19:14:34', '2020-10-31 16:14:34'),
('e7a7f6e904c29e78cefac309306f943ced87d50a25bcad088473e8ac958aa59f8ba9f205fd5e636f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 22:18:23', '2019-09-26 22:18:23', '2020-09-26 19:18:23'),
('e7b10ad9f21f6e80b8ec691e6811fe9d5e62adf6dc1913afbafbd327cb73dd1d9c4c7ca981e4ccb5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 18:35:19', '2019-09-23 18:35:19', '2020-09-23 15:35:19'),
('e7e32667174b477b47990019fafa7c729652e2002e564afc3e8ae186dc028cf2dbbd3b011deeaeda', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:31:02', '2019-09-23 21:31:02', '2020-09-23 18:31:02'),
('e7e79a2e8b72830e92b54756258e62d5757f375f7afe2b0171d487bc19682a28afcabd59f037e8e2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:30:56', '2019-09-30 17:30:56', '2020-09-30 14:30:56'),
('e85ec21691a279dcf6f4420f09a6634318155c5da921eb99a58779bc6be5af2dc90d7be974f277a6', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:20:18', '2019-08-17 01:20:18', '2020-08-16 22:20:18'),
('e8647d9ff78bf238c7673430584a819fbe4b66060ed2d267a17a477c70145bfd3c9facbf430e3368', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:11:20', '2019-11-01 08:11:20', '2020-11-01 05:11:20'),
('e8aaada8403139170790a9c38b039c96c361978656820e69a608ad2397741f776526b867eee6c7d4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 23:46:27', '2019-10-30 23:46:27', '2020-10-30 20:46:27'),
('e8bac4b06b2a6bb4b4f9be1c6c87418210edb38bc509d7764d2b3cfd8fe8a03ced5e97426d19f96b', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:49:42', '2019-08-20 20:49:42', '2020-08-20 17:49:42'),
('e8d6243d88b971f8663f02b2855bfec6eee674798a94b8008e6d3efb68439b48d2994610bb6d1280', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:28:24', '2019-10-28 21:28:24', '2020-10-28 18:28:24'),
('e906d8db888d7651f9a66111a1811b6f522fdb462c805ab2be1d025d38b4484e059f8168bf3cb7c7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:33:33', '2019-10-24 22:33:33', '2020-10-24 19:33:33'),
('e9518998e1dcf81540b2bf5904c8388bf15f1c668025e6f62535f17171f9258b99059523315139aa', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 06:00:55', '2019-10-30 06:00:55', '2020-10-30 03:00:55'),
('e96ae65a1d6b70bf7aca0ec3696bdfe53be38c82056f30dc9c904775753b07a24d25798dcd21581b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:47:26', '2019-10-28 21:47:26', '2020-10-28 18:47:26'),
('e96b21e6d708c93707110ab9469044b07aa77e4007f511e152bf060c26f0a3868b1569e5c77917b2', 8, 3, 'Personal Access Token', '[\"tecnico\"]', 0, '2019-10-03 22:16:44', '2019-10-03 22:16:44', '2020-10-03 19:16:44'),
('ea010b3681bc4caf2f5224fd8575c93bf14f09cc6b75c642d8e7864280216725946b64093bd3156d', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:37:58', '2019-09-05 19:37:58', '2020-09-05 16:37:58'),
('ea16149fe1c4027096a8b88839a6e993b4aee74bdf76ae4e9bf0be3631e29e2086e583d308f7edad', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:42:45', '2019-10-28 21:42:45', '2020-10-28 18:42:45'),
('ea29b8bfff0d6cba1b36b0f297d135c7eae3c7c00451afadb200c0597d52776d23a85f9846502e5c', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:35:33', '2019-08-20 20:35:33', '2020-08-20 17:35:33'),
('ea601a9f9cf873e8a27ade0dde1e7ec4ed7656af14da2ace51efc7afbcd9b0d7485bfe85141c0ee2', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:39:23', '2019-08-20 20:39:23', '2020-08-20 17:39:23'),
('eae1e67ff42cae7633319887e325e4fbe3c16021044aa06534d4a9242aecc8e7963ec159967256b2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:58:03', '2019-09-30 17:58:03', '2020-09-30 14:58:03'),
('eb63b98c1e38b4312d8328a0fd022f42e4a862e8d81a71bb7647378b6b7bf217430751020957a81e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 06:59:55', '2019-10-04 06:59:55', '2020-10-04 03:59:55'),
('eb894ed75b9da565342a4f1638e2f336be6bfce9dec46106de529794a5e7e41ae5b91b05449c9ec2', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-15 00:10:38', '2019-08-15 00:10:38', '2020-08-14 21:10:38'),
('ebb39bf016aeb278a6c187c3a7b6df0cc9809c67b0d5736eb15c1a5abe245dc8c46add53ef18f2a6', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:26:58', '2019-08-20 20:26:58', '2020-08-20 17:26:58'),
('ebcf581ed9dad8fb8497bf6ca189e4e6696d8ac66bcedd27a8903f4f48676bc853277b88a24509c2', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:15:27', '2019-10-28 03:15:27', '2020-10-28 00:15:27'),
('ebe2612aa3689379b7e4da9a56783cc8d992224ee16c911a46ca468b7eedb69791b90a80cdc8891c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 21:42:21', '2019-10-03 21:42:21', '2020-10-03 18:42:21'),
('ec0f2e06f6dff32be873f35c3942aa2b4c36b47eb780637abe578627ae9e98a4073d4dedada29795', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 06:13:27', '2019-10-30 06:13:27', '2020-10-30 03:13:27'),
('ecb64df00b314b25ef4bfc731a892b6cfc527931c96bd759e021b587ed4ea023083e21b7740b2cd9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 21:08:52', '2019-10-01 21:08:52', '2020-10-01 18:08:52'),
('ecbfb405e2513b5d97cd073bdbac0538bdb35ec67313e78864641c695e04ad9d16b6132ee01f2a83', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:06:08', '2019-10-28 21:06:08', '2020-10-28 18:06:08'),
('ecc22d5b8ac74319974ffbe180f3842309777467cc70725c3b6d6fce925fce9c689a0473b6c39c81', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:57:16', '2019-08-20 20:57:16', '2020-08-20 17:57:16'),
('ecd01d4d61f8ddda814bd3050d9681f6ff4e5a0bf43760b7c600f263456b955e76e55cbf06d5926d', 1, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-09-26 21:30:35', '2019-09-26 21:30:35', '2020-09-26 18:30:35'),
('ece8e6805e638229ff415d3495647eb1e3eb457ee9705849caa126e4eace2be5bf42ccbf0d3a679c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:52:36', '2019-09-05 16:52:36', '2020-09-05 13:52:36'),
('ecea242bf69d835fbddcdd2e7c914cdccc1feddf7899b64dd32250a7cff5d8f1eb30c27d8ee263eb', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 23:51:54', '2019-10-03 23:51:54', '2020-10-03 20:51:54'),
('ed8044f5813844ca9e2dbfdf84e2243d0eeb2dd82293e90bc290ab36cc3dfe027ed387825753711b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 21:00:43', '2019-10-28 21:00:43', '2020-10-28 18:00:43'),
('edea20d3ba410bb4d389e83ea9794bf54ad785a00e40581f8d1a9feaf933532ff9916f0063aa475b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:00:21', '2019-09-30 20:00:21', '2020-09-30 17:00:21'),
('ee1162218f837d81f4b6f632045fa0c449f35f5bee13f77b86e93502a47ede051584b1af72740504', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 20:42:12', '2019-08-29 20:42:12', '2020-08-29 17:42:12'),
('ee1950dd33a33fb70a8383428b8c70917d5c0a56556d0b24954a99839ef0ee480162d5f8ec780edc', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:53:47', '2019-09-23 19:53:47', '2020-09-23 16:53:47'),
('ee3fe8dcf9e1b0b5b8ea7954eb03520b4892cb58d0040889467337ff1aa17aa979601eb32ecf9ff8', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:45:12', '2019-10-28 07:45:12', '2020-10-28 04:45:12'),
('ee57e104b71644ba9b2b04d9b15d51fa70153f53246ebf049d3a74ba79b44dfee18b78b651feb18b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 02:23:38', '2019-10-29 02:23:38', '2020-10-28 23:23:38'),
('ee76408e17e94400f833a771d99f5e7de79fda82f21502e8abc74f687b773b9ab3d6f6cbc921f08a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:00:20', '2019-10-01 01:00:20', '2020-09-30 22:00:20'),
('eeca14450386cb9c4579392aec51d0a298e3fc51e87e06ff938bec250d3046cc6d855f76036daa10', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 18:21:56', '2019-09-23 18:21:56', '2020-09-23 15:21:56'),
('eedf267cf8c6830b8b47e791c0f84a54e66278515f8251713790b69eae866bdf2a5a0de58379ff1a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-29 21:39:14', '2019-08-29 21:39:14', '2020-08-29 18:39:14'),
('eee1977ab2852129e2bce32d46f594c52c545d79dd950e5c6050b7985bd72dba583e835b9cfeb7b7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 23:47:15', '2019-10-30 23:47:15', '2020-10-30 20:47:15'),
('eef85b5093f2c667ba50b62cd12a6e8c26fd801decf0e80d23c440bebedbad14fc83808c4cc03a40', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:47:40', '2019-09-23 17:47:40', '2020-09-23 14:47:40'),
('ef00c181c2c16b4d36a41ecc5023d8605cbb87e9feab6f843a547dc1b641447bd4a904e411d2c554', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:16:17', '2019-09-05 20:16:17', '2020-09-05 17:16:17'),
('ef2d96893e077573f9547313e3ad55224c2ecc0ff1bcd5b73174f04a0e28e9bb0f840acf80c8f8f3', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-08 00:09:57', '2019-10-08 00:09:57', '2020-10-07 21:09:57'),
('ef77afc2b036d43d81cbaa1858e0fca3ff32b43967a234e25467406946f41558ca0581a12b215858', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:50:57', '2019-10-28 03:50:57', '2020-10-28 00:50:57'),
('ef8cc2512da7efea47824826a6b08bff2f88c92073b551f8a15359f5626c63a249ea9e77ce4c1d99', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 22:17:28', '2019-09-26 22:17:28', '2020-09-26 19:17:28'),
('ef93468a43fccf80a5b3d960cd470c7695828b08f4d5e4d5b2972a0cad3ca5c95b27327e3f998a0e', 3, 3, 'My Token', '[\"administrator\"]', 0, '2019-08-24 23:24:48', '2019-08-24 23:24:48', '2020-08-24 20:24:48'),
('efa926102eec94d86f6dd9442c0e3457f8c2b4333f0c70c4f7669a635d8670b04a7d6b95b228c287', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 06:01:55', '2019-10-28 06:01:55', '2020-10-28 03:01:55'),
('f011bd80260cd69ac1ad8f7672a413bdd7d125f71310790b4f06df83b6e00ae35e7391ed69b02909', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:20:57', '2019-08-17 01:20:57', '2020-08-16 22:20:57'),
('f017e937f5467934db17455a91a6aa86d1bc571537027aa189d3046cbc5da18c3a0cb3c1a1afd2ff', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:31:26', '2019-09-23 21:31:26', '2020-09-23 18:31:26'),
('f04b7e4b18ccb095c53055317d934d4b1cd763da7e946bdc0d48445cc83768a3f05564b3f7acfb5e', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 21:00:29', '2019-08-20 21:00:29', '2020-08-20 18:00:29'),
('f051c94ea8ddef5f5bc347fc1f1daa16cf1ddcc2e501e225a1da9c6e133db8a08eab226813077df0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 23:54:10', '2019-08-26 23:54:10', '2020-08-26 20:54:10'),
('f06b80dc7d5ac47eea99ad1e4afe2499383d917685409fbbec580a8a262d7aba757a8292e34195ef', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:26:48', '2019-08-20 20:26:48', '2020-08-20 17:26:48'),
('f12458487b5a8c823c2f64e6908ef0ad86f46caf3701397deb261b5c3bef394c9132f05335deecb5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-08 01:42:41', '2019-10-08 01:42:41', '2020-10-07 22:42:41'),
('f14d0cb9f9fc9f863ccaefb986a1f00344253239d292b3572daf46c44b787ec7c49ed49b32dd568e', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:26:47', '2019-08-20 20:26:47', '2020-08-20 17:26:47'),
('f1aa1f33dbc213d715c480601aa452a67138d9e14668b78fa8bd13ad83497efea73e1c88f47a645a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:38:34', '2019-09-30 20:38:34', '2020-09-30 17:38:34'),
('f1bf592ea2b265dc248fda362f3c9c9da3c0154828d41ad809db379d1212d73256b4bde5dc48ccf5', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-27 00:04:19', '2019-08-27 00:04:19', '2020-08-26 21:04:19'),
('f21d1c61b027264365b1d95dc4c34da768025bc01f8b1595918eb3a9af5af62939f43ebfb73580b9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:18:47', '2019-09-30 20:18:47', '2020-09-30 17:18:47'),
('f237ad0d2ce1a1727f1721d98cd71056212542896417fb80a51849831db1b3de2a5616d9e5252e10', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 03:57:01', '2019-10-29 03:57:01', '2020-10-29 00:57:01'),
('f24af930e72855b4469ee2aeaf743b16602c9357504b93ca5d589c50a947f4b605b6665a66a78f60', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:27:28', '2019-10-28 03:27:28', '2020-10-28 00:27:28'),
('f24ccf0183394ba34116222f0cb2bb002006bea984b3e87ff7f84836abfb9293294de99d5a9c1a33', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:26:38', '2019-09-30 21:26:38', '2020-09-30 18:26:38'),
('f26258a3bc92f6094551eb33869c9127eea21129520e429a81d5d14ed9ea793f530e206fc63cd36c', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:17:47', '2019-09-23 17:17:47', '2020-09-23 14:17:47'),
('f277c314ce31a510a1ae03dcb1c1f0f6af1b6037197b9d7b324aebf81161e2c7003dbf6668356215', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:12:10', '2019-10-24 22:12:10', '2020-10-24 19:12:10'),
('f3997e9f5da7b5c2da1b3c999fbfde84de4d888a3269667f49ce2db8ce5b9308ae3b4251924970b0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-27 00:34:39', '2019-10-27 00:34:39', '2020-10-26 21:34:39'),
('f3a452a7a4a6d8d398324d2f134ebb4220f9395e8e78db256ea068a4cc0a12edf1fe24387d2f6b45', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 01:34:21', '2019-10-29 01:34:21', '2020-10-28 22:34:21'),
('f3ce78ab5c10a691500bd5cd3da849f01e9748d0af81001afab1f36c2ffd002dcb3df7f60abd4216', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 05:47:25', '2019-10-28 05:47:25', '2020-10-28 02:47:25'),
('f3d9141ab547f0941d03b5c8805e448112ee394da9f54004aebd3baf0ba7360c99c40e6991e909f7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 19:58:24', '2019-09-05 19:58:24', '2020-09-05 16:58:24'),
('f3f3354dd069e27a271f6b6005abcfe5eaa020689679df606e8dc91e964cf926c1ea901dd7c237cf', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 21:03:25', '2019-08-20 21:03:25', '2020-08-20 18:03:25'),
('f3f56f4f0bc5d4b514f872dd8dcfc39345c37c12370fc27ed5e29236c7f6d18fe3aff88d01a83964', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 01:46:29', '2019-10-28 01:46:29', '2020-10-27 22:46:29'),
('f44c2af11935383a5953b8c0510b0bb473df93973092155ffdb72c2081b2437ecbe257df44afd8b0', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:11:44', '2019-08-20 20:11:44', '2020-08-20 17:11:44'),
('f4b243840afcd5eeca3a5785c1eb5ffc37aa5deb47b5e7542d8f8f4d70941dae72c04273a0f472f4', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:23:41', '2019-08-17 01:23:41', '2020-08-16 22:23:41'),
('f51a0e70f5b5b8448a91b089ff61aee8cd5ecf42a8bd8c2024563beaedb08ef631c7b59b2ffa19e4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 04:14:48', '2019-10-29 04:14:48', '2020-10-29 01:14:48'),
('f55f881daac7ecd67b3b44f9f4305cc1811c5f0e016634d3f08042c3549fa168f84b693999b85420', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 07:01:22', '2019-10-04 07:01:22', '2020-10-04 04:01:22'),
('f560e1bf20f3c963a13ed9e3c1f774b68ffb0b8b9eed74df00ae68c6009d0a96fbbf58fe8dc11ec5', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:13:16', '2019-08-20 20:13:16', '2020-08-20 17:13:16'),
('f5883061cf9d08af7cb6832316fc78d9a3b0e0fdaaf6701cb1e5c1ccde3cd9c1757bde9247eefa45', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:35:39', '2019-09-05 16:35:39', '2020-09-05 13:35:39'),
('f5c1ba4f5f4ca25426067de60b9b4132484822f7525add75781e72d2d17c0aca781966f36efd5e05', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 21:46:28', '2019-10-22 21:46:28', '2020-10-22 18:46:28'),
('f5d8b3c1a578065f4c80ef533c5089efb301d9ba4594919df490f86e45a7ddd37481600210953ad1', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:12:53', '2019-08-20 20:12:53', '2020-08-20 17:12:53'),
('f6171d1c7d50dd0203ec6a6346c460446f7e5525eeddc7e11ed51227612bd6d29601f5be43713dc1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 03:18:44', '2019-10-28 03:18:44', '2020-10-28 00:18:44'),
('f63d664dd822d7d4f4979e386a95cbe761c4bee367d59cd44ace32d5094114d591572b9fa8bf8d93', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-23 01:34:51', '2019-10-23 01:34:51', '2020-10-22 22:34:51'),
('f666adcc4619c7405d56684c870694fd3071bc25c9c46b05040e1792b4818cb215bf5bf0b48141a4', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:31:58', '2019-09-30 17:31:58', '2020-09-30 14:31:58'),
('f68ddd23dc134e4097b041fc8df5ae73f61ca9a84e1b41b7589a3f2a72660849478f027411bbd19e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 23:52:51', '2019-10-22 23:52:51', '2020-10-22 20:52:51'),
('f6b18c46d52b66b921042d1f78245917ec50606cd333bb42f87ffc9fa9175afe569e70972ee3e579', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 18:54:01', '2019-08-23 18:54:01', '2020-08-23 15:54:01'),
('f6cc0c452e250866c9ec851c61d8507feecabb5cab7101987facd7c39ac03dd517acce912d21d808', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:08:02', '2019-10-01 01:08:02', '2020-09-30 22:08:02'),
('f6d3c3cab1332c594b13889b12eca9328ae152c8027598c5a9a8a8ed452b3c7580121d70c855dfad', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 21:28:28', '2019-09-23 21:28:28', '2020-09-23 18:28:28'),
('f6e019e662134f5a71a10b801ebd1456be50fa3e230ecb923cf0e2be40cd76081db1794152653837', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 21:15:21', '2019-09-30 21:15:21', '2020-09-30 18:15:21'),
('f6e969cdbc89355e17f12bc08d5dc7fd3b896549785ab126706bc2416490b21b2429140237c5cdee', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:19:39', '2019-11-01 08:19:39', '2020-11-01 05:19:39'),
('f73b172da8b1c96f2fc3ea8e96f39fb00cd478933852d53193119edc8f19db04e419650f503908fe', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:54:09', '2019-09-05 16:54:09', '2020-09-05 13:54:09'),
('f7c51f9d5a732d3479c20baeb3bc5261a29acb86616e2d9636be5f810178d479dc337390c04e3794', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 03:45:04', '2019-10-29 03:45:04', '2020-10-29 00:45:04'),
('f7dffa13628b4102041e6674a299b9b40c96b4e26f37c3f63c312570844b119e9daa87d3cfa1eaea', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:12:58', '2019-08-20 20:12:58', '2020-08-20 17:12:58'),
('f7e9c49b169b13d57d6fb2709d79f319b281095c753aad282917f96f87aa522a7e7daef6711ecfba', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-11-01 08:23:03', '2019-11-01 08:23:03', '2020-11-01 05:23:03'),
('f7ecf5bde6f7a6a68c8c438bf3166c2f72663ee05a89d889aad1b8384a287dca62244ec7f9fd6fd0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 22:04:09', '2019-09-06 22:04:09', '2020-09-06 19:04:09'),
('f83b8e05ce45c846b637e8ef65cb1f47b594c9f867500871bcc68b97da7948b1f6461d4d3b48cc2b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 16:46:09', '2019-09-30 16:46:09', '2020-09-30 13:46:09'),
('f8d87e5242b033dabd83a2c61e7649b673244ced8066cdbc4fd3da6f004ec22e8355b57db63f1044', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:23:02', '2019-08-20 20:23:02', '2020-08-20 17:23:02'),
('f9424bcb7292ccd8453aab0b9847700dd00518c9311b6e7922cc136777528c8f7e2609831169f88f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-28 07:28:16', '2019-10-28 07:28:16', '2020-10-28 04:28:16'),
('f954d62e4c21c23cc24c1e83af037b1da08b4c4ee5cb2b738d4e64e2a2480b4c9cf44a0f9c2861c7', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:15:38', '2019-09-23 19:15:38', '2020-09-23 16:15:38'),
('f9880c6809954ce96009a37213a497cd3ab8e16b3949ce73a7e79957ce4105d714b1aab8667eac1b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-29 01:21:27', '2019-10-29 01:21:27', '2020-10-28 22:21:27'),
('f9a8b1bfa6d120689148a97e112a56f6de982af1faca28c406382037b69171148e2f115f77110535', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:29:27', '2019-09-30 17:29:27', '2020-09-30 14:29:27'),
('faa25d3c6a16ce022ff4c9b6465aabd284352a29525a7e2522ef8591a96f525bf0def1fcfe8425ed', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 23:11:56', '2019-09-06 23:11:56', '2020-09-06 20:11:56'),
('fae6819d60ca02cac4c0283530a65da22b2c0bac18445b9b9f17522fa333dea99a4425b1b4f9ef5e', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:24:16', '2019-09-05 20:24:16', '2020-09-05 17:24:16'),
('faecfd38816d70630b730a2a9f59164eca037943365eb4ab040a1630ea8257d3465aa52c169b6be8', 9, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-10-03 22:08:04', '2019-10-03 22:08:04', '2020-10-03 19:08:04'),
('fb043a9596fea0949916ff0f7eeddc02f8b104a688344430e0cc15cdc48abbaba2d260acf01c7203', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-22 21:06:48', '2019-10-22 21:06:48', '2020-10-22 18:06:48'),
('fb163b784b6d3e5292c2ea364bdfa1c8b157763df3beaa5c21364c48948efe0bed49d10ecf925045', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 20:18:46', '2019-09-30 20:18:46', '2020-09-30 17:18:46'),
('fbcd5170e1e24255cc1cbbd02275988025c3a8d4cadcf666ea01b4efef0e09624e0e0bdda07347e0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:10:57', '2019-09-23 17:10:57', '2020-09-23 14:10:57'),
('fbe76c45fcd1ddd1eb099b667caf70fca0eef3a150c3c81105dc86961d29c0f1b89342219985431a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-25 21:25:17', '2019-08-25 21:25:17', '2020-08-25 18:25:17'),
('fc8642bbad671d151392410230573cfdb2357ba8140583fb629b51592981eed34433455113f8785a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:40:40', '2019-09-23 19:40:40', '2020-09-23 16:40:40'),
('fc8efe89223773a0e7f8a6703e7c595bbe9694d0c478e46adb6318d81719219974fa5aab151df222', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-01 01:42:04', '2019-10-01 01:42:04', '2020-09-30 22:42:04'),
('fc97c01c1bc92d086944e756cdb9c1dbaf0fcda8177f71f4c2459e94ac79a258ed9e3a20b38db05c', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 19:55:37', '2019-08-20 19:55:37', '2020-08-20 16:55:37'),
('fcaf11eb7234b558dd751340d8abcaa7a04def37d7c24a80413ece2bd4e92f10e82d8f06d82b06d6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 21:35:13', '2019-10-03 21:35:13', '2020-10-03 18:35:13'),
('fccb3750101d89952f4874fa584d1ede43816e68c561b95d4c65dcc174a58a65f275c9ccdf74162b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-30 06:28:35', '2019-10-30 06:28:35', '2020-10-30 03:28:35'),
('fcda8ea42f0945ba7191b2c50cf49ae8328829eaeb31749e25ead90874050e745e7370cd9e820110', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-03 22:33:52', '2019-10-03 22:33:52', '2020-10-03 19:33:52'),
('fd440619c8d5630efff8aea2c46b6f8ef02fbb2750eae806313795a7ffbcf491fef9daae97e2fa6e', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:10:14', '2019-08-20 20:10:14', '2020-08-20 17:10:14'),
('fd483fcca48d26f47da20484bf81553ab85ccae010e5d9a691c4e7f71966c9665c6be9aee4246318', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:17:26', '2019-09-23 17:17:26', '2020-09-23 14:17:26'),
('fd7b9756bf8e232f31ec1ed9cb4a3b4d482b817e232440360d1912c62e4a40a8b929cbdbcf01c46a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 19:39:38', '2019-09-23 19:39:38', '2020-09-23 16:39:38'),
('fdbd0d1a5691592e94ccdfac24bd4fd9b702c0167052bd96831233ed1cae295e7c2c8896f85ec685', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-23 17:20:39', '2019-09-23 17:20:39', '2020-09-23 14:20:39'),
('fe03257de636f65409b4311800f1821c4a1187145369c821ee5d396d06a5c3de2bd9485668de46fc', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:04:07', '2019-09-05 20:04:07', '2020-09-05 17:04:07'),
('fe6ea7a472753cd5b4ca5cca1a5729282bab3a6e5c28fb257dfd8f3b3ed50197da75872821fa68be', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 16:13:13', '2019-09-05 16:13:13', '2020-09-05 13:13:13'),
('fe860f8fc490fbb4668b05f067a970ea5058f5eca9230f880c87fa6e60b5af8f94987fb63b2c42b6', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:10:47', '2019-10-24 22:10:47', '2020-10-24 19:10:47'),
('fe9c6d56b3894208a41be20c61940e3e4a399216c015c2e28af647f59c1f04c1667df1919b8ad08a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 21:43:40', '2019-09-06 21:43:40', '2020-09-06 18:43:40'),
('fee0443e183cbd0e1c600a36775928af2b4751c9e2ff5f07631f4b1682e1c40a79b9a2d3d3f57cc1', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-05 20:25:19', '2019-09-05 20:25:19', '2020-09-05 17:25:19'),
('ff0343fd642c12aa8ea04b19e5f7d82a9b662ee76ae6ff7be10fa03cfd03e62b005e146130839e81', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-26 22:14:06', '2019-09-26 22:14:06', '2020-09-26 19:14:06'),
('ff843206b574eee4065ceb859ede28bb6663f061c91f3d10129a1af0d8332a2467ef8a974bea5686', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-04 07:40:16', '2019-10-04 07:40:16', '2020-10-04 04:40:16'),
('ffc5a517ceaef81d9744a49862dd36505ad7bb7200cd26d8695f90a0f11e49af902fb402ed94a737', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-10-24 22:33:42', '2019-10-24 22:33:42', '2020-10-24 19:33:42'),
('ffca7dbbddfe7b0c5d11de7350e9ddbe2eda1c28a377f7547578485b1736a7d257030fc9a3232441', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-30 17:31:44', '2019-09-30 17:31:44', '2020-09-30 14:31:44'),
('fff87a1f2cbafbd0558114b4f9166ae94374ae2aff9255da07de3b0e5d2b9648502a8486a75c8a54', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-09-06 21:48:53', '2019-09-06 21:48:53', '2020-09-06 18:48:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'Tsk4LBVHqKkrfvvkhyMqcg2kGqvq9OJkCbvv40qv', 'http://localhost', 1, 0, 0, '2019-08-14 02:30:30', '2019-08-14 02:30:30'),
(2, NULL, 'Laravel Password Grant Client', 'zHsErZZ9b63P68Rk8RA1eKV7hKPPgdmbkkJ4lahw', 'http://localhost', 0, 1, 0, '2019-08-14 02:30:30', '2019-08-14 02:30:30'),
(3, NULL, 'Laravel Personal Access Client', 'kkvVWkUblIj88gtroEhcNxzsg3Y7np53Ldv4XCtN', 'http://localhost', 1, 0, 0, '2019-08-22 00:39:42', '2019-08-22 00:39:42'),
(4, NULL, 'Laravel Password Grant Client', 'ySujcD2j3oOSnWeX9485iezKwDYN77mv082p4S06', 'http://localhost', 0, 1, 0, '2019-08-22 00:39:42', '2019-08-22 00:39:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-08-14 02:30:30', '2019-08-14 02:30:30'),
(2, 3, '2019-08-22 00:39:42', '2019-08-22 00:39:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `observacion`
--

CREATE TABLE `observacion` (
  `idObservacion` int(11) NOT NULL,
  `observacion` varchar(1545) DEFAULT NULL,
  `idUser` bigint(20) UNSIGNED DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `idOrden` int(11) DEFAULT NULL,
  `visto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `observacion`
--

INSERT INTO `observacion` (`idObservacion`, `observacion`, `idUser`, `fecha`, `idOrden`, `visto`) VALUES
(1, 'primera admin', 3, '2019-09-20 17:22:37', 9, 0),
(2, 'Prim Tecnico', 8, '2019-09-20 13:08:08', 9, 0),
(3, 'Seg admin', 3, '2019-09-21 07:14:12', 9, 0),
(4, 'tercer admin', 8, '2019-09-22 04:09:08', 9, 0),
(5, 'seg tecnico', 8, '2019-09-22 03:10:13', 9, 0),
(39, 'aaaaaaa', 3, '2019-09-23 15:31:10', 9, 0),
(40, 'bbbbbb', 3, '2019-09-23 15:31:42', 9, 0),
(41, 'ccccc', 3, '2019-09-23 15:33:25', 9, 0),
(42, 'sdsdasdsdsdsd', 3, '2019-09-23 15:35:26', 9, 0),
(43, 'sssss', 3, '2019-09-23 15:35:30', 9, 0),
(44, 'cccccc', 3, '2019-09-23 16:08:24', 9, 0),
(45, 'ddddd', 3, '2019-09-23 16:08:50', 9, 0),
(46, 'ssss', 3, '2019-09-23 16:10:36', 9, 0),
(47, 'aaaaa', 3, '2019-09-23 16:11:02', 9, 0),
(48, '2222', 3, '2019-09-23 16:12:44', 9, 0),
(49, 'asdssd sa kldkd k vkdf kd lsdk dsl sdl kdslvkckv jdkl dklv clvk clvckv lkd dlk vdlv cv klkd kdlkv dkv dkv dlv kkdlv kdlv dkvs kl cxlkv ldk dlk dvkls', 3, '2019-09-23 16:13:13', 9, 0),
(50, 'merda', 3, '2019-09-23 17:35:33', 9, 0),
(51, 'nueva', 3, '2019-09-24 18:20:51', 9, 0),
(52, 'el equipo esta listo', 3, '2019-09-24 21:49:43', 9, 0),
(53, 'dsmfdmkfmk', 3, '2019-09-24 21:54:09', 9, 0),
(54, 'hoal', 3, '2019-09-25 01:38:58', 9, 0),
(55, 'nueva', 3, '2019-09-25 13:14:24', 9, 0),
(56, 'ldfldkfsldkñs ksdñl sñdf ksdñk sdñsdñlsd{ slf', 3, '2019-10-01 18:38:20', 10, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE `orden` (
  `idorden` int(11) NOT NULL,
  `codigo` varchar(145) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `falla` varchar(245) DEFAULT NULL,
  `idTecnico` bigint(20) UNSIGNED DEFAULT NULL,
  `idCliente` bigint(20) UNSIGNED DEFAULT NULL,
  `idServicio` int(11) DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL,
  `fechaEstimada` date DEFAULT NULL,
  `idPrioridad` int(11) DEFAULT NULL,
  `idLocal` int(11) DEFAULT NULL,
  `costo` double DEFAULT NULL,
  `sena` double DEFAULT NULL,
  `equipo` varchar(145) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `orden`
--

INSERT INTO `orden` (`idorden`, `codigo`, `estado`, `falla`, `idTecnico`, `idCliente`, `idServicio`, `fechaIngreso`, `fechaEstimada`, `idPrioridad`, `idLocal`, `costo`, `sena`, `equipo`) VALUES
(5, 'ag1901-1', 1, 'algo', 8, 1, 1, '2019-08-26', '2019-08-30', 2, 5, 500, 200, 'P8 Lite'),
(6, 'ag1902-2', 1, 'roto', 8, 1, 1, '2019-09-03', '2019-09-06', 2, 5, 500, 200, 'P9'),
(7, 'Ag1903-2', 1, 'roto', 8, 1, 1, '2019-09-03', '2019-09-06', 1, 5, 500, 200, 'p10'),
(8, 'ag1904-2', 1, 'roto', 8, 1, 1, '2019-09-05', '2019-09-10', 1, 5, 500, 200, 's8'),
(9, 'ag1905-2', 3, 'roto', 8, 1, 1, '2019-09-06', '2019-09-11', 1, 5, 500, 200, NULL),
(10, 'OC191', 1, 'roto', 8, 1, 1, '2019-09-06', '2019-09-17', 1, 5, 600, 600, NULL),
(11, 'OC192', 2, 'no carga', 8, 9, 1, '2019-09-06', '2019-09-18', 1, 5, 700, 100, 's10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('juan1@gmail.com', '$2y$10$V.veyD95/SIYLQLCnxnOiuIdqS4GyJ7NgZaExiniliV4VNwi6M5ae', '2019-10-16 01:33:30'),
('juan@gmail.com', '$2y$10$Yy.FGe2E0baZRFCNCL4AeeevXviq.hHYcob0iNNuOUdsWmELpqrNm', '2019-10-19 01:27:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'user', 'auth.user', 'Acceso prueba', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_user`
--

CREATE TABLE `permission_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idPersona` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idPersona`, `nombre`, `apellido`, `telefono`, `direccion`) VALUES
(1, 'Juan', 'Ruiz', '1234574949', '12312'),
(3, 'juan', 'juan', '2121217899', 'colon 789'),
(6, 'juan', 'perez', '548794564', 'junin 123'),
(8, 'Otro', 'aptecnico', '2121217899', '21212'),
(9, 'alan e', 'ruiz', '1234567897', 'pringles 123'),
(10, 'pedro', 'diaza', '123456789', 'heras'),
(11, 'luis', 'sosa', '123456', 'junin 123'),
(12, 'alan', 'asd', '123456', 'asda'),
(13, 'diego', 'perez', '123456', 'rivadavia 12'),
(14, 'martin', 'man', '12345678', 'asd'),
(15, 'pipo', 'pipo', '123456', 'san marin 123'),
(16, 'beto', 'beto', '123456789', 'asdads'),
(17, 'beto1', 'beto1', '123456789', 'asdads'),
(18, 'pepe', 'pepe', '12345678', 'miter 32'),
(19, 'pepe', 'pepe', '12345678', 'miter 32'),
(20, 'pepe', 'pepe', '12345678', 'miter 32'),
(21, 'pepes', 'pepes', '12345678', 'miter 326'),
(22, 'pepes', 'pepesdds', '12345678', 'miter 326'),
(23, 'pepes', 'pepesdds', '12345678', 'miter 326'),
(24, 'pepes', 'pepesdds', '12345678', 'miter 326'),
(25, 'pepes', 'pepesdds', '12345678', 'miter 326'),
(26, 'pepes', 'pepesdds', '12345678', 'miter7889'),
(27, 'nino', 'pepesdds', '12345678', 'miter7889'),
(28, 'lucho', 'lucho', '123456789', 'junin 456'),
(29, 'alan', 'arregui', '3385432910', 'las heras 962'),
(30, 'matias', 'sosa', '123456789', 'lavalle 154'),
(31, 'titi', 'titi', '12345687', 'cvfd'),
(32, 'pipo', 'ppo', '4567897', 'aads'),
(33, 'asda', 'asdads', '213213213', 'asdas'),
(34, 'cadas', 'asdasd', '21312312', 'adsdas'),
(35, 'cvxvxc', 'xcvxc', '232133', 'aadsa'),
(36, 'dasdaass', 'sssss', '2313213123', 'sdasd'),
(37, 'lulo', 'lulo', '3213323223', 'adasd'),
(38, 'asdas', 'asdas', '32131311', '12321'),
(39, 'asdasd', 'asdas', '213213', 'asda'),
(40, 'asd', 'asdasd', '123213', 'asda'),
(42, 'trtr', 'ert', '21321312312', 'tyt'),
(43, 'xzcxz', 'xzcxzc', '21333121', NULL),
(44, 'asdas', 'asdasd', '232132132', 'asdasd'),
(45, 'adsdasda', 'asdasda', '21321321', 'adsdas'),
(56, 'piop', 'asldsal', '78945652', 'asdas'),
(57, 'mario', 'sosa', '26648978', 'pringlers 788'),
(58, 'nico', 'nico', '78945678', 'junei'),
(59, 'nico', 'nico', '78945678', 'junei'),
(60, 'nico', 'nico', '78945678', 'junei'),
(61, 'pepo', 'ruiz', '1234567897', 'pringles 123'),
(62, 'pepo2', 'ruiz', '1234567897', 'pringles 123'),
(63, 'nicor', 'nicor', '78945678', 'junei'),
(64, 'pepo2', 'ruiz', '1234567897', 'pringles 123'),
(65, 'nicor', 'nicor', '78945678', 'junei'),
(66, 'pepo2', 'ruiz', '1234567897', 'pringles 123'),
(67, 'pepo2', 'ruiz', '1234567897', 'pringles 123'),
(68, 'nicor', 'nicor', '78945678', 'junei');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prioridad`
--

CREATE TABLE `prioridad` (
  `idPrioridad` int(11) NOT NULL,
  `prioridad` varchar(345) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `prioridad`
--

INSERT INTO `prioridad` (`idPrioridad`, `prioridad`) VALUES
(1, 'Alta'),
(2, 'Normal'),
(3, 'baja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibido`
--

CREATE TABLE `recibido` (
  `idRecibido` int(11) NOT NULL,
  `idUser` bigint(20) UNSIGNED DEFAULT NULL,
  `idOrden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `special` enum('all-access','no-access') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`, `special`) VALUES
(1, 'Admin', 'administrator', 'Permiso total', NULL, NULL, NULL),
(2, 'Cliente', 'cliente', 'Permiso cliente', NULL, NULL, NULL),
(3, 'Tecnico', 'tecnico', 'Permiso tecnico\r\n', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, NULL),
(2, 2, 1, '2019-08-26 03:00:00', NULL),
(3, 2, 9, NULL, NULL),
(4, 3, 8, NULL, NULL),
(5, 2, 10, '2019-10-08 00:11:06', '2019-10-08 00:11:06'),
(6, 2, 11, '2019-10-08 00:17:02', '2019-10-08 00:17:02'),
(7, 2, 12, '2019-10-08 00:19:19', '2019-10-08 00:19:19'),
(8, 2, 13, '2019-10-08 00:22:00', '2019-10-08 00:22:00'),
(9, 2, 14, '2019-10-08 00:24:01', '2019-10-08 00:24:01'),
(10, 2, 15, '2019-10-08 00:26:43', '2019-10-08 00:26:43'),
(11, 2, 16, '2019-10-08 00:28:18', '2019-10-08 00:28:18'),
(12, 2, 17, '2019-10-08 00:28:44', '2019-10-08 00:28:44'),
(13, 3, 18, '2019-10-08 01:44:57', '2019-10-08 01:44:57'),
(14, 3, 19, '2019-10-08 01:48:08', '2019-10-08 01:48:08'),
(15, 3, 20, '2019-10-08 01:49:12', '2019-10-08 01:49:12'),
(16, 3, 21, '2019-10-08 01:52:01', '2019-10-08 01:52:01'),
(17, 3, 22, '2019-10-08 01:53:36', '2019-10-08 01:53:36'),
(18, 1, 23, '2019-10-08 01:55:41', '2019-10-08 01:55:41'),
(19, 1, 24, '2019-10-08 01:56:40', '2019-10-08 01:56:40'),
(20, 1, 25, '2019-10-08 01:57:01', '2019-10-08 01:57:01'),
(21, 3, 26, '2019-10-08 01:58:34', '2019-10-08 01:58:34'),
(22, 1, 27, '2019-10-08 01:59:05', '2019-10-08 01:59:05'),
(23, 3, 28, '2019-10-08 02:09:25', '2019-10-08 02:09:25'),
(24, 2, 29, '2019-10-13 23:22:36', '2019-10-13 23:22:36'),
(25, 1, 30, '2019-10-16 01:55:11', '2019-10-16 01:55:11'),
(26, 1, 31, '2019-10-16 01:57:52', '2019-10-16 01:57:52'),
(27, 1, 32, '2019-10-16 01:59:17', '2019-10-16 01:59:17'),
(28, 1, 33, '2019-10-16 02:01:15', '2019-10-16 02:01:15'),
(29, 3, 34, '2019-10-16 02:01:59', '2019-10-16 02:01:59'),
(30, 2, 35, '2019-10-16 02:04:31', '2019-10-16 02:04:31'),
(31, 2, 36, '2019-10-16 02:08:39', '2019-10-16 02:08:39'),
(32, 3, 37, '2019-10-17 00:22:46', '2019-10-17 00:22:46'),
(33, 2, 38, '2019-10-19 02:12:13', '2019-10-19 02:12:13'),
(34, 2, 39, '2019-10-19 02:29:00', '2019-10-19 02:29:00'),
(35, 1, 40, '2019-10-19 02:36:47', '2019-10-19 02:36:47'),
(36, 3, 42, '2019-10-19 02:40:27', '2019-10-19 02:40:27'),
(37, 1, 43, '2019-10-19 02:41:27', '2019-10-19 02:41:27'),
(38, 1, 44, '2019-10-19 05:52:15', '2019-10-19 05:52:15'),
(39, 2, 45, '2019-10-19 05:59:57', '2019-10-19 05:59:57'),
(40, 2, 56, '2019-10-26 23:54:03', '2019-10-26 23:54:03'),
(41, 3, 57, '2019-11-01 18:02:02', '2019-11-01 18:02:02'),
(42, 2, 58, '2019-11-01 18:02:47', '2019-11-01 18:02:47'),
(43, 2, 59, '2019-11-01 18:10:40', '2019-11-01 18:10:40'),
(44, 2, 60, '2019-11-01 18:13:36', '2019-11-01 18:13:36'),
(45, 2, 61, '2019-11-01 18:21:07', '2019-11-01 18:21:07'),
(46, 2, 62, '2019-11-01 18:22:32', '2019-11-01 18:22:32'),
(47, 2, 63, '2019-11-01 18:24:56', '2019-11-01 18:24:56'),
(48, 2, 64, '2019-11-01 18:25:07', '2019-11-01 18:25:07'),
(49, 2, 65, '2019-11-01 18:25:46', '2019-11-01 18:25:46'),
(50, 2, 66, '2019-11-01 18:25:58', '2019-11-01 18:25:58'),
(51, 2, 67, '2019-11-01 18:27:11', '2019-11-01 18:27:11'),
(52, 2, 68, '2019-11-01 18:27:23', '2019-11-01 18:27:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `idServicios` int(11) NOT NULL,
  `tipo` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`idServicios`, `tipo`) VALUES
(1, 'Celulares'),
(2, 'tablet'),
(3, 'notebook');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicioespecificaciones`
--

CREATE TABLE `servicioespecificaciones` (
  `idServicioespEcificaciones` int(11) NOT NULL,
  `idServicio` int(11) DEFAULT NULL,
  `idEspecificaciones` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `servicioespecificaciones`
--

INSERT INTO `servicioespecificaciones` (`idServicioespEcificaciones`, `idServicio`, `idEspecificaciones`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnico`
--

CREATE TABLE `tecnico` (
  `idTecnico` bigint(20) UNSIGNED NOT NULL,
  `activo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tecnico`
--

INSERT INTO `tecnico` (`idTecnico`, `activo`) VALUES
(8, 1),
(20, 0),
(21, 0),
(22, 1),
(26, 1),
(28, 1),
(34, 1),
(37, 1),
(42, 1),
(57, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnicoservicio`
--

CREATE TABLE `tecnicoservicio` (
  `idTecnicoServicio` int(11) NOT NULL,
  `idTecnico` bigint(20) UNSIGNED DEFAULT NULL,
  `idServicio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'juan1', 'juan1@gmail.com', NULL, '$2y$10$fzb3FH1KGVWDeu17Ln5Vj.i93YTeyFmep8BJKaE4T4f6qBBVmQ29u', NULL, '2019-08-13 01:43:28', '2019-08-13 01:43:28'),
(3, 'juan', 'juan@gmail.com', NULL, '$2y$10$fzb3FH1KGVWDeu17Ln5Vj.i93YTeyFmep8BJKaE4T4f6qBBVmQ29u', NULL, '2019-08-13 01:45:38', '2019-10-27 23:36:22'),
(4, 'jua2n', 'jua1n@gmail.com', NULL, '$2y$10$aJrvkAASwe/p7hYYtcxGSeoA1E1ISjkl1SUCVZ1Sl.o4progAJ7AK', NULL, '2019-08-13 01:47:02', '2019-08-13 01:47:02'),
(5, '2jua2n', '2jua1n@gmail.com', NULL, '$2y$10$1FuiBZSFjOGT2xoguOhOnuKSBi/RpA2fF6jwGfeXANGrs3H0dghZu', NULL, '2019-08-13 01:50:44', '2019-08-13 01:50:44'),
(6, '2jua2n', '2jua1n@gmail.com', NULL, '$2y$10$JJJ58Cir7VGWiy2MSMJ7RebwFMpfQ.fDPRCWbVv0NtRS7YW7yVqGq', NULL, '2019-08-13 01:52:28', '2019-08-13 01:52:28'),
(7, 'juan1', 'juan@gmail.com22', NULL, '$2y$10$2kWFCl5dJw2D6uJ8iL/xTOaIndEN6l0wB6zq.SwFrPe.X0jnMYFny', NULL, '2019-08-13 01:53:28', '2019-08-13 01:53:28'),
(8, 'jmr', 'jmr@gmail.com', NULL, '$2y$10$uM.dOqmnt14aTm8xABPunuWG0Zl2THy7tstXWiH/jAMmoLjS2L/Ty', NULL, '2019-08-26 22:10:34', '2019-08-26 22:10:34'),
(9, 'alan', 'alanar@gmail.com', NULL, '$2y$10$NrRDKeUhFb2WBCvWbuHumeP3TY8vdlI57yi.9RNLKehqrOurR6Ecy', NULL, '2019-08-26 22:11:17', '2019-10-23 01:38:58'),
(10, 'pedro', 'pedro@gmail.com', NULL, '$2y$10$5Jz2mraHAxG9goyKsgaQMez1689/E6t0cCgFpvw00GK8F96ZORUt6', NULL, '2019-10-08 00:11:06', '2019-10-08 00:11:06'),
(11, 'luis', 'luis@gmail.com', NULL, '$2y$10$4gpQdrs01snQowKKhpZAP.2IQv0iFW6l3O8WtRzwZ.DUNlBmfmVpa', NULL, '2019-10-08 00:17:02', '2019-10-08 00:17:02'),
(12, 'alan', 'alan1@gmail.com', NULL, '$2y$10$yzKeLgRLUzPNeCuKkiBCNeP9bFDQrRnCx5Hkg3P15L6U.grpDPRTu', NULL, '2019-10-08 00:19:19', '2019-10-08 00:19:19'),
(13, 'diego', 'diego@gmail.com', NULL, '$2y$10$19XUVds1upV4.2QJnTQlbeesn2RKHCQrLe84X2gOgdv4i9es9/kgG', NULL, '2019-10-08 00:22:00', '2019-10-08 00:22:00'),
(14, 'martin', 'martin@gmail.com', NULL, '$2y$10$WWpGqud7TXP5QQioXLLFVeVJ0AZFlXFq1AWkwk.ynf23ZHnSSoaZm', NULL, '2019-10-08 00:24:01', '2019-10-08 00:24:01'),
(15, 'pipo', 'pipo@gmail.com', NULL, '$2y$10$/fuvfUDD9OgUXJf9M1s2CeE99Kf62pLmN6UHWUC9Djd7HcK4WGkL6', NULL, '2019-10-08 00:26:43', '2019-10-08 00:26:43'),
(16, 'beto', 'beto@gmail.com', NULL, '$2y$10$twsd8u3KdEPOqdPquh0.rezvlzUHndCPm/QE50k2RZRcXDl1RIOd2', NULL, '2019-10-08 00:28:18', '2019-10-08 00:28:18'),
(17, 'beto1', 'beto1@gmail.com', NULL, '$2y$10$iNEMrnSkkr4OH9drOU1OHu2u1i2D3KnMrOtpH5G6a.ZWNOl05ounG', NULL, '2019-10-08 00:28:44', '2019-10-08 00:28:44'),
(18, 'pepe', 'pepe@gmail.com', NULL, '$2y$10$H9VlhQ6DwlxxNqEIrtwLmeOuL8cxxvpqBZwV0.VHsJ7BD5cC2JkVe', NULL, '2019-10-08 01:44:57', '2019-10-08 01:44:57'),
(19, 'pepe', 'pepe2@gmail.com', NULL, '$2y$10$54lER9VrABZHb8i4pUIMQu9GcBWIgAdrYRboiHdPexm.uAftzH4zC', NULL, '2019-10-08 01:48:08', '2019-10-08 01:48:08'),
(20, 'pepe', 'pepe25@gmail.com', NULL, '$2y$10$Qqq4lLYgwglC96TdzE29veXYglerDqHKLKnrUZfu/f7RNPWsQ9dfO', NULL, '2019-10-08 01:49:12', '2019-10-08 01:49:12'),
(21, 'pepes', 'pepe255@gmail.com', NULL, '$2y$10$cXlQ1BcezkEz4EDLu/NB1umw/.4DxxZ/ks4hi.ESFi7OBOp.wp09G', NULL, '2019-10-08 01:52:01', '2019-10-08 01:52:01'),
(22, 'pepes', 'pepe255ds@gmail.com', NULL, '$2y$10$1uDv2OKwTfYIDtWt4.0lkurFb.QXZYOXuV8TwYd9NWnOo35EMOSkC', NULL, '2019-10-08 01:53:36', '2019-10-08 01:53:36'),
(23, 'pepes', 'pdasdd@gmail.com', NULL, '$2y$10$RivSKekvmXcE0MDkyxqU4OsA1aPkDbJqz7eTKx.XFsouEVabRadAW', NULL, '2019-10-08 01:55:41', '2019-10-08 01:55:41'),
(24, 'pepes', 'pdsdfgvdd@gmail.com', NULL, '$2y$10$u1WDu6kxj3.C45pjQ5.lDOSEnxUNKbG4c61Oz1t4IqElA6bwWZKqe', NULL, '2019-10-08 01:56:40', '2019-10-08 01:56:40'),
(25, 'pepes', 'pdsdsdfgvdd@gmail.com', NULL, '$2y$10$k7ky7iiselwsE.LeuS5l3uCy4yZp8nq3bGxzu7qIjgaqlFtHlVOTC', NULL, '2019-10-08 01:57:01', '2019-10-08 01:57:01'),
(26, 'pepes', 'ninop@gmail.com', NULL, '$2y$10$0EAgMsf/82yho10sgw7Pk.iMIjC.Ljh7XUBEzT6k14NfuVPFYRWXK', NULL, '2019-10-08 01:58:34', '2019-10-08 01:58:34'),
(27, 'nino', 'ninoccp@gmail.com', NULL, '$2y$10$/7o04JQvpL/4.lNdavUJ0O2WXOB63Q6A2oRpwugs9WzbyADXvmIxi', NULL, '2019-10-08 01:59:05', '2019-10-08 01:59:05'),
(28, 'lucho', 'lucho@gmail.com', NULL, '$2y$10$PoWzML5aKW0JEHdmK5/8PuWNKAOcPv0IqmqQBhkYK4ZaBH1mzevvy', NULL, '2019-10-08 02:09:25', '2019-10-08 02:09:25'),
(29, 'alan', 'alanarregui@gmail.com', NULL, '$2y$10$pBkhyeaj8UJ22NIUci9wXOuDEcUArU2qWfPVxXTaWqpVjuLbwoBcy', NULL, '2019-10-13 23:22:36', '2019-10-13 23:22:36'),
(30, 'matias', 'matias@gmail.com', NULL, '$2y$10$r5Xl4MVuaORR3RytDqVrFe0KVAEPoGW3C/m0idECNDBSnkF6lnkJy', NULL, '2019-10-16 01:55:11', '2019-10-16 01:55:11'),
(31, 'titi', 'tit@gmail.com', NULL, '$2y$10$GWuO.LTBQLxbV38KzOJH2OfMFmSZxYYPsy.STrli0BR4npMu.J1DC', NULL, '2019-10-16 01:57:52', '2019-10-16 01:57:52'),
(32, 'pipo', 'piop@gmail.com', NULL, '$2y$10$aKlEAn9OCPE.GmNOYzd/IOBTXbxyej3cqZ9aFWhA6Hb0zmJ0dHGWi', NULL, '2019-10-16 01:59:17', '2019-10-16 01:59:17'),
(33, 'asda', 'loli@gmial.com', NULL, '$2y$10$MKW/LoQ1o2iN8ObXuUNTfONR.9oYermXA0QI9qswLjjDxrYc9zf1W', NULL, '2019-10-16 02:01:15', '2019-10-16 02:01:15'),
(34, 'cadas', 'chico@gmail.com', NULL, '$2y$10$SzLGSeeEM8NFMk5jayF6POLUL4c4sCxY1nGsqt/pVwYNVwjYxrsm.', NULL, '2019-10-16 02:01:59', '2019-10-16 02:01:59'),
(35, 'cvxvxc', 'rtrt@gmail.com', NULL, '$2y$10$9IC4wX3NhVA/XT2Netmx5.6j2YEOuNgbUs43DJU6b2vquZLmK3zMi', NULL, '2019-10-16 02:04:31', '2019-10-16 02:04:31'),
(36, 'dasdaass', 'treter@gmail.com', NULL, '$2y$10$i0qNYb3IZcgnKX5VaxmOc.WhjMr38TN/bWRjm8Qfk9G4KMRiDEJte', NULL, '2019-10-16 02:08:39', '2019-10-16 02:08:39'),
(37, 'lulo', 'lulo@gmial.com', NULL, '$2y$10$f5GfkBGl3DPQH2k4B3cHCeXNzaEGD.ZO3idQbc3V13Xn9.vtxfJUq', NULL, '2019-10-17 00:22:46', '2019-10-17 00:22:46'),
(38, 'asdas', 'juanma@gmail.com', NULL, '$2y$10$qxhvwqjIROWzljWSy8ObbeQDsKrMcqYoMl0SDTt.bUyxUn0Ujgffa', NULL, '2019-10-19 02:12:13', '2019-10-19 02:12:13'),
(39, 'asdasd', 'juantyty@gmail.com', NULL, '$2y$10$QIL1gCy45De/CYlc1vKYheOwcCJGpc5OOB7sJHnK53h6q2GYSng2q', NULL, '2019-10-19 02:29:00', '2019-10-19 02:29:00'),
(40, 'asd', 'juanth@gmail.com', NULL, '$2y$10$YYdVZna7bLEfAL5dZSySP.HLoj1U3p9bT7Axzmjc7ysnzWHgYSDfK', NULL, '2019-10-19 02:36:47', '2019-10-19 02:36:47'),
(41, 'trtr', 'juanhyh@gmail.com', NULL, '$2y$10$92WfoWGw4mmssBWa1UxraOBanvUFC3iXl.wRaGsETZ0N9gOZ6QSHO', NULL, '2019-10-19 02:39:03', '2019-10-19 02:39:03'),
(42, 'trtr', 'juanhycch@gmail.com', NULL, '$2y$10$f8nx3My1WhtDOR4voBnsU.8edOWZdfYTD60P2Hw9v93oxiIj48vmm', NULL, '2019-10-19 02:40:27', '2019-10-19 02:40:27'),
(43, 'xzcxz', 'asds6@fgf.com', NULL, '$2y$10$e.AUO536q3IVadxV8wfwAuU/kNVFlFB8etE/fYY3GZGt90CEFM09.', NULL, '2019-10-19 02:41:27', '2019-10-19 02:41:27'),
(44, 'asdas', 'juanddf@gmail.com', NULL, '$2y$10$6eIpFgTzv6svuGHu0Mz5TeTKPByLpK6tEs0YBmR3ZyqI/IARznDGq', NULL, '2019-10-19 05:52:15', '2019-10-19 05:52:15'),
(45, 'adsdasda', 'juanhjy@gmail.com', NULL, '$2y$10$hpWVAv.6WFvV84.ZTx5Vd.m1qh41jgzajjh36loZdTBw3J6beQXU2', NULL, '2019-10-19 05:59:56', '2019-10-19 05:59:56'),
(49, 'das', 'alanadcdc@gmail.com', NULL, '$2y$10$6LW8rlNQKLgxZL3jF2dCpu/5UBlV9A.TbqFW.HRL/Q2zyPexpGvhi', NULL, '2019-10-20 02:41:38', '2019-10-20 02:41:38'),
(50, 'das', 'alanvv@gmail.com', NULL, '$2y$10$LZASD7VJCQNkK8B2XPRIo.Fe1NXAtS8FTYicSruj34LhyohIspZC2', NULL, '2019-10-20 02:41:55', '2019-10-20 02:41:55'),
(51, 'das', 'alanvccv@gmail.com', NULL, '$2y$10$DALg14xY7QzT0yfJ6dttjuUFQeBKfn8.jCI57zr4QA52GbH493dPC', NULL, '2019-10-20 02:43:05', '2019-10-20 02:43:05'),
(52, 'das', 'axxccc@gmail.com', NULL, '$2y$10$pYv2WHWfw3/S1aJeCAWAm.5fQ63B9rb8S.gINriayQvmcr7Ehsl/e', NULL, '2019-10-20 02:44:00', '2019-10-20 02:44:00'),
(53, 'asdas', 'asdas@gmaill.com', NULL, '$2y$10$pBOiKrid5oc/CYo0DGXW6u7qUBbKYBWbDc1duaDPMVOrs8yM9Kl4e', NULL, '2019-10-20 02:45:19', '2019-10-20 02:45:19'),
(54, 'zxc', 'alanazzxx@gmail.com', NULL, '$2y$10$CIQts33.gdLFqUEFFuHBzOKrZXdcVUmAWPFl4uxqEsBd.8ohIFp5y', NULL, '2019-10-20 02:46:25', '2019-10-20 02:46:25'),
(55, '123', 'alsdanadcdc@gmail.com', NULL, '$2y$10$BOJanE2PjZJTq/k5ANDChOPMqJ461hL1YKCq9eKNUd3vETIDvpP42', NULL, '2019-10-20 02:48:07', '2019-10-20 02:48:07'),
(56, 'piop', 'piop@gmail.xom', NULL, '$2y$10$iRw8BkcWXFDOsexTNh8LV.o3x3D7Twm1wJ90GsJne5oMDfrwdlXDG', NULL, '2019-10-26 23:54:03', '2019-10-26 23:54:03'),
(57, 'mario', 'marios@gmail.com', NULL, '$2y$10$FZfqmZKJMaXHlg58k6V8kucbdyZbfj.3P3fm76fbAEdwW.K5DIXiS', NULL, '2019-11-01 18:02:02', '2019-11-01 18:02:02'),
(58, 'nico', 'nico@gmail.com', NULL, '$2y$10$/LRZ9tM3gTf0G.Xu5y/8Ye4zcen1/2ZxnL2XelZCtaysOfuzOYK.2', NULL, '2019-11-01 18:02:47', '2019-11-01 18:02:47'),
(59, 'nico', 'nicorr@gmail.com', NULL, '$2y$10$7sOdMuw6PW4AHjJ6ErRas.6fK.QLQppAFsxK3SqObM19ZGOIWbfLm', NULL, '2019-11-01 18:10:40', '2019-11-01 18:10:40'),
(60, 'nico', 'nicoff@gmail.com', NULL, '$2y$10$9kB/edU0d1cMZb7ZhAykruJDoueBOycrg4f.oQ3BpgqQOx2HLbNom', NULL, '2019-11-01 18:13:36', '2019-11-01 18:13:36'),
(61, 'pepo', 'pepo@gmail.com', NULL, '$2y$10$g8eAQsJI3ZnnFYmNoGwTWu0TMcVUj8KggeptOGKEQaKeY0qgWzXSq', NULL, '2019-11-01 18:21:07', '2019-11-01 18:21:07'),
(62, 'pepo2', 'pepo2@gmail.com', NULL, '$2y$10$gsUwDeui9GsWX5Iab7mPWOOu8DTlzjRZR5dsz5BXNApEvIYjCS9sC', NULL, '2019-11-01 18:22:32', '2019-11-01 18:22:32'),
(63, 'nicor', 'nicope@gmail.com', NULL, '$2y$10$LryyCQ/GLK3Dc0/FwvJxReQ95zJWgG8omG5dInlYSlTNcPZOgKFju', NULL, '2019-11-01 18:24:56', '2019-11-01 18:24:56'),
(64, 'pepo2', 'pepo2ee@gmail.com', NULL, '$2y$10$3aeEp/mGmFWC0e4YiwOqiOKn.5VQxl71xBbaPGXtGAXXVonv4X.Fu', NULL, '2019-11-01 18:25:07', '2019-11-01 18:25:07'),
(65, 'nicor', 'nicoddf@gmail.com', NULL, '$2y$10$KrCsj1.tykK5OWVAbDwKY.KeLrEA2z0cihx/ZU8wOvOIBOJVyC0KW', NULL, '2019-11-01 18:25:46', '2019-11-01 18:25:46'),
(66, 'pepo2', 'pepoghg2ee@gmail.com', NULL, '$2y$10$InrgXkraTd1E2euz.1DMce4FhQf/QpSxyLlhZPVyvfGWQ4MzySvYi', NULL, '2019-11-01 18:25:58', '2019-11-01 18:25:58'),
(67, 'pepo2', 'pepsadaoghg2ee@gmail.com', NULL, '$2y$10$V8KIIacr0L2hJJEBFMgfeO11vxmMjafuiycyTkWkg1x7AQSCG3bnm', NULL, '2019-11-01 18:27:11', '2019-11-01 18:27:11'),
(68, 'nicor', 'nitr@gmail.com', NULL, '$2y$10$45h6wptWpSR2VF4UMEl3MuPagvjF5kxKWl.p0Nhx0vD3xTmIRR5za', NULL, '2019-11-01 18:27:23', '2019-11-01 18:27:23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`idAdministrador`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `entrega`
--
ALTER TABLE `entrega`
  ADD PRIMARY KEY (`idEntrega`),
  ADD UNIQUE KEY `idOrden_UNIQUE` (`idOrden`),
  ADD KEY `fk_entregado_users_idx` (`idUser`),
  ADD KEY `index3` (`idOrden`);

--
-- Indices de la tabla `especificacionesproducto`
--
ALTER TABLE `especificacionesproducto`
  ADD PRIMARY KEY (`idespecificacionesproducto`);

--
-- Indices de la tabla `especificacionesregistradas`
--
ALTER TABLE `especificacionesregistradas`
  ADD PRIMARY KEY (`idEspRegistradas`),
  ADD KEY `fk_especificacionesregistradas_especificaciones_idx` (`idEspProducto`),
  ADD KEY `fk_especificacionesregistradas_orden_idx` (`idOrden`);

--
-- Indices de la tabla `estadotipo`
--
ALTER TABLE `estadotipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `garantia`
--
ALTER TABLE `garantia`
  ADD PRIMARY KEY (`idGarantia`),
  ADD KEY `fk_garantia_orden_idx` (`idOrden`);

--
-- Indices de la tabla `local`
--
ALTER TABLE `local`
  ADD PRIMARY KEY (`idLocal`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `observacion`
--
ALTER TABLE `observacion`
  ADD PRIMARY KEY (`idObservacion`),
  ADD KEY `fk_observacion_orden_idx` (`idOrden`),
  ADD KEY `fk_observacion_usuario_idx` (`idUser`);

--
-- Indices de la tabla `orden`
--
ALTER TABLE `orden`
  ADD PRIMARY KEY (`idorden`),
  ADD KEY `fk_orden_tecnico_idx` (`idTecnico`),
  ADD KEY `fk_orden_cliente_idx` (`idCliente`),
  ADD KEY `fk_orden_servicio_idx` (`idServicio`),
  ADD KEY `index6` (`idLocal`),
  ADD KEY `fk_orden_prioridad_idx` (`idPrioridad`),
  ADD KEY `fk_orden_estado_idx` (`estado`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idPersona`);

--
-- Indices de la tabla `prioridad`
--
ALTER TABLE `prioridad`
  ADD PRIMARY KEY (`idPrioridad`);

--
-- Indices de la tabla `recibido`
--
ALTER TABLE `recibido`
  ADD PRIMARY KEY (`idRecibido`),
  ADD KEY `inde` (`idUser`),
  ADD KEY `index3` (`idOrden`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`idServicios`);

--
-- Indices de la tabla `servicioespecificaciones`
--
ALTER TABLE `servicioespecificaciones`
  ADD PRIMARY KEY (`idServicioespEcificaciones`),
  ADD KEY `fk_servicioespecificaciones_servicio_idx` (`idServicio`),
  ADD KEY `fk_servicioespecificaciones_serviciofk_servicioespecificaci_idx` (`idEspecificaciones`);

--
-- Indices de la tabla `tecnico`
--
ALTER TABLE `tecnico`
  ADD PRIMARY KEY (`idTecnico`);

--
-- Indices de la tabla `tecnicoservicio`
--
ALTER TABLE `tecnicoservicio`
  ADD PRIMARY KEY (`idTecnicoServicio`),
  ADD KEY `fk_tecnicoservicio_servicio_idx` (`idServicio`),
  ADD KEY `fk_tecnicoservicio_tecnico_idx` (`idTecnico`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `entrega`
--
ALTER TABLE `entrega`
  MODIFY `idEntrega` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `especificacionesproducto`
--
ALTER TABLE `especificacionesproducto`
  MODIFY `idespecificacionesproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `especificacionesregistradas`
--
ALTER TABLE `especificacionesregistradas`
  MODIFY `idEspRegistradas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estadotipo`
--
ALTER TABLE `estadotipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `garantia`
--
ALTER TABLE `garantia`
  MODIFY `idGarantia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `local`
--
ALTER TABLE `local`
  MODIFY `idLocal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `observacion`
--
ALTER TABLE `observacion`
  MODIFY `idObservacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `orden`
--
ALTER TABLE `orden`
  MODIFY `idorden` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `prioridad`
--
ALTER TABLE `prioridad`
  MODIFY `idPrioridad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `recibido`
--
ALTER TABLE `recibido`
  MODIFY `idRecibido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `idServicios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `servicioespecificaciones`
--
ALTER TABLE `servicioespecificaciones`
  MODIFY `idServicioespEcificaciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `fk_administrador_users` FOREIGN KEY (`idAdministrador`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_cliente_users` FOREIGN KEY (`idCliente`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `entrega`
--
ALTER TABLE `entrega`
  ADD CONSTRAINT `fk_entregado_users` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `especificacionesregistradas`
--
ALTER TABLE `especificacionesregistradas`
  ADD CONSTRAINT `fk_servesp_espreg` FOREIGN KEY (`idEspProducto`) REFERENCES `especificacionesproducto` (`idespecificacionesproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fl_servesp_orden` FOREIGN KEY (`idOrden`) REFERENCES `orden` (`idorden`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `garantia`
--
ALTER TABLE `garantia`
  ADD CONSTRAINT `fk_garantia_orden` FOREIGN KEY (`idOrden`) REFERENCES `orden` (`idorden`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `observacion`
--
ALTER TABLE `observacion`
  ADD CONSTRAINT `fk_observacion_orden` FOREIGN KEY (`idOrden`) REFERENCES `orden` (`idorden`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_observacion_usuario` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `orden`
--
ALTER TABLE `orden`
  ADD CONSTRAINT `fk_orden_cliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_orden_estado` FOREIGN KEY (`estado`) REFERENCES `estadotipo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_orden_local` FOREIGN KEY (`idLocal`) REFERENCES `local` (`idLocal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_orden_prioridad` FOREIGN KEY (`idPrioridad`) REFERENCES `prioridad` (`idPrioridad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_orden_servicio` FOREIGN KEY (`idServicio`) REFERENCES `servicio` (`idServicios`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_orden_tecnico` FOREIGN KEY (`idTecnico`) REFERENCES `tecnico` (`idTecnico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `fk_persona_user` FOREIGN KEY (`idPersona`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `servicioespecificaciones`
--
ALTER TABLE `servicioespecificaciones`
  ADD CONSTRAINT `fk_servicioesp_esp` FOREIGN KEY (`idEspecificaciones`) REFERENCES `especificacionesproducto` (`idespecificacionesproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_servicioesp_servicio` FOREIGN KEY (`idServicio`) REFERENCES `servicio` (`idServicios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tecnico`
--
ALTER TABLE `tecnico`
  ADD CONSTRAINT `fk_tecnico_users` FOREIGN KEY (`idTecnico`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tecnicoservicio`
--
ALTER TABLE `tecnicoservicio`
  ADD CONSTRAINT `fk_tecnicoservicio_servicio` FOREIGN KEY (`idServicio`) REFERENCES `servicio` (`idServicios`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tecnicoservicio_tecnico` FOREIGN KEY (`idTecnico`) REFERENCES `tecnico` (`idTecnico`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
