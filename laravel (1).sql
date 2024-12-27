-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: db:3306
-- Время создания: Дек 27 2024 г., 08:00
-- Версия сервера: 8.4.3
-- Версия PHP: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Электроника', NULL, NULL, NULL),
(2, 'Одежда', NULL, NULL, NULL),
(3, 'Мебель', NULL, NULL, NULL),
(4, 'Билеты', NULL, NULL, NULL),
(5, 'Детские товары', NULL, NULL, NULL),
(6, 'Обувь', NULL, NULL, NULL),
(7, 'Женские товары', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `category_product`
--

CREATE TABLE `category_product` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category_product`
--

INSERT INTO `category_product` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 5, 1, NULL, NULL),
(4, 3, 6, NULL, NULL),
(5, 4, 5, NULL, NULL),
(6, 1, 3, NULL, NULL),
(7, 1, 2, NULL, NULL),
(8, 4, 4, NULL, NULL),
(9, 2, 7, NULL, NULL),
(10, 6, 7, NULL, NULL),
(11, 7, 7, NULL, NULL),
(12, 1, 8, NULL, NULL),
(13, 5, 8, NULL, NULL),
(14, 3, 9, NULL, NULL),
(15, 5, 9, NULL, NULL),
(16, 1, 10, NULL, NULL),
(17, 5, 11, NULL, NULL),
(18, 6, 11, NULL, NULL),
(19, 6, 12, NULL, NULL),
(20, 1, 13, NULL, NULL),
(21, 6, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `product_id`, `path`, `created_at`, `updated_at`) VALUES
(1, 7, 'https://ir-3.ozone.ru/s3/multimedia-k/wc1000/6868766096.jpg', NULL, NULL),
(2, 7, 'https://ir-3.ozone.ru/s3/multimedia-y/wc1000/6868766002.jpg', NULL, NULL),
(3, 7, 'https://ir-3.ozone.ru/s3/multimedia-e/wc1000/6868766018.jpg', NULL, NULL),
(4, 1, 'https://ir-3.ozone.ru/s3/multimedia-a/wc1000/6838585930.jpg', NULL, NULL),
(5, 1, 'https://ir-3.ozone.ru/s3/multimedia-i/wc1000/6838585902.jpg', NULL, NULL),
(6, 3, 'https://ir-3.ozone.ru/s3/multimedia-1-j/wc1000/7204136131.jpg', NULL, NULL),
(7, 3, 'https://ir-3.ozone.ru/s3/multimedia-1-n/wc1000/7204136135.jpg', NULL, NULL),
(8, 5, 'https://ir-3.ozone.ru/s3/multimedia-1-u/wc1000/7211588754.jpg', NULL, NULL),
(9, 5, 'https://ir-3.ozone.ru/s3/multimedia-1-f/wc1000/7185980391.jpg', NULL, NULL),
(10, 6, 'https://ir-3.ozone.ru/s3/multimedia-y/wc1000/6716996350.jpg', NULL, NULL),
(11, 6, 'https://ir-3.ozone.ru/s3/multimedia-4/wc1000/6716996392.jpg', NULL, NULL),
(12, 6, 'https://ir-3.ozone.ru/s3/multimedia-4/wc1000/6716996356.jpg', NULL, NULL),
(13, 4, 'https://ir-3.ozone.ru/s3/multimedia-1-h/wc1000/7161909569.jpg', NULL, NULL),
(14, 4, 'https://ir-3.ozone.ru/s3/multimedia-1-c/wc1000/7161909564.jpg', NULL, NULL),
(15, 4, 'https://ir-3.ozone.ru/s3/multimedia-1-5/wc1000/7161909629.jpg', NULL, NULL),
(16, 2, 'https://ir-3.ozone.ru/s3/multimedia-1-f/wc1000/7020324231.jpg', NULL, NULL),
(17, 2, 'https://ir-3.ozone.ru/s3/multimedia-1-t/wc1000/7020324245.jpg', NULL, NULL),
(18, 2, 'https://ir-3.ozone.ru/s3/multimedia-1-i/wc1000/7020324234.jpg', NULL, NULL),
(19, 8, 'https://ir-3.ozone.ru/s3/multimedia-g/wc1000/6840228544.jpg', NULL, NULL),
(20, 8, 'https://ir-3.ozone.ru/s3/multimedia-3/wc1000/6840228531.jpg', NULL, NULL),
(21, 9, 'https://ir-3.ozone.ru/s3/multimedia-1-j/wc1000/7211123299.jpg', NULL, NULL),
(22, 9, 'https://ir-3.ozone.ru/s3/multimedia-1-k/wc1000/7060120760.jpg', NULL, NULL),
(23, 10, 'https://ir-3.ozone.ru/s3/multimedia-1-n/wc1000/7200470147.jpg', NULL, NULL),
(24, 10, 'https://ir-3.ozone.ru/s3/multimedia-i/wc1000/6777629550.jpg', NULL, NULL),
(25, 11, 'https://ir-3.ozone.ru/s3/multimedia-1-j/wc1000/7149077335.jpg', NULL, NULL),
(26, 11, 'https://ir-3.ozone.ru/s3/multimedia-1-p/wc1000/7149077341.jpg', NULL, NULL),
(27, 12, 'https://ir-3.ozone.ru/s3/multimedia-2/wc1000/6399097586.jpg', NULL, NULL),
(28, 12, 'https://ir-3.ozone.ru/s3/multimedia-0/wc1000/6399097584.jpg', NULL, NULL),
(29, 13, 'https://ae04.alicdn.com/kf/S08a450fba89a4031bf16913d35c6f7fbH.jpg', NULL, NULL),
(30, 13, 'https://ae04.alicdn.com/kf/S960f03edb4ac498693ac18abf501f21f5.jpg', NULL, NULL),
(31, 14, 'https://ir-3.ozone.ru/s3/multimedia-1-d/wc1000/7156802641.jpg', NULL, NULL),
(32, 14, 'https://ir-3.ozone.ru/s3/multimedia-1-n/wc1000/7156802651.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_12_25_190252_create_categories_table', 1),
(6, '2024_12_25_190303_create_products_table', 1),
(7, '2024_12_25_191935_create_category_product_table', 1),
(9, '2024_12_26_154114_create_images_table', 2),
(10, '2024_12_27_023735_create_sessions_table', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `image_links` text COLLATE utf8mb4_unicode_ci,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image_links`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'Куртка BOOM!\r\n', 'Куртка весенняя для мальчика\nКуртка демисезонная для мальчика от российского бренда BOOM! – стильная и надежная верхняя одежда для весны, которую выбирают родители и подростки. Качество продукции подтверждено победой в престижной премии \"Золотой медвежонок\".\n', 1999, NULL, 5942, NULL, NULL),
(2, 'Спортивная камера 4K (3840*2160) 30 fps/', 'Пульт дистанционного управления, водонепроницаемый корпус, водонепроницаемая крышка, водонепроницаемое основание с винтом, задняя клипса, держатель винта A, изогнутое основание, держатель винта B, аксессуар 1, аксессуар 2, аксессуар 3, основание, ремешок, веревка, клей 3M, кабель для передачи данных, чистящая ткань, руководство по эксплуатации и т.д.', 5442, NULL, 230, NULL, NULL),
(3, 'XV-18/128G/4K HD Умные Bluetooth-очки / Видео и фото / Черный', 'Комплектация\r\nЗарядные устройства, инструкции, карты памяти, чехлы для очков, линзы, разъемы\r\n\r\nГарантийный срок\r\n1\r\n\r\n', 3400, NULL, 1000, NULL, NULL),
(4, 'Отель Riders Lodge, 2*\r\n', 'Расположение отеля\r\nКомплекс находится на горнолыжном курорте \"Роза Хутор\", на высоте 1170 м над уровнем моря на территории Горной Олимпийской деревни, в шаговой доступности от подъемника «Олимпия» (первая очередь) и в непосредственной близости к трассе «Шале» и кресельному подъемнику. К западу от \"Роза Плато\" расположен экстрим-парк \"Роза Хутор\" со сноуборд-парком и... \r\nЕщё\r\nОбщее описание\r\nОтель Riders Lodge – это первый в России отель для райдеров, который расположен в Горной Олимпийской деревне (1100 м) и относится к формату ski-in/ski-out.\r\nПодъёмники Олимпия, Заповедный Лес и Шале находятся в шаговой доступности от отеля.', 20000, NULL, 300, NULL, NULL),
(5, 'Отель Нарния', 'Отель «Нарния» находится в 2 км от Архыза, на склоне горы. Неподалёку: Софийские водопады, Дуккинские озёра, Баритовый водопад, Скала Карча-Тёбе. До горнолыжного курорта «Романтик» 10 километров.\r\n\r\nПарк-отель «Нарния» — это комплекс коттеджей, выполненных в стиле альпийских шале. Коттеджи расположены на расстоянии друг от друга. С каждой террасы открывается вид на лес и горы. Парковка на территории отеля, в большинстве случаев есть возможность подъехать прямо к дому.\r\nЕсть оборудованная костровая зона, колонка и микрофоны для караоке. Собственная скважина с проверенной питьевой водой.\r\nКаждый номер оборудован для приготовления пищи, имеется набор посуды на 4 человека. На каждого гостя предоставляется по 3', 4322, NULL, 250, NULL, NULL),
(6, 'Тумба напольная на колесиках Драйв 13.259, Дуб сонома', 'Гарантийный срок\r\n24 месяца\r\n\r\nНазвание цвета\r\nДуб сонома\r\n\r\nКомплектация\r\nТумба в разобранном виде - 1 шт., комплект фурнитуры - 1 шт., инструкция по сборке - 1 шт., коробка картонная - 1 шт.', 1255, NULL, 540, NULL, NULL),
(7, 'Кеды adidas Sportswear Advantage', 'Почувствуйте комфорт в женских кроссовках adidas Advantage. Силуэт с низкой посадкой выполнен в классическом стиле и обеспечивает свободу движений. Промежуточная подошва Cloudfoam обеспечивает легкую амортизацию для мягкого шага. Наденьте эту пару на работу или выйдите на корт сыргать решающий матч. Классические кроссовки, частично изготовленные из переработанных материалов.', 2555, NULL, 300, NULL, NULL),
(8, 'Видеоняня беспроводная, камера', 'Беспроводная камера Wi-Fi\r\nКамера видеонаблюдения Smart Сamera FULL HD работает по беспроводной сети Wi-Fi. \r\n\r\nWi-Fi камера проста в подключении и обеспечит возможность наблюдать за происходящим в реальном времени из любой точки мира и с любого устройства.', 1200, NULL, 312, NULL, NULL),
(9, 'Кровать подростковая Аист Прованс 140*70 из массива берёзы\r\n', 'изайнерская детская кровать 140*70 из массива берёзы\r\nПредставляем уютную деревянную и безопасную кроватку с бортиком! Идеальное спальное место, созданное специально для малышей и подростков, обеспечит комфортный сон в любом возрасте. Она станет прекрасным дополнением к любой детской!', 12000, NULL, 431, NULL, NULL),
(10, 'Беговая дорожка электрическая складная для дома HonRise', 'Беговая дорожка HonRise Heavy Duty мощностью 2,5 л.с.\r\n— идеальный компаньон для сжигания жировых отложений и достижения целей, связанных с телом. Беговая дорожка имеет регулируемый наклон в соответствии с потребностями пользователя. Он состоит из прочного и легкого металлического каркаса, рассчитанного на длительное использование.\r\nРазмер: 1210*500*1100 мм', 24999, NULL, 1000, NULL, NULL),
(11, 'Валенки Nordman', 'Название цвета\r\nПингвин на липучке\r\n\r\nИнформация о размерах\r\nОбратите внимание, в таблице указана длина стельки, включая швы (около 4 мм по периметру), которые уходят под мех. То есть мех \"съедает\" часть стельки.\r\nЭто значит, чтобы подобрать размер по стельке, необходимо к длине стопы ребенка дважды прибавить 0,4 см (длина шва с каждой части), а потом еще прибавить желаемый запас (обычно родители выбирают запас для зимней обуви 1 см). У вас получится длина необходимой стельки.\r\nНапример, стопа ребенка 20,2 см. Желаемый запас – 1 см. Запас на шов 0,8 см. Значит, длина стельки должна быть 22 см. Оптимальным вариантом будет 33 размер (227 см).\r\nСамый простой способ подобрать зимнюю обувь - прибавить к длине стопы 2 см. Это и будет длина стельки, оптимальная для того, чтобы обувь не была слишком свободна или слишком \"впритык\". Если планируете носить обувь на толстый носок, увеличивайте размер запаса с 1 см до 1,5 см.', 3222, NULL, 341, NULL, NULL),
(12, 'Воск для обуви бесцветный пчелиный, для полировки,', 'Это удивительное средство для ухода за обувью способно превратить ваши любимые пары в настоящие жемчужины гардероба. Благодаря особому составу, этот продукт сохранит ваш обувной гардероб в идеальном состоянии, защитив от негативного воздействия окружающей среды.\r\nВнешний вид обуви во много зависит от того, как за ней ухаживать. Особого внимания этот предмет гардероба требует зимой, когда под ногами снежная каша, реагенты. Используя специальные средства для защиты, мы обеспечиваем', 125, NULL, 412, NULL, NULL),
(13, 'Бесщеточный турбинный двигатель для радиоуправляемой модели самолета', 'Swiwin SW140B бесщеточный турбинный двигатель реактивный турбореактивный двигатель 14 кг бесщеточная версия для RC большая модель турбины самолет автомобиль мотоцикл\r\nРеактивная турбина Swiwin SW140B 14 кг с автозапуском и бесщеточным стартером (тяга 140N- 30,8Фунт/14 кг)\r\nТурбореактивный двигатель-газотурбинный двигатель, который работает, сжимая воздух с входом и компрессором (осевым, центробежным или обоими), смешивая топливо со сжатым воздухом. Сжигание смеси в камере сгорания, а затем пропуск горячего воздуха под высоким давлением через турбину и сопло.\r\n', 246098, NULL, 52, NULL, NULL),
(14, 'Кроссовки Nike JORDAN', 'Описание\r\nДанная модель премиум качества\r\nИнформация о размерах\r\nУважаемый покупатель данный модель На размер Маломереть', 5422, NULL, 123, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('b1a7TmY1CwojbvBsvRTOqiMAzuJkSVKI04E9XPj3', NULL, '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3pycm1mOUw1TmE4cWRWc20yM2sweWJaem54WFRmTVVLWExabjN2VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODg3NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1735285253),
('vKp8ptKIyF1qOxQWdSx7FKFp1nRyNDM7VKvTAgUI', NULL, '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUlRYzRQMFkwNHpITWtyank2SnZhaGxpZHByRE9FNHloSkJOS0lwSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODg3NiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1735286437);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_title_unique` (`title`);

--
-- Индексы таблицы `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_category_idx` (`category_id`),
  ADD KEY `category_product_product_idx` (`product_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `category_product_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Ограничения внешнего ключа таблицы `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
