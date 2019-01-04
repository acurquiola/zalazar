-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-12-2018 a las 20:29:15
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `zalazar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('usuario','admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `tipo`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pablo', 'pablo', 'admin', NULL, '$2y$10$Fey8QfqryNyJtVhCT/l.neIukoLkHF.e9kO.TUSS9TStWW6PY0ffm', NULL, NULL, NULL),
(2, 'Ana', 'ana', 'usuario', NULL, '$2y$10$qJ8r0Ue5mdooOQp4KnERR./CJbEclIgVFWqMd1GaJmqfiTIf0Jp/i', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasificacions`
--

CREATE TABLE `clasificacions` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clasificacions`
--

INSERT INTO `clasificacions` (`id`, `nombre`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Eventos', 'aa', NULL, NULL),
(2, 'Empresa', 'bb', NULL, NULL),
(3, 'Productos', 'cc', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condicions`
--

CREATE TABLE `condicions` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `condicions`
--

INSERT INTO `condicions` (`id`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet consectetur adipiscing elit faucibus, magnis natoque metus potenti duis tempor litora, sociis placerat ut risus in gravida orci. Aliquet donec nisl etiam mus velit pulvinar, torquent tortor non convallis posuere pellentesque curae, vehicula a class litora placerat. Sollicitudin sed praesent nunc nec venenatis inceptos maecenas molestie nisl, dis duis accumsan iaculis rhoncus pellentesque eleifend a ultrices, lacinia aptent aliquet leo mi commodo mattis orci.\n\n								Accumsan facilisi mi enim dictum nostra eleifend posuere dignissim hendrerit nunc varius, ultrices sodales himenaeos quis montes massa per cras pretium orci, vehicula vitae imperdiet curabitur erat risus mus sollicitudin class elementum. Natoque etiam dui rutrum risus tincidunt magna condimentum, cras iaculis accumsan sociosqu id class non, mollis venenatis himenaeos fermentum litora vel. Ut sodales a mauris nec tempus imperdiet facilisis dapibus ligula ante, tincidunt aliquet lacinia duis ac cum vel phasellus euismod felis, leo tristique tortor iaculis dui bibendum aliquam consequat habitant. Eleifend vulputate non pretium id ultrices montes, phasellus nisl diam rutrum nostra, pulvinar sed penatibus vitae parturient.\n\n								At molestie dui condimentum velit potenti ad auctor platea, facilisis netus phasellus etiam fringilla senectus magna fermentum arcu, sapien morbi vel tempus curae urna justo. Scelerisque ut torquent porttitor nunc tempus cum bibendum class, interdum sem varius sed at magna id luctus vel, habitasse risus ligula ac cras congue integer. Dapibus vulputate mattis euismod proin mollis vivamus lacus potenti porttitor, nam sociis consequat primis facilisis eget erat dignissim nisl, platea bibendum semper class gravida hendrerit phasellus dis. Non taciti tristique viverra felis vivamus malesuada orci consequat quis, etiam libero integer ante varius lacus mattis laoreet ornare, torquent fusce accumsan in venenatis nisi dictumst purus. Magna lobortis vel platea nunc placerat commodo suspendisse eros donec, mi aptent scelerisque neque facilisi fusce proin.', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo` enum('telefono_fax','telefono','whatsapp','email') COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `tipo`, `descripcion`, `status`, `created_at`, `updated_at`) VALUES
(1, 'telefono_fax', '(54 11) 4466-2705', 1, NULL, NULL),
(2, 'telefono', '2204-0995', 1, NULL, NULL),
(3, 'email', 'info@zalazar.com.ar', 1, NULL, NULL),
(4, 'whatsapp', '11 3694-5737', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descargas`
--

CREATE TABLE `descargas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descuentos`
--

CREATE TABLE `descuentos` (
  `id` int(10) UNSIGNED NOT NULL,
  `monto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `descuentos`
--

INSERT INTO `descuentos` (`id`, `monto`, `tipo`, `created_at`, `updated_at`) VALUES
(1, '10', 'Cliente', NULL, NULL),
(2, '20', 'Vendedor', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destacados`
--

CREATE TABLE `destacados` (
  `id` int(10) UNSIGNED NOT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subfamilia_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `destacados`
--

INSERT INTO `destacados` (`id`, `orden`, `subfamilia_id`, `created_at`, `updated_at`) VALUES
(2, 'bb', 2, NULL, NULL),
(3, 'cc', 3, NULL, NULL),
(4, 'aa', 4, NULL, NULL),
(5, 'bb', 5, NULL, NULL),
(6, 'cc', 6, NULL, NULL),
(7, 'bb', 7, NULL, NULL),
(8, 'cc', 8, NULL, NULL),
(9, 'cc', 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `file_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `descripcion`, `file_image`, `created_at`, `updated_at`) VALUES
(1, 'Somos Zalazar Distribuidora. Una empresa de amplia trayectoria. Nos dedicamos a la fabricación y distribución de repuestos sanitarios, articulos de gas y ferreterías. \n								  Con una experiencia de más de 20 años en la industria, con un amplio catálogo de productos para varios sectores. \n								  Nuestra misión es continuar con el crecimiento y consolidar nuestro rol en el mercado argentino. No dude consultarnos ante cualquier duda.\n								  Nuestros principios están basados en consolidar una buena relación de confianza, trabajo y profesionalismo junto con nuestros clientes y proveedores. Basamos nuestro trabajo en el constante desarrollo y mejoras tecnológicas. Nuestro compromiso ha sido y será siempre la calidad del producto.', 'empresa__empresa.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familias`
--

CREATE TABLE `familias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `familias`
--

INSERT INTO `familias` (`id`, `nombre`, `orden`, `file_image`, `created_at`, `updated_at`) VALUES
(1, 'Ninguna', 'aa', NULL, NULL, NULL),
(2, 'Repuestos Sanitarios', 'aa', 'familias__familia1.jpg', NULL, NULL),
(3, 'Repuestos de Gas', 'bb', 'familias__familia2.jpg', NULL, NULL),
(4, 'Accesorios Trafilados para Gas', 'cc', 'familias__familia3.jpg', NULL, NULL),
(5, 'Accesorios de Bronce Roscado', 'dd', 'familias__familia4.jpg', NULL, NULL),
(6, 'Accesorios Termofusión', 'ee', 'familias__familia5.jpg', NULL, NULL),
(7, 'Accesorios de Polipropileno', 'ff', 'familias__familia6.jpg', NULL, NULL),
(8, 'Accesorios Sigas', 'gg', 'familias__familia7.jpg', NULL, NULL),
(9, 'Accesorios de Zinc', 'hh', 'familias__familia8.jpg', NULL, NULL),
(10, 'Repuestos para ferretería', 'ii', 'familias__familia9.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galerias`
--

CREATE TABLE `galerias` (
  `id` int(10) UNSIGNED NOT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `subfamilia_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagens`
--

CREATE TABLE `imagens` (
  `id` int(10) UNSIGNED NOT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `novedad_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacions`
--

CREATE TABLE `informacions` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `informacions`
--

INSERT INTO `informacions` (`id`, `titulo1`, `titulo2`, `file_image`, `created_at`, `updated_at`) VALUES
(1, 'Stock Permanente de nuestro catálogo', 'Compromiso de excelencia en la calidad', 'home__informacions.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logos`
--

CREATE TABLE `logos` (
  `id` int(10) UNSIGNED NOT NULL,
  `ubicacion` enum('navbar','footer','favicon') COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `logos`
--

INSERT INTO `logos` (`id`, `ubicacion`, `file_image`, `created_at`, `updated_at`) VALUES
(1, 'navbar', 'logos__logo-principal.png', NULL, NULL),
(2, 'footer', 'logos__logo-footer.png', NULL, NULL),
(3, 'favicon', 'logos__favicon.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metadatos`
--

CREATE TABLE `metadatos` (
  `id` int(10) UNSIGNED NOT NULL,
  `seccion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `metadatos`
--

INSERT INTO `metadatos` (`id`, `seccion`, `keyword`, `descripcion`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'home', 'Página principal', '/', NULL, NULL),
(2, 'Empresa', 'empresa', 'Descripción de la empresa', '/empresa', NULL, NULL),
(3, 'Productos', 'productos', 'Catálogo de Productos', '/productos', NULL, NULL),
(4, 'Novedades', 'novedades', 'Publicación de las novedades que brinda la empresa.', '/novedades', NULL, NULL),
(5, 'Catálogo', 'catalogo', 'Sección de catálogo de productos.', 'catalogo', NULL, NULL),
(6, 'Contacto', 'contacto', 'Zona de contacto', '/contacto', NULL, NULL);

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
(451, '2014_10_12_000000_create_users_table', 1),
(452, '2014_10_12_100000_create_password_resets_table', 1),
(453, '2018_10_17_153859_create_familias_table', 1),
(454, '2018_10_17_154038_create_subfamilias_table', 1),
(455, '2018_10_25_154115_create_productos_table', 1),
(456, '2018_11_05_150618_create_datos_table', 1),
(457, '2018_11_05_150731_create_logos_table', 1),
(458, '2018_11_05_153326_create_metadatos_table', 1),
(459, '2018_11_05_172127_create_admins_table', 1),
(460, '2018_11_07_190826_create_empresas_table', 1),
(461, '2018_11_07_190856_create_sliders_table', 1),
(462, '2018_11_12_134543_create_clasificacions_table', 1),
(463, '2018_11_12_134709_create_novedads_table', 1),
(464, '2018_12_06_130946_create_galerias_table', 1),
(465, '2018_12_06_132111_create_descargas_table', 1),
(466, '2018_12_10_185640_create_imagens_table', 1),
(467, '2018_12_11_145318_create_condicions_table', 1),
(468, '2018_12_17_121344_create_descuentos_table', 1),
(469, '2018_12_17_175729_create_pedidos_table', 1),
(470, '2018_12_17_182017_create_pedido_producto_table', 1),
(471, '2018_12_17_195148_create_precios_table', 1),
(472, '2018_12_18_174930_create_destacados_table', 1),
(473, '2018_12_18_181846_create_informacions_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedads`
--

CREATE TABLE `novedads` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clasificacion_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `novedads`
--

INSERT INTO `novedads` (`id`, `titulo`, `file_image`, `texto`, `orden`, `clasificacion_id`, `created_at`, `updated_at`) VALUES
(1, 'Conocé nuestra planta', 'novedades__novedad1.jpg', 'Ingresá para conocer más fotos e información sobre nuestra planta ubicada en Villa Luzuriaga, en la provincia de Buenos Aires.\n									   Somos Zalazar Distribuidora. Una empresa de amplia trayectoria. Nos dedicamos a la fabricación y distribución de repuestos sanitarios, articulos de gas y ferreterías. Con una experiencia de más de 20 años en la industria, con un amplio catálogo de productos para varios sectores. \n									   Nuestra misión es continuar con el crecimiento y consolidar nuestro rol en el mercado argentino. No dude consultarnos ante cualquier duda.', 'aa', 2, NULL, NULL),
(2, 'Nuevos Depósitos', 'novedades__novedad2.jpg', 'Ingresá para conocer más fotos e información sobre nuestra planta ubicada en Villa Luzuriaga, en la provincia de Buenos Aires.\n									   Somos Zalazar Distribuidora. Una empresa de amplia trayectoria. Nos dedicamos a la fabricación y distribución de repuestos sanitarios, articulos de gas y ferreterías. Con una experiencia de más de 20 años en la industria, con un amplio catálogo de productos para varios sectores. \n									   Nuestra misión es continuar con el crecimiento y consolidar nuestro rol en el mercado argentino. No dude consultarnos ante cualquier duda.', 'bb', 3, NULL, NULL),
(3, 'Atención al Público', 'novedades__novedad3.jpg', 'Ingresá para conocer más fotos e información sobre nuestra planta ubicada en Villa Luzuriaga, en la provincia de Buenos Aires.\n									   Somos Zalazar Distribuidora. Una empresa de amplia trayectoria. Nos dedicamos a la fabricación y distribución de repuestos sanitarios, articulos de gas y ferreterías. Con una experiencia de más de 20 años en la industria, con un amplio catálogo de productos para varios sectores. \n									   Nuestra misión es continuar con el crecimiento y consolidar nuestro rol en el mercado argentino. No dude consultarnos ante cualquier duda.', 'cc', 2, NULL, NULL),
(4, 'Catálogo de Productos 2018', 'novedades__novedad4.jpg', 'Ingresá para conocer más fotos e información sobre nuestra planta ubicada en Villa Luzuriaga, en la provincia de Buenos Aires.\n									   Somos Zalazar Distribuidora. Una empresa de amplia trayectoria. Nos dedicamos a la fabricación y distribución de repuestos sanitarios, articulos de gas y ferreterías. Con una experiencia de más de 20 años en la industria, con un amplio catálogo de productos para varios sectores. \n									   Nuestra misión es continuar con el crecimiento y consolidar nuestro rol en el mercado argentino. No dude consultarnos ante cualquier duda.', 'dd', 3, NULL, NULL);

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
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(10) UNSIGNED NOT NULL,
  `comprador_id` int(10) UNSIGNED NOT NULL,
  `vendedor_id` int(10) UNSIGNED NOT NULL,
  `monto_total` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_producto`
--

CREATE TABLE `pedido_producto` (
  `id` int(10) UNSIGNED NOT NULL,
  `pedido_id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precios`
--

CREATE TABLE `precios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `codigo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `presentacion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precio` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oferta` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `familia_id` int(10) UNSIGNED NOT NULL,
  `subfamilia_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `descripcion`, `codigo`, `orden`, `presentacion`, `precio`, `oferta`, `familia_id`, `subfamilia_id`, `created_at`, `updated_at`) VALUES
(1, 'CODO B/ROSCADO H-H 1/2', '504.100', 'aa', '100', '250', '50', 5, 5, NULL, NULL),
(2, 'CODO B/ROSCADO H-H 3/4', '504.101', 'aa', '100', '250', '20', 5, 5, NULL, NULL),
(3, 'CODO B/ROSCADO H-H 1', '504.102', 'aa', '100', '250', '0', 5, 5, NULL, NULL),
(4, 'CODO B/ROSCADO H-H 1 1/4', '504.103', 'aa', '100', '250', '0', 5, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `titulo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seccion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sliders`
--

INSERT INTO `sliders` (`id`, `file_image`, `titulo`, `descripcion`, `seccion`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'sliders__slider1.jpg', 'CALIDAD Y SERVICIO', 'Accesorios y repuestos de Sanitarios', 'home', 'aa', NULL, NULL),
(2, 'sliders__slider2.jpg', 'AMPLIA TRAYECTORIA EN EL RUBRO', 'Somos Especialistas', 'empresa', 'aa', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subfamilias`
--

CREATE TABLE `subfamilias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `file_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `file_ficha` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `familia_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `subfamilias`
--

INSERT INTO `subfamilias` (`id`, `nombre`, `orden`, `descripcion`, `file_image`, `file_ficha`, `familia_id`, `created_at`, `updated_at`) VALUES
(1, 'Ninguna', 'aa', 'Somos Zalazar Distribuidora. Una empresa de amplia trayectoria. Nos dedicamos a la fabricación y distribución de repuestos sanitarios, articulos de gas y ferreterías. Con una experiencia de más de 20 años en la industria, con un amplio catálogo de productos para varios sectores.', NULL, NULL, 1, NULL, NULL),
(2, 'Arandelas de Bronce Roscado', 'aa', 'Somos Zalazar Distribuidora. Una empresa de amplia trayectoria. Nos dedicamos a la fabricación y distribución de repuestos sanitarios, articulos de gas y ferreterías. Con una experiencia de más de 20 años en la industria, con un amplio catálogo de productos para varios sectores.', 'subfamilias__subfamilia1.jpg', NULL, 5, NULL, NULL),
(3, 'Bridas de Bronce Roscado', 'bb', 'Somos Zalazar Distribuidora. Una empresa de amplia trayectoria. Nos dedicamos a la fabricación y distribución de repuestos sanitarios, articulos de gas y ferreterías. Con una experiencia de más de 20 años en la industria, con un amplio catálogo de productos para varios sectores.', 'subfamilias__subfamilia2.jpg', NULL, 5, NULL, NULL),
(4, 'Buje Reducción de Bronce Roscado', 'cc', 'Somos Zalazar Distribuidora. Una empresa de amplia trayectoria. Nos dedicamos a la fabricación y distribución de repuestos sanitarios, articulos de gas y ferreterías. Con una experiencia de más de 20 años en la industria, con un amplio catálogo de productos para varios sectores.', 'subfamilias__subfamilia3.jpg', NULL, 5, NULL, NULL),
(5, 'Codos de Bronce Roscado', 'dd', 'Somos Zalazar Distribuidora. Una empresa de amplia trayectoria. Nos dedicamos a la fabricación y distribución de repuestos sanitarios, articulos de gas y ferreterías. Con una experiencia de más de 20 años en la industria, con un amplio catálogo de productos para varios sectores.', 'subfamilias__subfamilia4.jpg', NULL, 5, NULL, NULL),
(6, 'Colector Cruz de Bronce Roscado', 'ee', 'Somos Zalazar Distribuidora. Una empresa de amplia trayectoria. Nos dedicamos a la fabricación y distribución de repuestos sanitarios, articulos de gas y ferreterías. Con una experiencia de más de 20 años en la industria, con un amplio catálogo de productos para varios sectores.', 'subfamilias__subfamilia5.jpg', NULL, 5, NULL, NULL),
(7, 'Cruz de Bronce Roscado ', 'ff', 'Somos Zalazar Distribuidora. Una empresa de amplia trayectoria. Nos dedicamos a la fabricación y distribución de repuestos sanitarios, articulos de gas y ferreterías. Con una experiencia de más de 20 años en la industria, con un amplio catálogo de productos para varios sectores.', 'subfamilias__subfamilia6.jpg', NULL, 5, NULL, NULL),
(8, 'Cuplas de Bronce Roscado', 'gg', 'Somos Zalazar Distribuidora. Una empresa de amplia trayectoria. Nos dedicamos a la fabricación y distribución de repuestos sanitarios, articulos de gas y ferreterías. Con una experiencia de más de 20 años en la industria, con un amplio catálogo de productos para varios sectores.', 'subfamilias__subfamilia7.jpg', NULL, 5, NULL, NULL),
(9, 'Curvas de Bronce Roscado', 'hh', 'Somos Zalazar Distribuidora. Una empresa de amplia trayectoria. Nos dedicamos a la fabricación y distribución de repuestos sanitarios, articulos de gas y ferreterías. Con una experiencia de más de 20 años en la industria, con un amplio catálogo de productos para varios sectores.', 'subfamilias__subfamilia8.jpg', NULL, 5, NULL, NULL),
(10, 'Rosca con Tuerca de Bronce Roscado', 'ii', 'Somos Zalazar Distribuidora. Una empresa de amplia trayectoria. Nos dedicamos a la fabricación y distribución de repuestos sanitarios, articulos de gas y ferreterías. Con una experiencia de más de 20 años en la industria, con un amplio catálogo de productos para varios sectores.', 'subfamilias__subfamilia9.jpg', NULL, 5, NULL, NULL),
(11, 'Rosca Sencilla', 'jj', 'Somos Zalazar Distribuidora. Una empresa de amplia trayectoria. Nos dedicamos a la fabricación y distribución de repuestos sanitarios, articulos de gas y ferreterías. Con una experiencia de más de 20 años en la industria, con un amplio catálogo de productos para varios sectores.', 'subfamilias__subfamilia10.jpg', NULL, 5, NULL, NULL),
(12, 'Tapas de Bronce Roscado', 'kk', 'Somos Zalazar Distribuidora. Una empresa de amplia trayectoria. Nos dedicamos a la fabricación y distribución de repuestos sanitarios, articulos de gas y ferreterías. Con una experiencia de más de 20 años en la industria, con un amplio catálogo de productos para varios sectores.', 'subfamilias__subfamilia11.jpg', NULL, 5, NULL, NULL),
(13, 'Tee de Bronce Roscado', 'll', 'Somos Zalazar Distribuidora. Una empresa de amplia trayectoria. Nos dedicamos a la fabricación y distribución de repuestos sanitarios, articulos de gas y ferreterías. Con una experiencia de más de 20 años en la industria, con un amplio catálogo de productos para varios sectores.', 'subfamilias__subfamilia12.jpg', NULL, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('vendedor','cliente') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `tipo`, `email_verified_at`, `password`, `parent_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ninguno', 'ninguno', 'Ninguno@osole.es', 'vendedor', NULL, '$2y$10$oi0pvTmuymko3G7/cKQvAec/HgT8ilsKQj6ruKCIIPbVEZyok0W6a', 1, NULL, NULL, NULL),
(2, 'Osole Vendedor', 'vendedor', 'vendedor@osole.es', 'vendedor', NULL, '$2y$10$qiTOLhf8i2s0yPclF47j0.2Cl.e56vZgT4rC6QkLPljdfl3oBoWsG', 1, NULL, NULL, NULL),
(3, 'Osole Comprador', 'comprador', 'comprador@osole.es', 'cliente', NULL, '$2y$10$9zOPUj.Ma0/1okmkMBkye.AtPqkYFae0jSZ7rxAxa6ULdvaccGq8S', 2, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indices de la tabla `clasificacions`
--
ALTER TABLE `clasificacions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `condicions`
--
ALTER TABLE `condicions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `descargas`
--
ALTER TABLE `descargas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `descuentos`
--
ALTER TABLE `descuentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `destacados`
--
ALTER TABLE `destacados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destacados_subfamilia_id_foreign` (`subfamilia_id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `familias`
--
ALTER TABLE `familias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galerias`
--
ALTER TABLE `galerias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galerias_subfamilia_id_foreign` (`subfamilia_id`);

--
-- Indices de la tabla `imagens`
--
ALTER TABLE `imagens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imagens_novedad_id_foreign` (`novedad_id`);

--
-- Indices de la tabla `informacions`
--
ALTER TABLE `informacions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `novedads`
--
ALTER TABLE `novedads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `novedads_clasificacion_id_foreign` (`clasificacion_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidos_comprador_id_foreign` (`comprador_id`),
  ADD KEY `pedidos_vendedor_id_foreign` (`vendedor_id`);

--
-- Indices de la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedido_producto_pedido_id_foreign` (`pedido_id`),
  ADD KEY `pedido_producto_producto_id_foreign` (`producto_id`);

--
-- Indices de la tabla `precios`
--
ALTER TABLE `precios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_familia_id_foreign` (`familia_id`),
  ADD KEY `productos_subfamilia_id_foreign` (`subfamilia_id`);

--
-- Indices de la tabla `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subfamilias`
--
ALTER TABLE `subfamilias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subfamilias_familia_id_foreign` (`familia_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_parent_id_foreign` (`parent_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `clasificacions`
--
ALTER TABLE `clasificacions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `condicions`
--
ALTER TABLE `condicions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `descargas`
--
ALTER TABLE `descargas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `descuentos`
--
ALTER TABLE `descuentos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `destacados`
--
ALTER TABLE `destacados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `familias`
--
ALTER TABLE `familias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `galerias`
--
ALTER TABLE `galerias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `imagens`
--
ALTER TABLE `imagens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `informacions`
--
ALTER TABLE `informacions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;

--
-- AUTO_INCREMENT de la tabla `novedads`
--
ALTER TABLE `novedads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `precios`
--
ALTER TABLE `precios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `subfamilias`
--
ALTER TABLE `subfamilias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `destacados`
--
ALTER TABLE `destacados`
  ADD CONSTRAINT `destacados_subfamilia_id_foreign` FOREIGN KEY (`subfamilia_id`) REFERENCES `subfamilias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `galerias`
--
ALTER TABLE `galerias`
  ADD CONSTRAINT `galerias_subfamilia_id_foreign` FOREIGN KEY (`subfamilia_id`) REFERENCES `subfamilias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `imagens`
--
ALTER TABLE `imagens`
  ADD CONSTRAINT `imagens_novedad_id_foreign` FOREIGN KEY (`novedad_id`) REFERENCES `novedads` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `novedads`
--
ALTER TABLE `novedads`
  ADD CONSTRAINT `novedads_clasificacion_id_foreign` FOREIGN KEY (`clasificacion_id`) REFERENCES `clasificacions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_comprador_id_foreign` FOREIGN KEY (`comprador_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pedidos_vendedor_id_foreign` FOREIGN KEY (`vendedor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  ADD CONSTRAINT `pedido_producto_pedido_id_foreign` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pedido_producto_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_familia_id_foreign` FOREIGN KEY (`familia_id`) REFERENCES `familias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_subfamilia_id_foreign` FOREIGN KEY (`subfamilia_id`) REFERENCES `subfamilias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `subfamilias`
--
ALTER TABLE `subfamilias`
  ADD CONSTRAINT `subfamilias_familia_id_foreign` FOREIGN KEY (`familia_id`) REFERENCES `familias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
