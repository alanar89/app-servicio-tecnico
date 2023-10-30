-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-08-2019 a las 21:13:34
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET FOREIGN_KEY_CHECKS=0;
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` bigint(20) UNSIGNED NOT NULL,
  `redesSociales` varchar(245) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especificacionesproducto`
--

CREATE TABLE `especificacionesproducto` (
  `idespecificacionesproducto` int(11) NOT NULL,
  `nombre` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Estructura de tabla para la tabla `estadoorden`
--

CREATE TABLE `estadoorden` (
  `idEstadoOrden` int(11) NOT NULL,
  `idOrden` int(11) DEFAULT NULL,
  `idObservasion` int(11) DEFAULT NULL,
  `estadoActual` date DEFAULT NULL,
  `precio` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `local`
--

CREATE TABLE `local` (
  `idLocal` int(11) NOT NULL,
  `local` varchar(145) DEFAULT NULL,
  `direccion` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
('011c8e46a8033e08b21bb4ef628233b25a6ea04be9084c94bb13537d446c4917b02dacc98ab3169d', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:28:08', '2019-08-20 20:28:08', '2020-08-20 17:28:08'),
('02ff837611734fca6033e47f7b64b3a1661a74fd0f9411d59895004d4145b8e37574515734d887d7', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:04:12', '2019-08-23 19:04:12', '2020-08-23 16:04:12'),
('031cdef8d337219d431a40a617e3f7b8f3fd13b4923198971711bf1bd0a1ee2cbc1c95f02d5bdaf9', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:20:46', '2019-08-20 20:20:46', '2020-08-20 17:20:46'),
('0460b44c1b2a110a485a81c981bd7e7668fe6638f379ad61a20bbe084459930d46b1b2c455d1bd6f', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:56:48', '2019-08-14 23:56:48', '2020-08-14 20:56:48'),
('0488632417ecce1de62c97e27e0df506509948892bc21b0c8a4d24bd96d6c08434c3d0caa7f91e67', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:32:33', '2019-08-20 20:32:33', '2020-08-20 17:32:33'),
('05298bb111feb83d0eb2cec2ee27775470777a24845ad6c7932635f35b9b91608a6504909d1788a6', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:10:53', '2019-08-20 20:10:53', '2020-08-20 17:10:53'),
('08615c5fe668f08567749d61c71cf11d8ed9cf7d5c8789b66e480ae8da7e9d5ef3ee012efd1291f4', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:12:58', '2019-08-20 20:12:58', '2020-08-20 17:12:58'),
('09b88821f5ed57d637cc355348b5817f735dad97882390e3125673acccdde09776ade8b4798c6a21', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:37:41', '2019-08-14 23:37:41', '2020-08-14 20:37:41'),
('0b221c8e6d03b89f30a6d54e6f40ffecf3484cf60e1d981490073b11f8b3dd450066c5df702771b7', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:37:14', '2019-08-20 20:37:14', '2020-08-20 17:37:14'),
('0bef7fafcc0a73ab1cf119e787e1050fc01904c6bff80f83215a1640c180ac00ee3206aef4a661a1', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:56:35', '2019-08-20 20:56:35', '2020-08-20 17:56:35'),
('0c2873a00059f363f840de346954e070b137c2289911c2413a94c4f3b75a0d460952377f3916587f', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-24 23:02:28', '2019-08-24 23:02:28', '2020-08-24 20:02:28'),
('0c347dd37ea48d8fc975131db191f57a47fa8481d7288d29c19d5bdb11639fd75a9df6eb2eadf895', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:02:41', '2019-08-20 20:02:41', '2020-08-20 17:02:41'),
('0c3fb71acdfd5a03bf44f3ca7f8d220858e3a2db598b5b56e11315b845ec11385d966416ec503709', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:28:21', '2019-08-20 20:28:21', '2020-08-20 17:28:21'),
('0c50f1bb6e29d028fd8821637e000fd719cd5d56b7f07ae43d128099edd46cb9f55950fa64d062b0', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:08:31', '2019-08-20 20:08:31', '2020-08-20 17:08:31'),
('0c79f712d420374b8961ab0e8da9c9a33d6aa4c5448caaeec5d064079b690c78fa5657dc8870a3ef', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:10:16', '2019-08-20 20:10:16', '2020-08-20 17:10:16'),
('0dbaaa38d9edf0bea36f0fb5c921b56707e2678656f5bcf14f8e57ba585e523f0f1d4ba7e08802ae', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-15 00:07:27', '2019-08-15 00:07:27', '2020-08-14 21:07:27'),
('0e0fcec0f370c999d90738eae5f6dea782dd0698425db4f8375993a92ec04b43926d1ba399fab1b0', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:37:29', '2019-08-20 20:37:29', '2020-08-20 17:37:29'),
('0e2c89ea678322301a5083d05eb0cc45c1d1b728c1fb8f8f70b9e8fbe2b132cc9562ce9328232b4f', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-15 00:07:47', '2019-08-15 00:07:47', '2020-08-14 21:07:47'),
('0ef616e5d8d5bf1ffc76cf4690ba126a210b2ac2538ddbee6b2c0da235999339f74d0f36cab9434d', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:06:23', '2019-08-20 20:06:23', '2020-08-20 17:06:23'),
('0f06f7788f409e469ae5fa42275e83f086b298836e1177da8b2d2264dab4bcc32d9b746dda744a3f', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:58:16', '2019-08-14 23:58:16', '2020-08-14 20:58:16'),
('11e8e1829916d3ad816cd74fc5c55a6c4e6d79b0fe625740b01ef458699dd6ed9cb2cbc64d794133', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:26:40', '2019-08-20 20:26:40', '2020-08-20 17:26:40'),
('1233b44e572b2a906d3feaaf1cdc3a38313731e9108dab8cc5cfa17c40743ced0b050dae5f7f5e76', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:33:37', '2019-08-20 20:33:37', '2020-08-20 17:33:37'),
('125d067e45ae4f85ca663a1429cdaa955a0380b2d135954cb7884edc878f28a1d24fdde7cbb7bf40', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:18:18', '2019-08-17 01:18:18', '2020-08-16 22:18:18'),
('1262157ccc5559b28e2d0e06a6c626821f1d20d200fe2ef2068d109e872213c36e14c33fe7bc0771', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:27:17', '2019-08-20 20:27:17', '2020-08-20 17:27:17'),
('133182e0f81c56d5f4ceb0534491ac183fbcb5760c5a096b29b14533dc226838e9167d9443de3eeb', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-24 23:01:36', '2019-08-24 23:01:36', '2020-08-24 20:01:36'),
('134c26ee51a387658787c3db0949faa3d3a7d5678dac83857c030d4a9ce5f345688eb59efc383d2b', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:13:15', '2019-08-20 20:13:15', '2020-08-20 17:13:15'),
('1383fe6e534770facc3ff6f20c0f2dce8e30910b7dc120d292673d886153caa29f8a76c257f63330', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:28:20', '2019-08-20 20:28:20', '2020-08-20 17:28:20'),
('16399ef611dd5ec130b643cf4828026f2cf396352b4220c7d3216abbdf6602f681a99ee5ae21a48a', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:39:55', '2019-08-20 20:39:55', '2020-08-20 17:39:55'),
('164204598d586bd3c1f6e6a6644ea9faae86924832bb61a80052a3d7bc865803f36b62e692aeb802', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:19:50', '2019-08-17 01:19:50', '2020-08-16 22:19:50'),
('16899c5875a59f02cdaee34d0d244b03d549a8969b2dada8bdf8a771a13435d61009467c8241a5de', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:39:07', '2019-08-20 20:39:07', '2020-08-20 17:39:07'),
('17d8d614e514da685ba262d92bf311f085e15514e350d2aae5bb4e8bae257ee7e2823d592e136a62', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:34:44', '2019-08-20 20:34:44', '2020-08-20 17:34:44'),
('188e76d7670f5cc9c061b6a97d30ef0b2afbcc876d248739efbf1c2083a2613929be1af0d306926c', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:35:41', '2019-08-20 20:35:41', '2020-08-20 17:35:41'),
('190df2ee0e921592e88ffae4737c60a91b1f232ccce8dfb87cbf4877ad0cb268dbde7acd06330379', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:13:35', '2019-08-20 20:13:35', '2020-08-20 17:13:35'),
('1baca79f36a6f872c5ae883419f5307c31afd48bfc62f38db5af4ec60fbdd1e20a4035f129c9ef5d', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-15 00:08:19', '2019-08-15 00:08:19', '2020-08-14 21:08:19'),
('1c28412811876ff5223dee64195db31355dfa0c5580e474716c2f3222192ba8357f355effb731935', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:13:35', '2019-08-20 20:13:35', '2020-08-20 17:13:35'),
('1cc3f3cf55e402a8be8384080ed199f13b1ab44ed648ecd3469e9fbc9df59961741671f29b68157c', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:35:24', '2019-08-20 20:35:24', '2020-08-20 17:35:24'),
('1d7cb198f9978d95598f819f65dbd9c20a07c6f6810498ee3044284b388f9bdef63a37f3b25c20e5', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-22 22:15:35', '2019-08-22 22:15:35', '2020-08-22 19:15:35'),
('1e0acff79724620449ed2dcedb1c2e150a361fda1e6b152479d57ca303cfb743989548daf8ce8f50', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-22 22:00:48', '2019-08-22 22:00:48', '2020-08-22 19:00:48'),
('1e24286654558c8b117233219109cea696a554ececf0c2e3dba4cd0d52d6b954bc3a5a10c8041e97', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:13:59', '2019-08-20 20:13:59', '2020-08-20 17:13:59'),
('1e9266fcd5ad47b380458481b68c14043dd578ab192e6baeef3c6e414d559edfca95785a04303823', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:09:29', '2019-08-20 20:09:29', '2020-08-20 17:09:29'),
('1f7d3559c0867b866ca90a81f7cd4f8cc6afa1f2ce23ac5cc82efd094d1b83cf288870af9b257b1d', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:14:00', '2019-08-20 20:14:00', '2020-08-20 17:14:00'),
('20588aac517fb38d0bb0c94c1043ebb155e18ccd47db41f60fc82ad6a9f33e6f7b64e3ada1d3c2d3', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:59:13', '2019-08-20 20:59:13', '2020-08-20 17:59:13'),
('22aa577fa8461b34f954aad055b93e42825e0a32aee178194ca0cb15bfb43c93be4c3788c76389da', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:04:02', '2019-08-20 20:04:02', '2020-08-20 17:04:02'),
('23b568c179fe8b53b10418895eedb3d4fbb71570d2ce5a6e5d755dd58e0210cae11accebac792bec', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:42:19', '2019-08-14 23:42:19', '2020-08-14 20:42:19'),
('25ff413a71d8e3166e721ce49c2358a11ea8a6203e342ea6f15efaeb7ab1eaff284de2cf4aa727a8', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-24 23:15:15', '2019-08-24 23:15:15', '2020-08-24 20:15:15'),
('2743a0b124e587c74052548d05241d6ac56197febc8c40d90bc4c814703af010df94e3ff604e3963', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:23:17', '2019-08-20 20:23:17', '2020-08-20 17:23:17'),
('2a3ababe2354f6746ae2614a06820eb1123c6db36382299c0947fb2b1a5fe2cea2a68290f0416fe0', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:34:29', '2019-08-20 20:34:29', '2020-08-20 17:34:29'),
('2dd3f78d166c88a1caf8071cc9d8362c2004988160c519b5a96a0ed547ceded0819b276398f25775', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 22:08:22', '2019-08-26 22:08:22', '2020-08-26 19:08:22'),
('2ee27a47b00ae2b05b47f219a329c7f3ed51fa585581314e76b3c87c6918118c9a0ae26cf37bb4b3', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:36:09', '2019-08-20 20:36:09', '2020-08-20 17:36:09'),
('3041537a3e54b2f285ab61974371e854aee9800163151e9cf8e56a724ddc160d2dcf7b350389b0c6', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:21:49', '2019-08-20 20:21:49', '2020-08-20 17:21:49'),
('3069da6ffb0f53c1af8771b6203f6795b0f9df15b263a262aa64116caa01d173c961b32d0d9f2497', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:48:24', '2019-08-20 20:48:24', '2020-08-20 17:48:24'),
('30aa68ddcc5077f1080ee6bc94a94dd769584eb4cca33978c29bd3a50232a3ad239ff09287ae35ac', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:44:02', '2019-08-20 20:44:02', '2020-08-20 17:44:02'),
('311ffd3eafec7eb4e050eb6eb97c1395a0b42e6034b452d3537c08295b5e9a421d0e222600124810', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:15:21', '2019-08-17 01:15:21', '2020-08-16 22:15:21'),
('313a4bf475a277527d2757e2110191f8ad50aa7f37967d826525131c079246c04a084f85760413d6', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:47:29', '2019-08-20 20:47:29', '2020-08-20 17:47:29'),
('318571aaecc77e12e2eed4f112fa733b2e698ab50c0aa9b6c1c043c83c9f07e0710cf8ca48867906', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-15 00:12:31', '2019-08-15 00:12:31', '2020-08-14 21:12:31'),
('327b49e85b322d10e767c8cd70ddc10b99d1272f0a940091fb5e9ec4380eab79e4187e2ca26ce0ec', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:47:22', '2019-08-20 20:47:22', '2020-08-20 17:47:22'),
('347a507407e427368b922af368ea4bf57a211d37c8615653a778964a7466da91479829984a870205', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:40:06', '2019-08-20 20:40:06', '2020-08-20 17:40:06'),
('35320a39bd87e5e3b0754e1b9036ecad43ead0a8c4ec2963df178ab25495fa20db1fd6c6a83d1bdd', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:56:30', '2019-08-14 23:56:30', '2020-08-14 20:56:30'),
('35d8b1cb049a22dda2eb12e00bad53596b2fd2e3ca56f07fd997f05006204a0173f349cbdccbc786', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:38:23', '2019-08-20 20:38:23', '2020-08-20 17:38:23'),
('37716e26b67ad2343c998428b094353f9559fecbf7e2d70ef861e74c855838e53cd0f60f5d66624c', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:10:13', '2019-08-20 20:10:13', '2020-08-20 17:10:13'),
('37b33c3b58ce8947a6e52b0454f099d042efba10a39fe5faf712778e40b58e78063080b2affa807a', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:19:15', '2019-08-17 01:19:15', '2020-08-16 22:19:15'),
('38b2cba12e9be01324d8777d7c93bb3271453abf7fed055b2eaddae1c9178a611bbd202280b949bb', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:15:43', '2019-08-17 01:15:43', '2020-08-16 22:15:43'),
('38e48e64e3bccd26781592473dd980cd339878ca5a0a10f988f5e444cb624c79defa65b7bf70fa10', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:16:40', '2019-08-17 01:16:40', '2020-08-16 22:16:40'),
('3c921743d11e4fcec50261648d595aec1847b0697dbe64880cd03e626cf4df22b189acf4b656fec1', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:35:59', '2019-08-20 20:35:59', '2020-08-20 17:35:59'),
('3d846485a133827669271676d2c4d94c69c12bc16bffc0a468e5f6e6b97dc43c253092f6bcb97b6f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-25 00:21:31', '2019-08-25 00:21:31', '2020-08-24 21:21:31'),
('3f110bada4c659d7e93f3f5c65f839782b62408c6064729fa3a7646483493ba7ce8dfb62248c3e60', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:35:14', '2019-08-14 23:35:14', '2020-08-14 20:35:14'),
('40755ea41e30986fd972f2498ebcffd0a5aaf8e0e0e104fe12ad7d458246805a365a35add54eadba', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 19:54:44', '2019-08-20 19:54:44', '2020-08-20 16:54:44'),
('40b2f16239b852f04cde222dd9eebca3bf54490df0947bdcfd5e52f2e71e2fa70748967afc3d4791', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:26:58', '2019-08-20 20:26:58', '2020-08-20 17:26:58'),
('416ae29ebdc19a7b7d4fa217f72e89511871843666d84265591a1970bb67fccb4f4bc4c3b2894c1b', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 16:58:02', '2019-08-14 16:58:02', '2020-08-14 13:58:02'),
('41d651c28cb2cc0e5351fa19d60f353543616141fe6e8ae149188a0ef0f5b5207ff3aa1064beca4b', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-24 23:25:36', '2019-08-24 23:25:36', '2020-08-24 20:25:36'),
('42b010cef48b09183c727183f9a88be196a96fcd5f5d4b8a4b8f147e3f91b7aedc1e667a2ce1db27', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:33:56', '2019-08-20 20:33:56', '2020-08-20 17:33:56'),
('43e786a0c6a13ae3c1081fe6abee948aec4bf89276bdc3dbc1c0de4c14b95cd672d26c1e90164650', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:10:06', '2019-08-20 20:10:06', '2020-08-20 17:10:06'),
('43ead9311d1ae84e7fb6d3afa049347ec20c4073b7407fdbc8bbc41afc7bd27783a8431cdaa892c7', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:39:24', '2019-08-20 20:39:24', '2020-08-20 17:39:24'),
('459a5be88023d5d0e5276b9e8862b474df81298b77b881c9a47c63735fccdd56ebe7ac396e1641b6', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:04:14', '2019-08-23 19:04:14', '2020-08-23 16:04:14'),
('46cae8f3731c7cc108e7305cd81dd9c6f746f0effcaee4b71c6fa27d5a8c1681cd4fbd93d33b50ed', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:14:45', '2019-08-20 20:14:45', '2020-08-20 17:14:45'),
('4b147e619fe4e38cb91a0ce68cd8e84e7a0d8e605a3a98963a5473e4763e2fd36031771ed9921522', 3, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-08-25 00:18:51', '2019-08-25 00:18:51', '2020-08-24 21:18:51'),
('4b883d5007dae6bfac0289621f80ef65b87d04cb9f5c53a515fccf785cd62c0adbc852b61164f4d9', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:04:18', '2019-08-23 19:04:18', '2020-08-23 16:04:18'),
('4be75c231052dc21f54974d70f1cdee85f6b5dc029c1fd77784e231f0810f1d83ed56b294d44e51b', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:35:12', '2019-08-14 23:35:12', '2020-08-14 20:35:12'),
('4e0d816a6cccdbb3fb5bc3596adb9c6642272448b04cfddaacd9da64ab58ab2c67eb0e9180c769c1', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:12:52', '2019-08-20 20:12:52', '2020-08-20 17:12:52'),
('500402de86cd9ab8622e07def3ba8e424152163708ad6903a76eb7ad5ced2bf67edbd490be43517e', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:25:06', '2019-08-17 01:25:06', '2020-08-16 22:25:06'),
('5074f16c9bc1b13da6c97fbf4a869ab97a397df15cb84c8c452512418d2ae91bb1a8e6d91288b324', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:42:18', '2019-08-14 23:42:18', '2020-08-14 20:42:18'),
('5244be4b9cbf1ce7652a3138e6f50f134f79f6fc1ff4995e30bfb2d8882650c3010dd26aa97b129f', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-24 23:08:31', '2019-08-24 23:08:31', '2020-08-24 20:08:31'),
('52b6ae87de6c1028f5552ca7018d605bb3692ed2f213e1916ab794d21c18b526ad9b4975cfeeaf74', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:56:28', '2019-08-14 23:56:28', '2020-08-14 20:56:28'),
('565d9db0b6df5d8f00a7788b1e20d8653a95765f567001dda326847d3f8e1c104b2d8b8274c19614', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:35:08', '2019-08-20 20:35:08', '2020-08-20 17:35:08'),
('576864ce9878eb922a344e1fcf41faffdf4752a54af397ded4bbd17e02150036a693fc6d473d1d7c', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:14:01', '2019-08-20 20:14:01', '2020-08-20 17:14:01'),
('5e3b85f19841820795754bceff5405715673260648b19a49eaced52386c0afa6cf995ea030f62e6f', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:13:33', '2019-08-20 20:13:33', '2020-08-20 17:13:33'),
('5e84543ff00272f3c3906ec35ffa78ed5c9180b62d007e8ad7a47f0c2a316e3e5c50536af07a6f36', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:05:13', '2019-08-20 20:05:13', '2020-08-20 17:05:13'),
('5ee32d49b6498a79b9b0221f11afc8b72678ca09130dcd4cfef58c77fdf8582e8bbc3a307a5b229f', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 22:07:46', '2019-08-26 22:07:46', '2020-08-26 19:07:46'),
('5fd493788459dc1a77deacedbdeed8091c4742df2b6da3da8e338ade45c97ed509f912bec1730ed4', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 16:59:46', '2019-08-14 16:59:46', '2020-08-14 13:59:46'),
('60ddcf0ec4ddd5d71190be02bd63c91ac0d57395443e9de7701b4aff65e71d1c34bd1b265fa31eff', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:42:29', '2019-08-20 20:42:29', '2020-08-20 17:42:29'),
('62ceb84db655c9942df88cf92782559898060c4b99e9d175ddc6c584bc4f76c591427caac53be59d', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:10:15', '2019-08-20 20:10:15', '2020-08-20 17:10:15'),
('636f7c2b427068368444fca01ff62d41bcf613f8ef074d7521da93e963ab50882da86e84bc84b01d', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 21:16:10', '2019-08-20 21:16:10', '2020-08-20 18:16:10'),
('63d8369ada98869d043989ebbc5eb9e97087c44c9221045a11c821beb579458a4b434547296bf7cb', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 21:16:08', '2019-08-20 21:16:08', '2020-08-20 18:16:08'),
('64390c3e5703f2741f55f53512d56c01dc182738066139dd801054a860807251874bbe9c1a98ed5c', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:04:17', '2019-08-23 19:04:17', '2020-08-23 16:04:17'),
('64a2466b990a5a5bbc1b667131158f05cdfa219d6a04eb779889e5c1e27c721304e6fc389776545e', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:05:54', '2019-08-23 19:05:54', '2020-08-23 16:05:54'),
('65845cddae9d86e409c1f67dee308f3fb2922a2e0cf8917ce615dfa17fd8f8df78208bc7651a6d19', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:49:59', '2019-08-20 20:49:59', '2020-08-20 17:49:59'),
('662d82911a25ea97a1b66ada58c8a4569b7a1fd60c225ba7cfd2ae1620f81d151f2e37bf91b692d9', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-24 23:09:49', '2019-08-24 23:09:49', '2020-08-24 20:09:49'),
('666a936d117a36049377e894547859c17fafa6423cc1db773c4928af0283bbccb354fb84b9657e0c', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 18:53:53', '2019-08-23 18:53:53', '2020-08-23 15:53:53'),
('6825eb4e470f1810fd375aa7b3f04fddea4177f1a0a70136c959c09baf48659aaa29b56116cca01a', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:12:57', '2019-08-20 20:12:57', '2020-08-20 17:12:57'),
('6838ea146d30d136ab2d3485afce34ef6f32efc71ceee38443c0af2affa04074d42cd3738153deae', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:02:58', '2019-08-20 20:02:58', '2020-08-20 17:02:58'),
('6869e5d72cb96a15f6c24c1da09f0c3067fe041f46d5efd8e743f08544883cfa8c1068271245b362', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:20:34', '2019-08-20 20:20:34', '2020-08-20 17:20:34'),
('6970fae8d1ab181b93607521db5e2c928c778ae30e9b74a48138b2a0fe5b220af4e755deaadfa734', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-22 22:13:24', '2019-08-22 22:13:24', '2020-08-22 19:13:24'),
('6b7321ff8f20c7b6977d13bfe9ae8861cb0378d0bfe84fb5e1effa7c988d9fe81c5aa14435f232d0', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-25 00:19:35', '2019-08-25 00:19:35', '2020-08-24 21:19:35'),
('6c295cce7d25ae10a6df2ce78615ea9c8c00722f412877cb5f3c093279d62997de04508574db0420', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:39:11', '2019-08-14 23:39:11', '2020-08-14 20:39:11'),
('6de77f7259dd5790c2cf1d738a9c687adfe8db60232630d137a3d4b067057b9fb19b53dddbb8285c', 3, 3, 'Personal Access Token', '[\"cliente\"]', 0, '2019-08-25 00:20:54', '2019-08-25 00:20:54', '2020-08-24 21:20:54'),
('6dee915209c5e5e66373205e23ba6af317d940f049a67d5178ca873305b1b3bf1b1716951de06528', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:57:17', '2019-08-20 20:57:17', '2020-08-20 17:57:17'),
('70c12f96c1a6cf1d71c8c0f00621b61cfde1f2dd1ad7e75a93f9771ed606cf56b1295f3267058793', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-22 22:14:51', '2019-08-22 22:14:51', '2020-08-22 19:14:51'),
('70d8305cf7918e8b5792f7a00ca193aa05e7e5e75c3aecfa2bda7814460f317d5f1ff33ea1acb519', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 16:50:29', '2019-08-14 16:50:29', '2020-08-14 13:50:29'),
('72516efafcbc8fe970f23b7274a2080c0e16c19b7764cb277ceb8d29557554ff0eaa70c5f7aa82b9', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:26:42', '2019-08-20 20:26:42', '2020-08-20 17:26:42'),
('72655bc042cd3e184ca196a9f1ec328dcfbf71a424c57feb9ed96472e59e22a528b9d572b435c4c5', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:04:14', '2019-08-23 19:04:14', '2020-08-23 16:04:14'),
('72deda3667c1666e703b10ee5cbd84cd3bedcaa6dec4d00a3a621f7dde64c666b08f75b07429a6f5', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:13:17', '2019-08-20 20:13:17', '2020-08-20 17:13:17'),
('768fc61ed246a2da148f23cb4a2892aefb51ba2390a7dc612e3992a2645725ab1addc63c561f4b75', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:43:58', '2019-08-20 20:43:58', '2020-08-20 17:43:58'),
('76adc6e7841e867f08e88222d1e6887a81a9feabc0335557ffabc9794135cc63d4c4ec0e6998e2ce', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:04:15', '2019-08-20 20:04:15', '2020-08-20 17:04:15'),
('770776e35df331da23c0c80c7627b870c0200932f074a79ae89f31288e527c458c38e5e4e45357b2', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:44:50', '2019-08-20 20:44:50', '2020-08-20 17:44:50'),
('771946e207cfb77ac03dc0377d50ad92c1c9724fbc4832d4caf1c9aed014df5b17a8eaae49962def', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:18:17', '2019-08-17 01:18:17', '2020-08-16 22:18:17'),
('77fdacea597445a57972cd0b9b00383ae3757eec558941612af5ed49f31c4e2e722d39f27e94d7df', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:41:34', '2019-08-20 20:41:34', '2020-08-20 17:41:34'),
('780f4aa5ae7f349a083e4725efafbc07efce970e15e76c28987edb5b07fbcf31b1fcfba04d815cc4', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:13:58', '2019-08-20 20:13:58', '2020-08-20 17:13:58'),
('796aa07f3e78124464b5de5f9de0edbfefddfd4df0a37d3d4a918bb58b452bbcd8d161d71372f3db', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-25 00:19:58', '2019-08-25 00:19:58', '2020-08-24 21:19:58'),
('79f0f221cd9718e50a75e01d5b76f31d4d906af07f932e036f68ba96bf70bedb4d016fb4eb2df046', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:19:19', '2019-08-17 01:19:19', '2020-08-16 22:19:19'),
('7a18a299b8152b9347dfb15460a8624da809fd2d2110ff18c1dd17ca9abd0b9b870e8644131d8818', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:43:33', '2019-08-20 20:43:33', '2020-08-20 17:43:33'),
('7ae46a830f5b4003757ca358b95ca04ddc42585ec5db7aaf3055571d03e27ba20480b2d275d77479', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:38:24', '2019-08-14 23:38:24', '2020-08-14 20:38:24'),
('7b132f4ab59547ac9a503058016a579d8124fc1b92ceaca13027e33c97e738e37178fb048c478a9f', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:58:34', '2019-08-14 23:58:34', '2020-08-14 20:58:34'),
('7b40c09f121af93665fd5cd98c80cfa5c38977484e5e24914a3cb76068b67d381200a16270fd765e', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:34:44', '2019-08-20 20:34:44', '2020-08-20 17:34:44'),
('7c8443b4d16f9c16c7d117da3972a92947e6caf61a2469de70f46c3529440b8b623231c5f1dd24f4', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 18:54:04', '2019-08-23 18:54:04', '2020-08-23 15:54:04'),
('7e35af4a354523fac38a2e8b6b7a57064977fba9419fe471bf68839ca3e958a09318c557a432b763', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:22:49', '2019-08-20 20:22:49', '2020-08-20 17:22:49'),
('7fda5d4f8f09f8137cc8908ad1b9a9fe35ed39b6bab8d8add1d975f9c864ac1c0391c33a6809c03b', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:34:39', '2019-08-20 20:34:39', '2020-08-20 17:34:39'),
('81dffef411e282a70fcd4e4699faec36514f8392c71a9d752b338f984a8af8621e6dcb5523fc0568', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-15 00:09:09', '2019-08-15 00:09:09', '2020-08-14 21:09:09'),
('834f9c49ea621b71dd2ff3f205c7841edce95a463536832627ba062e8c3796e415dde4bf9c4fd746', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:42:17', '2019-08-14 23:42:17', '2020-08-14 20:42:17'),
('835a1fe3e5a225ff0ea4e73f26cd56eac4e65494cf437ee7b0ff6b4b465869ea704335d19c81cba6', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 21:23:04', '2019-08-20 21:23:04', '2020-08-20 18:23:04'),
('83711dabc0e6a86aaf49f3584d81e33687ffe945758f73a325a114d1ac849a16c45caf016505cbb3', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-21 23:05:28', '2019-08-21 23:05:28', '2020-08-21 20:05:28'),
('83ae130d27c8ef3fb7a238e0835fb398bdd7a383b806b11729afeae470accfa687a88b8f157b8b53', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:32:08', '2019-08-20 20:32:08', '2020-08-20 17:32:08'),
('8411cb4b74e22092c2f81592063c44287ff83df045f1f56cb8c4e6819f0e63f783b71962d07d4411', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:38:57', '2019-08-20 20:38:57', '2020-08-20 17:38:57'),
('850c67b4e5d025925582adb279f0ad1e294d5f96383fb096b33e5bd85a16b17e5ecbe3186227cf27', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:43:17', '2019-08-20 20:43:17', '2020-08-20 17:43:17'),
('8568bd943cfa9bf202ddeaa6dcf8dbb8d4813f907a147953b59015aac47113ef3bed8e27f04cabc1', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:21:33', '2019-08-20 20:21:33', '2020-08-20 17:21:33'),
('857812ff314b503c2efc37fa951ff40404e6430fd366563fdb6907ff0706041571543386cdf5c537', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:12:01', '2019-08-20 20:12:01', '2020-08-20 17:12:01'),
('864c8fb28ef150ecebbe50783af614da65daf6d5b1dc09232fba7c859a018e0a441763bcf879b66d', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:26:57', '2019-08-20 20:26:57', '2020-08-20 17:26:57'),
('8687e3f21f220a5823ef87f1ec53bb98f24111eed28b07ff092e06a9a4062fabfaaae12df20a0707', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:19:18', '2019-08-17 01:19:18', '2020-08-16 22:19:18'),
('86eea7dd2fe7dc571d984d829cb8bba2fab9a1b4d08e6f4962b19dfb9263d3c08f833cf51247e4ae', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-24 22:57:25', '2019-08-24 22:57:25', '2020-08-24 19:57:25'),
('873f07fdc1de2482613822dca2315d1791b9e578e0eb70d32b4b0a2166d9391db5d025968eacf399', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:26:59', '2019-08-20 20:26:59', '2020-08-20 17:26:59'),
('88101cb799a1529e937da66ca507a54e70bd047c5ae49374f0a4a758d3aafa6e288f5fd0add54906', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:25:31', '2019-08-17 01:25:31', '2020-08-16 22:25:31'),
('8aa6f616447ea0542d6bc4b3215540d2387a2f801d05496b542d8fb649775eb6be70e211a9a15974', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:13:18', '2019-08-20 20:13:18', '2020-08-20 17:13:18'),
('8aed63ad370d676add77079bb38403da28be4e99773f9b7e5ee8a630c84b3b8e6ff8628b6eaae5c7', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-15 00:12:50', '2019-08-15 00:12:50', '2020-08-14 21:12:50'),
('8caf68be1bbe410564a3fea9360c3edc749d928bd7984a49325287c28ae8d7ace53b287f61aacb21', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:58:43', '2019-08-20 20:58:43', '2020-08-20 17:58:43'),
('8d8d77250c39c0f34f73dfd1e7a5707810b15217891290065772dd8797e89dde1780c67ae557f4f6', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:28:00', '2019-08-20 20:28:00', '2020-08-20 17:28:00'),
('8de9265c78341f1d682296782bfd08ceb1b08b05b5b7b6df2dc5c5600b2117861785e6bc4f9e829d', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:14:45', '2019-08-20 20:14:45', '2020-08-20 17:14:45'),
('93590fc24193bfd42569d60ec8493d7ac2cd5b23273a35869d5d7374a5376ebe218cbbad7e115944', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 18:53:58', '2019-08-23 18:53:58', '2020-08-23 15:53:58'),
('94998dcc7ee56f50ac5c9db9cd1319a809b87678123de6319a34bddf68ad2fb88cdf1f074c299e5a', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:14:46', '2019-08-20 20:14:46', '2020-08-20 17:14:46'),
('95a74fe9aa9545e20034a2302e31ba1776099ba43182ead1edfd6658044b35bdecbb2f417a920c25', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:47:17', '2019-08-20 20:47:17', '2020-08-20 17:47:17'),
('9621cecb78cc8bbbaa8eb88781fbaa40ff72ded229d3aa457994ea8e2496fc88aa1951370dc57d87', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:10:12', '2019-08-20 20:10:12', '2020-08-20 17:10:12'),
('970446f40024962933812a03ec4140105e95c3c29c33a6cf7266f8b9e48deea44007dc491379eadd', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:38:44', '2019-08-20 20:38:44', '2020-08-20 17:38:44'),
('974742529411b2f6d833f9b22263a8cd1e511f94628e1293310ea01fa10023825e482e7bd46cf297', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:50:21', '2019-08-14 23:50:21', '2020-08-14 20:50:21'),
('9764b9734548fedff15bc3eb6e00151484401d936192b555823a5b2c75b2466799aa87407c470ce1', 1, 3, 'Personal Access Token', '[]', 0, '2019-08-25 00:23:06', '2019-08-25 00:23:06', '2020-08-24 21:23:06'),
('987c8a4e1cb57a4db637bd4caefbd31de841258095e6815588588909a6a647c9e3c6471ee96b354d', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:19:17', '2019-08-17 01:19:17', '2020-08-16 22:19:17'),
('9a73d7e953889e163423c23e45a4940c2c88bc445d959fa83e2c40fae14e4183f34fba9c73a48290', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:45:16', '2019-08-20 20:45:16', '2020-08-20 17:45:16'),
('9be5d276f37cbc04c2157f825bfdc33641e681634642f2ee0f0236a3e6b587277a66f2ccd08eace6', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:35:25', '2019-08-20 20:35:25', '2020-08-20 17:35:25'),
('9c6a16c11cc83a27095cdcad8135990348b3cbbcd797f4f85bd9b21d8bdc1471fdffdeaaf742d6ec', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:08:01', '2019-08-20 20:08:01', '2020-08-20 17:08:01'),
('9cf8c2e624f93fc6557aa39f1ac93ff88a00129b3b5b20250ae7d27652c00069ca9915b4ae01504a', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:04:16', '2019-08-23 19:04:16', '2020-08-23 16:04:16'),
('9ddae12965fb7848ffe85047222a00b86b79b68af44d959dec6f260d17527c3ae78488b3f3d2df76', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:30:11', '2019-08-20 20:30:11', '2020-08-20 17:30:11'),
('a1d1c4018c6f72d91ac7d5cfc8e777bf049af99f31bb28b4f19a8c913024957c46dbf0eef20f2158', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:42:15', '2019-08-14 23:42:15', '2020-08-14 20:42:15'),
('a41a313e32e49e13d2ed8f840bbe0cb5aabe2545c5b54275f5c144e34fdf1cf0af117ce1185b635d', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:22:08', '2019-08-20 20:22:08', '2020-08-20 17:22:08'),
('a41e955cbd9e081d4addf9593afb75afc8a5049f50c0a29c63e4d50ec48eee981c1c64a6cdee89fc', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:11:58', '2019-08-20 20:11:58', '2020-08-20 17:11:58'),
('a42e5aad59ca1e3e5a8a8d44405bb8cc94688e8a2409e222ed8f626d8555f8c1c51fd50462a144af', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-24 22:59:33', '2019-08-24 22:59:33', '2020-08-24 19:59:33'),
('a50a14bce369c923fd7cd6fb0d68240a18adcce8b97161ddd64faa4baeb4f558eb9a39aa432c1c78', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:18:16', '2019-08-17 01:18:16', '2020-08-16 22:18:16'),
('a65a6940b19d36e97d352415f280e75da6e9190f05b82b6fe142847652651a57ca1de03126c75cae', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-24 23:15:09', '2019-08-24 23:15:09', '2020-08-24 20:15:09'),
('a9e2bdaca071eb597261b2aeebbc541e304bbad71b9a77ada3c362d937085deafd2eba3d4843f483', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:23:00', '2019-08-20 20:23:00', '2020-08-20 17:23:00'),
('ac66aa7f595bf30badeca5b28eba78e8c12cad4ce12191507b2d48de13115d87445d759e203fe351', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:04:11', '2019-08-23 19:04:11', '2020-08-23 16:04:11'),
('ae72f8d46adeb1268c21d9e18fbb9d4179433eb2b487bbe84e8dffa162ceb668f58dd9d479265892', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-24 23:17:43', '2019-08-24 23:17:43', '2020-08-24 20:17:43'),
('ae982ff24a1ea911e387152aaf2305764cd028c91ee8ee4cde118dfd84d394ecd014e13d7265e18f', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:44:54', '2019-08-20 20:44:54', '2020-08-20 17:44:54'),
('ae9d2914288ab1dc5fecd63b29b32d8a616dadae57d563c84128fc8949de51d6ff43af3b56ec0ed3', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:23:03', '2019-08-20 20:23:03', '2020-08-20 17:23:03'),
('afd3348e92fc4c00f94def875bf52cf9406bc24fb2c3c073228a11eb44e9995a53879489722bb6a9', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:30:12', '2019-08-20 20:30:12', '2020-08-20 17:30:12'),
('b0f085b37eae6834c4d68a4878e056e42c9188d5c63ceb5c2165064b993596d1892e9c9143212388', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:08:18', '2019-08-20 20:08:18', '2020-08-20 17:08:18'),
('b310d486442a6454b2df3e5c790dde274bae54905c798eaf91e2c1a3de33ffaae183801e980e3d8f', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:20:59', '2019-08-17 01:20:59', '2020-08-16 22:20:59'),
('b3ad0c2cead5c8f617dae241265735c9c9a6d0dc07910ad56060f441ffeed5a36d8264e01ec5f8ef', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:11:49', '2019-08-20 20:11:49', '2020-08-20 17:11:49'),
('bbc3f26a1e7df8d5f890f11694983ae949a62aacd2c8cb7abcde32878a0cf6fbcbecdb6f1e0be1fa', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 22:08:12', '2019-08-26 22:08:12', '2020-08-26 19:08:12'),
('bc531e4c8940f3db0258c9184f2ba9eec455a825fd16c55654b5c5712087e17b2654eae8a7b68458', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:42:02', '2019-08-14 23:42:02', '2020-08-14 20:42:02'),
('bcd2c2e934a647aba99f6d2408b5ad3e6bf5a3967af61a938e1ea26474fbc7bc06de094d05702178', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:07:38', '2019-08-20 20:07:38', '2020-08-20 17:07:38'),
('bd81f62e6973728393ac071d4862c0db9bfc3e1be76557884abcffc96d558e5e4a607b3373cf77de', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-15 00:07:50', '2019-08-15 00:07:50', '2020-08-14 21:07:50'),
('bdfb43d913606c36f784760b6a41dfab790b237b7da171c44682b3f0582a28051510a4cecc1047eb', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:42:52', '2019-08-20 20:42:52', '2020-08-20 17:42:52'),
('be10baa81e84e035e19b95c152cb59cd9d5e95c7f1847a4f5391f3e7f6d69153a8e91cdc957f5305', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-25 00:23:45', '2019-08-25 00:23:45', '2020-08-24 21:23:45'),
('bf40680e60f71ae7bbe96884d8ce516c303bc9042393ec0d8a7ab88c51dae02a78741bdeb57a0616', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:17:48', '2019-08-17 01:17:48', '2020-08-16 22:17:48'),
('c02429a5f8245fe635fcc8cfd58ff7ebf3da016d6afb8f3a8005171b62aa3969433c1d66f3b98fdd', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 21:26:57', '2019-08-20 21:26:57', '2020-08-20 18:26:57'),
('c082a15a1201a96e7070280e4c3e9eb711650dc04148756d1aca7b4a70e3503de0fe6e8e2edda6ee', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-15 00:11:35', '2019-08-15 00:11:35', '2020-08-14 21:11:35'),
('c31c5b19a8205cd0c0807bdfb5b7c378de44f0c1f5c959a6d4a7e8a9e1dbde6e2e17649a6b1a0f68', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:35:40', '2019-08-20 20:35:40', '2020-08-20 17:35:40'),
('c3d408587ff8667b68c0d2c69433e45db98d49e693197d05025bd9c4d72f8fdccde43639898249d5', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:37:42', '2019-08-20 20:37:42', '2020-08-20 17:37:42'),
('c463e5a8ef52d366a63669bcb99396db26938a24eca7976b8116309f9959d69e06327f340d179577', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-15 00:08:34', '2019-08-15 00:08:34', '2020-08-14 21:08:34'),
('c62bf93f8e1cf2db527300d2b812dc5bdb4ba69fd7a38366a1ef6afe5ceef2e291a446b7b356ba4c', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:38:56', '2019-08-14 23:38:56', '2020-08-14 20:38:56'),
('c692785e21764494c0f52036beb384c2abe568804dc99ab8fbe5a879bb21009d12515bdc0aa1a286', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:42:15', '2019-08-14 23:42:15', '2020-08-14 20:42:15'),
('c70657f52a1d61d4ab183b1601334d7b9f0d9bdd67d1cd5efe862688d6f007ffcdcee29c909656a8', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:26:48', '2019-08-20 20:26:48', '2020-08-20 17:26:48'),
('c7dfe3f960ec5b0a197834b3e64730c8bb85fd56eba3efdc106ea1bbd75b62a532a7824095c9b4bd', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:39:08', '2019-08-20 20:39:08', '2020-08-20 17:39:08'),
('c8cbef0892dda12b59d99c76fe99007787e74432b1890635e3a5a2a1fc2e93082c8978b48a4a9583', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:19:21', '2019-08-17 01:19:21', '2020-08-16 22:19:21'),
('c921365c7efa4d5ec561fe67145f15d751c15d8f8b8ea090e56611904f2c8026e6b43cc887f47f22', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:14:00', '2019-08-20 20:14:00', '2020-08-20 17:14:00'),
('cbbe484919948775e809ffb1c349c42398c4a4ec80c45f1645d5585927413982a687086ca116f15e', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:22:46', '2019-08-20 20:22:46', '2020-08-20 17:22:46'),
('cc09a232fd0727475d883375c4c774421199bc963da002710042249475859000ba7b43d0ad6a6e4e', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:11:58', '2019-08-20 20:11:58', '2020-08-20 17:11:58'),
('cc4fae740dfcc8761fa77e076af5d4edc62fb2b87314c231aa7ee289a13d15d5165dbbd99014a03b', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:04:19', '2019-08-23 19:04:19', '2020-08-23 16:04:19'),
('cfa737065ecf8c8ab4c1848578431339fcc13248888a66fdefd5281ba1dc6cda3d866544d6e0e898', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:50:49', '2019-08-14 23:50:49', '2020-08-14 20:50:49'),
('d0a19976155cfc76febe97d0ce7ec6ae193f08dbed8c01a1507fdf2c7299c7d89a3db4dc202b9a7b', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:04:09', '2019-08-23 19:04:09', '2020-08-23 16:04:09'),
('d13674f32cdc9797ba4ac28cc8189a7b988a05d6d02aee4498342060d71d4f617f3561b538219503', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:33:46', '2019-08-20 20:33:46', '2020-08-20 17:33:46'),
('d1a8dd435b1154cff77a5647d3dc3cde8dccc942b5a08556456d6b87cf3ee55548f1380b561ed543', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:06:27', '2019-08-20 20:06:27', '2020-08-20 17:06:27'),
('d3b194a50059da85e02fc91352206071fab2f5c955199b35eada7bf34a1c15c551b180ecb0355bfc', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 18:54:01', '2019-08-23 18:54:01', '2020-08-23 15:54:01'),
('d48392fb0c7b7cab5b8a026fe598ef7ee79c71827a6953447eae09bfe1cba224b05f74a99a9f7a41', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 22:07:34', '2019-08-26 22:07:34', '2020-08-26 19:07:34'),
('d4c4b2c8fa42939b429e70ef17e0c0dd1f543f7f9a0eec528d0ab40a2d2563805af5948702ccd998', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:19:20', '2019-08-17 01:19:20', '2020-08-16 22:19:20'),
('d54860c1b840d66ba17c81c93c718ec0eedd7aee55ea4cac6c5908a8cb9ec1310fe1284d4e4aaca8', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:38:01', '2019-08-20 20:38:01', '2020-08-20 17:38:01'),
('d6b71f9a27cdbc2f28587be2419d87c3209e548f26f8a6a9f3669dc1d70cf6b419563fb09c2e32af', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:13:17', '2019-08-20 20:13:17', '2020-08-20 17:13:17'),
('d76bc8ca5886ecc51eb5cec7330652e570ca5246300bf463ad614b36aa8aec187a5fa29dfdd4efa1', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 18:54:02', '2019-08-23 18:54:02', '2020-08-23 15:54:02'),
('d8bc4e1a27ac1700c84bf0e8970feb90c96df456d4008e52f82b97054edb4d117739922315e891c5', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:32:02', '2019-08-20 20:32:02', '2020-08-20 17:32:02'),
('d9ada8b7719e778a51419b438d5a0f4e3f1fc46cfba0837ec111c43c99c90a1f6952954eaa472845', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:04:15', '2019-08-23 19:04:15', '2020-08-23 16:04:15'),
('d9f4656285450224f4c9153e193530531b79cf8a3021484e08baf2e39dd9935e4f6e0995e8d233fa', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 19:04:13', '2019-08-23 19:04:13', '2020-08-23 16:04:13'),
('db078d2b9f7909395b3bfc5ee377d4cd78d7adb7949704d83fb09bcb4fbec6c3e2fba3abcd8999ba', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:42:14', '2019-08-20 20:42:14', '2020-08-20 17:42:14'),
('dc6c4dc6d863302b7adaab53ee81ce4303012d7fa8382eaeef27024919670b06e1e3c96389557c02', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:24:31', '2019-08-17 01:24:31', '2020-08-16 22:24:31'),
('dce5891be9138dc3869523db0d89dca639be2f0db6302225a9d4a970f9bff1599bb3a9eb18693f54', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:12:00', '2019-08-20 20:12:00', '2020-08-20 17:12:00'),
('dd3c42860b25db10b732d5b9286f45ba84d30819ff5d7bbb10bb13d04374aaa58648ce8dbb425579', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-26 21:55:32', '2019-08-26 21:55:32', '2020-08-26 18:55:32'),
('dd660f694bcdaebb66eac9c3aed27ec8a5e81837fb45bb8823b10e25c8829a13bebd12e51c84fa83', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:27:25', '2019-08-20 20:27:25', '2020-08-20 17:27:25'),
('de79b1ed044a8f9dc496f307e8f41f8c8bcedfbdceb8ae7cb8430a56ec880e835e62671bcb540600', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 18:53:59', '2019-08-23 18:53:59', '2020-08-23 15:53:59'),
('decfe6ddcc66ac273c894434d727accdd4aa293152713d104cbae364e302ca3eca3fe90403e7c5a4', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-14 23:42:16', '2019-08-14 23:42:16', '2020-08-14 20:42:16'),
('e1e554e60893fc0f877ecf52541901672019a331eb18f48922ce44ce1a5ee37b16dbc7fe5e8e0852', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:12:38', '2019-08-20 20:12:38', '2020-08-20 17:12:38'),
('e38c24111b9034cc30a77010e3f19ab57de0c50650251622e56352a5a1da16e307ec36088cad9f5d', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:13:34', '2019-08-20 20:13:34', '2020-08-20 17:13:34'),
('e41921ab27e94aa9bc412d47f9672fdd1279d9fb06617418e5786885d248dc0c5f7876ecbd2ef282', 1, 3, 'Personal Access Token', '[]', 0, '2019-08-26 21:56:28', '2019-08-26 21:56:28', '2020-08-26 18:56:28'),
('e473c03a54db03296fe0fcd293ce1af07fa96ccf3939317b17ef7e1bda932a60608e58a6b15de510', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:09:49', '2019-08-20 20:09:49', '2020-08-20 17:09:49'),
('e51bb34d86b6bc646372bbbd511b9077b37be288e1b29b42744b239e45d09c121152c7d8a108c734', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:34:43', '2019-08-20 20:34:43', '2020-08-20 17:34:43'),
('e6b99bd8e78142df5ffe130e286c85090d08d43022b0a8c4df874ab70b27cb2f2ab04ef34c2608c9', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-25 21:25:16', '2019-08-25 21:25:16', '2020-08-25 18:25:16'),
('e766fcc8721335c49d2d3e85a97abe65615feef11374ccb4110c85fc5ae78b6e6c2960bdc53a9dc0', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:07:09', '2019-08-20 20:07:09', '2020-08-20 17:07:09'),
('e85ec21691a279dcf6f4420f09a6634318155c5da921eb99a58779bc6be5af2dc90d7be974f277a6', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:20:18', '2019-08-17 01:20:18', '2020-08-16 22:20:18'),
('e8bac4b06b2a6bb4b4f9be1c6c87418210edb38bc509d7764d2b3cfd8fe8a03ced5e97426d19f96b', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:49:42', '2019-08-20 20:49:42', '2020-08-20 17:49:42'),
('ea29b8bfff0d6cba1b36b0f297d135c7eae3c7c00451afadb200c0597d52776d23a85f9846502e5c', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:35:33', '2019-08-20 20:35:33', '2020-08-20 17:35:33'),
('ea601a9f9cf873e8a27ade0dde1e7ec4ed7656af14da2ace51efc7afbcd9b0d7485bfe85141c0ee2', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:39:23', '2019-08-20 20:39:23', '2020-08-20 17:39:23'),
('eb894ed75b9da565342a4f1638e2f336be6bfce9dec46106de529794a5e7e41ae5b91b05449c9ec2', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-15 00:10:38', '2019-08-15 00:10:38', '2020-08-14 21:10:38'),
('ebb39bf016aeb278a6c187c3a7b6df0cc9809c67b0d5736eb15c1a5abe245dc8c46add53ef18f2a6', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:26:58', '2019-08-20 20:26:58', '2020-08-20 17:26:58'),
('ecc22d5b8ac74319974ffbe180f3842309777467cc70725c3b6d6fce925fce9c689a0473b6c39c81', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:57:16', '2019-08-20 20:57:16', '2020-08-20 17:57:16'),
('ef93468a43fccf80a5b3d960cd470c7695828b08f4d5e4d5b2972a0cad3ca5c95b27327e3f998a0e', 3, 3, 'My Token', '[\"administrator\"]', 0, '2019-08-24 23:24:48', '2019-08-24 23:24:48', '2020-08-24 20:24:48'),
('f011bd80260cd69ac1ad8f7672a413bdd7d125f71310790b4f06df83b6e00ae35e7391ed69b02909', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:20:57', '2019-08-17 01:20:57', '2020-08-16 22:20:57'),
('f04b7e4b18ccb095c53055317d934d4b1cd763da7e946bdc0d48445cc83768a3f05564b3f7acfb5e', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 21:00:29', '2019-08-20 21:00:29', '2020-08-20 18:00:29'),
('f06b80dc7d5ac47eea99ad1e4afe2499383d917685409fbbec580a8a262d7aba757a8292e34195ef', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:26:48', '2019-08-20 20:26:48', '2020-08-20 17:26:48'),
('f14d0cb9f9fc9f863ccaefb986a1f00344253239d292b3572daf46c44b787ec7c49ed49b32dd568e', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:26:47', '2019-08-20 20:26:47', '2020-08-20 17:26:47'),
('f3f3354dd069e27a271f6b6005abcfe5eaa020689679df606e8dc91e964cf926c1ea901dd7c237cf', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 21:03:25', '2019-08-20 21:03:25', '2020-08-20 18:03:25'),
('f44c2af11935383a5953b8c0510b0bb473df93973092155ffdb72c2081b2437ecbe257df44afd8b0', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:11:44', '2019-08-20 20:11:44', '2020-08-20 17:11:44'),
('f4b243840afcd5eeca3a5785c1eb5ffc37aa5deb47b5e7542d8f8f4d70941dae72c04273a0f472f4', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-17 01:23:41', '2019-08-17 01:23:41', '2020-08-16 22:23:41'),
('f560e1bf20f3c963a13ed9e3c1f774b68ffb0b8b9eed74df00ae68c6009d0a96fbbf58fe8dc11ec5', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:13:16', '2019-08-20 20:13:16', '2020-08-20 17:13:16'),
('f5d8b3c1a578065f4c80ef533c5089efb301d9ba4594919df490f86e45a7ddd37481600210953ad1', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:12:53', '2019-08-20 20:12:53', '2020-08-20 17:12:53'),
('f6b18c46d52b66b921042d1f78245917ec50606cd333bb42f87ffc9fa9175afe569e70972ee3e579', 3, 3, 'Personal Access Token', '[]', 0, '2019-08-23 18:54:01', '2019-08-23 18:54:01', '2020-08-23 15:54:01'),
('f7dffa13628b4102041e6674a299b9b40c96b4e26f37c3f63c312570844b119e9daa87d3cfa1eaea', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:12:58', '2019-08-20 20:12:58', '2020-08-20 17:12:58'),
('f8d87e5242b033dabd83a2c61e7649b673244ced8066cdbc4fd3da6f004ec22e8355b57db63f1044', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:23:02', '2019-08-20 20:23:02', '2020-08-20 17:23:02'),
('fbe76c45fcd1ddd1eb099b667caf70fca0eef3a150c3c81105dc86961d29c0f1b89342219985431a', 3, 3, 'Personal Access Token', '[\"administrator\"]', 0, '2019-08-25 21:25:17', '2019-08-25 21:25:17', '2020-08-25 18:25:17'),
('fc97c01c1bc92d086944e756cdb9c1dbaf0fcda8177f71f4c2459e94ac79a258ed9e3a20b38db05c', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 19:55:37', '2019-08-20 19:55:37', '2020-08-20 16:55:37'),
('fd440619c8d5630efff8aea2c46b6f8ef02fbb2750eae806313795a7ffbcf491fef9daae97e2fa6e', 3, 1, 'Personal Access Token', '[]', 0, '2019-08-20 20:10:14', '2019-08-20 20:10:14', '2020-08-20 17:10:14');

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
  `observacion` varchar(545) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `idUser` bigint(20) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE `orden` (
  `idorden` int(11) NOT NULL,
  `codigo` varchar(145) DEFAULT NULL,
  `estado` varchar(245) DEFAULT NULL,
  `falla` varchar(245) DEFAULT NULL,
  `idTecnico` bigint(20) UNSIGNED DEFAULT NULL,
  `idCliente` bigint(20) UNSIGNED DEFAULT NULL,
  `idObservasionTecnico` int(11) DEFAULT NULL,
  `idServicio` int(11) DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL,
  `fechaEntrega` date DEFAULT NULL,
  `fechaEstimada` date DEFAULT NULL,
  `idPrioridad` int(11) DEFAULT NULL,
  `idLocal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `direccion` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prioridad`
--

CREATE TABLE `prioridad` (
  `idPrioridad` int(11) NOT NULL,
  `prioridad` varchar(345) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(2, 'Usuario', 'cliente', 'Permiso cliente', NULL, NULL, NULL),
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
(1, 1, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `idServicios` int(11) NOT NULL,
  `tipo` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicioespecificaciones`
--

CREATE TABLE `servicioespecificaciones` (
  `idServicioespEcificaciones` int(11) NOT NULL,
  `idServicio` int(11) DEFAULT NULL,
  `idEspecificaciones` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnico`
--

CREATE TABLE `tecnico` (
  `idTecnico` bigint(20) UNSIGNED NOT NULL,
  `activo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(3, 'juan', 'juan@gmail.com', NULL, '$2y$10$apV.35yfkBkSvvUDQCypc.AYLvGb36aULk2oULhfNgeKmkJiVtWuK', NULL, '2019-08-13 01:45:38', '2019-08-13 01:45:38'),
(4, 'jua2n', 'jua1n@gmail.com', NULL, '$2y$10$aJrvkAASwe/p7hYYtcxGSeoA1E1ISjkl1SUCVZ1Sl.o4progAJ7AK', NULL, '2019-08-13 01:47:02', '2019-08-13 01:47:02'),
(5, '2jua2n', '2jua1n@gmail.com', NULL, '$2y$10$1FuiBZSFjOGT2xoguOhOnuKSBi/RpA2fF6jwGfeXANGrs3H0dghZu', NULL, '2019-08-13 01:50:44', '2019-08-13 01:50:44'),
(6, '2jua2n', '2jua1n@gmail.com', NULL, '$2y$10$JJJ58Cir7VGWiy2MSMJ7RebwFMpfQ.fDPRCWbVv0NtRS7YW7yVqGq', NULL, '2019-08-13 01:52:28', '2019-08-13 01:52:28'),
(7, 'juan1', 'juan@gmail.com22', NULL, '$2y$10$2kWFCl5dJw2D6uJ8iL/xTOaIndEN6l0wB6zq.SwFrPe.X0jnMYFny', NULL, '2019-08-13 01:53:28', '2019-08-13 01:53:28'),
(8, 'jmr', 'jmr1@gmail.com', NULL, '$2y$10$uM.dOqmnt14aTm8xABPunuWG0Zl2THy7tstXWiH/jAMmoLjS2L/Ty', NULL, '2019-08-26 22:10:34', '2019-08-26 22:10:34'),
(9, 'jmr1', 'jmr11@gmail.com', NULL, '$2y$10$iMu0pLY5Lp7hNtIJ1GSCCOXGWPS94.k5qyuPTzCoQPIuTcKzUlDdG', NULL, '2019-08-26 22:11:17', '2019-08-26 22:11:17');

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
  ADD KEY `fk_entrega_orden_idx` (`idOrden`),
  ADD KEY `fk_entregado_users_idx` (`idUser`);

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
-- Indices de la tabla `estadoorden`
--
ALTER TABLE `estadoorden`
  ADD PRIMARY KEY (`idEstadoOrden`),
  ADD KEY `fk_estadoorden_orden_idx` (`idOrden`);

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
  ADD PRIMARY KEY (`idObservacion`);

--
-- Indices de la tabla `orden`
--
ALTER TABLE `orden`
  ADD PRIMARY KEY (`idorden`),
  ADD KEY `fk_orden_tecnico_idx` (`idTecnico`),
  ADD KEY `fk_orden_cliente_idx` (`idCliente`),
  ADD KEY `fk_orden_servicio_idx` (`idServicio`),
  ADD KEY `fk_orden_local_idx` (`idLocal`),
  ADD KEY `idObservasionTecnico` (`idObservasionTecnico`);

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
-- AUTO_INCREMENT de la tabla `especificacionesregistradas`
--
ALTER TABLE `especificacionesregistradas`
  MODIFY `idEspRegistradas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estadoorden`
--
ALTER TABLE `estadoorden`
  MODIFY `idEstadoOrden` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  ADD CONSTRAINT `fk_entrega_orden` FOREIGN KEY (`idOrden`) REFERENCES `orden` (`idorden`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_entregado_users` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `especificacionesregistradas`
--
ALTER TABLE `especificacionesregistradas`
  ADD CONSTRAINT `fk_servesp_espreg` FOREIGN KEY (`idEspProducto`) REFERENCES `especificacionesproducto` (`idespecificacionesproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fl_servesp_orden` FOREIGN KEY (`idOrden`) REFERENCES `orden` (`idorden`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `estadoorden`
--
ALTER TABLE `estadoorden`
  ADD CONSTRAINT `fk_estadoorden_orden` FOREIGN KEY (`idOrden`) REFERENCES `orden` (`idorden`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `observacion`
--
ALTER TABLE `observacion`
  ADD CONSTRAINT `fk_observacion_estadoorden` FOREIGN KEY (`idObservacion`) REFERENCES `estadoorden` (`idEstadoOrden`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_observacion_orden` FOREIGN KEY (`idObservacion`) REFERENCES `orden` (`idObservasionTecnico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `orden`
--
ALTER TABLE `orden`
  ADD CONSTRAINT `fk_orden_cliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_orden_local` FOREIGN KEY (`idLocal`) REFERENCES `local` (`idLocal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_orden_recibido` FOREIGN KEY (`idorden`) REFERENCES `recibido` (`idRecibido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
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
-- Filtros para la tabla `prioridad`
--
ALTER TABLE `prioridad`
  ADD CONSTRAINT `fk_prioridad_orden` FOREIGN KEY (`idPrioridad`) REFERENCES `orden` (`idorden`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `recibido`
--
ALTER TABLE `recibido`
  ADD CONSTRAINT `fk_user_persona` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
