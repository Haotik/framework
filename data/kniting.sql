-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Окт 10 2019 г., 15:10
-- Версия сервера: 5.7.21-1
-- Версия PHP: 7.2.4-1+b1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kniting`
--

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int(8) NOT NULL,
  `price` int(8) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `imageID` int(8) NOT NULL DEFAULT '1',
  `material1` int(8) DEFAULT NULL,
  `material2` int(8) DEFAULT NULL,
  `material3` int(8) DEFAULT NULL,
  `material4` int(8) DEFAULT NULL,
  `material5` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `price`, `title`, `description`, `imageID`, `material1`, `material2`, `material3`, `material4`, `material5`) VALUES
(1, 500, 'Тестовая вещь №1', 'просто что то где то лежит ', 1, 1, 2, NULL, NULL, NULL),
(2, 500, 'Тестовая вещь №1', 'просто что то где то лежит ', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `class` varchar(12) NOT NULL DEFAULT 'IMGnormal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `name`, `class`) VALUES
(1, 'no_image.jpg', 'IMGnormal'),
(2, 'test_img.png', 'IMGnormal');

-- --------------------------------------------------------

--
-- Структура таблицы `matirials`
--

CREATE TABLE `matirials` (
  `id` int(8) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `matirials`
--

INSERT INTO `matirials` (`id`, `title`, `description`) VALUES
(1, 'Нитки', 'Шерстяные нитки используемые для вязания'),
(2, 'Спицы', 'Диаметр 3мм длинна 80 см');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(32) NOT NULL,
  `date` varchar(20) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `imageid` varchar(32) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `date`, `title`, `description`, `imageid`) VALUES
(1, '10.10.2019', 'Начинаем разработку', 'Тестовая новость созданная для того что бы посмотреть как оно будет отображаться. \r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae blanditiis consectetur consequuntur deserunt dolorem ea eaque esse explicabo natus odio. Accusamus dolores eaque esse eveniet excepturi facere in, ipsa iste laudantium maiores molestias nam non, officia optio praesentium qui sapiente temporibus veniam voluptas voluptatibus. Animi atque consequatur id possimus quibusdam! At consectetur culpa, cum dignissimos enim esse eveniet inventore maxime molestiae nobis quasi quod, reiciendis, rem sed soluta tenetur unde. Atque consequuntur debitis deleniti doloremque earum eos harum illum, impedit in laudantium libero minima modi molestiae nihil pariatur perferendis placeat possimus quibusdam quidem quisquam recusandae rem reprehenderit tempore temporibus tenetur voluptas voluptatibus. Alias animi at id ipsam minus officiis porro temporibus vitae! At beatae consequuntur, dolor eum eveniet expedita explicabo fuga id inventore laboriosam magni modi nemo numquam placeat provident quaerat repellendus sit tempora voluptas voluptatem. Ad alias aut cum dicta dignissimos dolorem doloremque dolorum error exercitationem explicabo fugit itaque laborum, minus molestiae nemo, officiis perspiciatis possimus repellat repudiandae saepe sit soluta tenetur velit veritatis voluptate voluptatem voluptates? A adipisci amet, commodi consequuntur corporis cum dicta dolorem ducimus eaque enim eos et, eum excepturi expedita facilis hic ipsa laboriosam laudantium nisi nobis perferendis perspiciatis placeat quis reiciendis totam ut vero, voluptatem. Alias atque commodi consequuntur, delectus dignissimos distinctio dolore dolores ducimus ea eaque error facere id in incidunt ipsa maiores, minima molestiae nobis nulla perspiciatis reprehenderit sapiente tempore. Alias asperiores, dolorem dolores eaque excepturi ipsum molestias nam nostrum pariatur praesentium quaerat, quibusdam quis quo ratione tempora, tempore velit voluptatem. Animi, assumenda aut cum debitis dicta dolorem doloribus et eum excepturi, fugiat impedit inventore molestias neque nisi officia optio pariatur perspiciatis quas quis ratione recusandae repellendus similique suscipit tenetur veniam? Accusantium atque consequatur debitis eum fuga, ipsa minima sint. Consequatur, enim magni quo sequi suscipit tempora vero. Aperiam atque consequatur consequuntur corporis culpa cumque debitis delectus dicta ducimus eaque ipsam minima nesciunt nulla, officia provident quis repellendus veniam voluptatum! A, adipisci aliquid animi aperiam aspernatur, expedita hic incidunt nihil nobis provident quia reprehenderit vel velit? Commodi dolorum enim error fugit, itaque iusto magni maxime minus, mollitia nobis porro quas quis quod recusandae rem repudiandae sed sequi tempora. Ab ad alias aspernatur atque commodi culpa dicta ea eos esse eum exercitationem fugiat in iste itaque iure laboriosam libero magni minima, necessitatibus nisi nostrum nulla officiis, pariatur possimus provident quas, quis quisquam ratione reiciendis sed temporibus tenetur ullam vero. Alias autem corporis culpa ex magnam molestias mollitia nihil quae veritatis. Cumque eos ex facere hic illo inventore, molestias natus optio quae quaerat quia ratione saepe sequi similique tempore? Necessitatibus, recusandae, repudiandae. Aperiam cumque dolor facere in incidunt, nihil. At dolor dolore explicabo magnam nesciunt quibusdam sapiente voluptate? Accusamus, aliquam aperiam at aut consequatur cum delectus dolor impedit ipsa itaque labore molestias nam optio placeat, quae qui quibusdam quos reprehenderit. Expedita labore nobis non tenetur voluptatum. Aliquam assumenda beatae consequuntur cumque, doloribus facilis fugiat in ipsam iste iusto laudantium, modi mollitia non officia officiis perspiciatis porro possimus praesentium quas quasi quia rem tempore ullam!', '1'),
(2, '10.10.2019', 'Начинаем разработку', 'Тестовая новость созданная для того что бы посмотреть как оно будет отображаться. \r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae blanditiis consectetur consequuntur deserunt dolorem ea eaque esse explicabo natus odio. Accusamus dolores eaque esse eveniet excepturi facere in, ipsa iste laudantium maiores molestias nam non, officia optio praesentium qui sapiente temporibus veniam voluptas voluptatibus. Animi atque consequatur id possimus quibusdam! At consectetur culpa, cum dignissimos enim esse eveniet inventore maxime molestiae nobis quasi quod, reiciendis, rem sed soluta tenetur unde. Atque consequuntur debitis deleniti doloremque earum eos harum illum, impedit in laudantium libero minima modi molestiae nihil pariatur perferendis placeat possimus quibusdam quidem quisquam recusandae rem reprehenderit tempore temporibus tenetur voluptas voluptatibus. Alias animi at id ipsam minus officiis porro temporibus vitae! At beatae consequuntur, dolor eum eveniet expedita explicabo fuga id inventore laboriosam magni modi nemo numquam placeat provident quaerat repellendus sit tempora voluptas voluptatem. Ad alias aut cum dicta dignissimos dolorem doloremque dolorum error exercitationem explicabo fugit itaque laborum, minus molestiae nemo, officiis perspiciatis possimus repellat repudiandae saepe sit soluta tenetur velit veritatis voluptate voluptatem voluptates? A adipisci amet, commodi consequuntur corporis cum dicta dolorem ducimus eaque enim eos et, eum excepturi expedita facilis hic ipsa laboriosam laudantium nisi nobis perferendis perspiciatis placeat quis reiciendis totam ut vero, voluptatem. Alias atque commodi consequuntur, delectus dignissimos distinctio dolore dolores ducimus ea eaque error facere id in incidunt ipsa maiores, minima molestiae nobis nulla perspiciatis reprehenderit sapiente tempore. Alias asperiores, dolorem dolores eaque excepturi ipsum molestias nam nostrum pariatur praesentium quaerat, quibusdam quis quo ratione tempora, tempore velit voluptatem. Animi, assumenda aut cum debitis dicta dolorem doloribus et eum excepturi, fugiat impedit inventore molestias neque nisi officia optio pariatur perspiciatis quas quis ratione recusandae repellendus similique suscipit tenetur veniam? Accusantium atque consequatur debitis eum fuga, ipsa minima sint. Consequatur, enim magni quo sequi suscipit tempora vero. Aperiam atque consequatur consequuntur corporis culpa cumque debitis delectus dicta ducimus eaque ipsam minima nesciunt nulla, officia provident quis repellendus veniam voluptatum! A, adipisci aliquid animi aperiam aspernatur, expedita hic incidunt nihil nobis provident quia reprehenderit vel velit? Commodi dolorum enim error fugit, itaque iusto magni maxime minus, mollitia nobis porro quas quis quod recusandae rem repudiandae sed sequi tempora. Ab ad alias aspernatur atque commodi culpa dicta ea eos esse eum exercitationem fugiat in iste itaque iure laboriosam libero magni minima, necessitatibus nisi nostrum nulla officiis, pariatur possimus provident quas, quis quisquam ratione reiciendis sed temporibus tenetur ullam vero. Alias autem corporis culpa ex magnam molestias mollitia nihil quae veritatis. Cumque eos ex facere hic illo inventore, molestias natus optio quae quaerat quia ratione saepe sequi similique tempore? Necessitatibus, recusandae, repudiandae. Aperiam cumque dolor facere in incidunt, nihil. At dolor dolore explicabo magnam nesciunt quibusdam sapiente voluptate? Accusamus, aliquam aperiam at aut consequatur cum delectus dolor impedit ipsa itaque labore molestias nam optio placeat, quae qui quibusdam quos reprehenderit. Expedita labore nobis non tenetur voluptatum. Aliquam assumenda beatae consequuntur cumque, doloribus facilis fugiat in ipsam iste iusto laudantium, modi mollitia non officia officiis perspiciatis porro possimus praesentium quas quasi quia rem tempore ullam!', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(32) NOT NULL,
  `login` varchar(10) NOT NULL,
  `password` varchar(16) NOT NULL,
  `name` varchar(16) NOT NULL,
  `surname` varchar(16) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `role` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `name`, `surname`, `phone`, `email`, `role`) VALUES
(1, 'Haotik', 'Edel15vEis18', 'Andrey', 'Korechov', '8-919-135-96-03', 'korehovrabota@yandex.ru', 2),
(2, 'Haotik', 'Edel15vEis18', 'Andrey', 'Korechov', '8-919-135-96-03', 'korehovrabota@yandex.ru', 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `material1` (`material1`),
  ADD KEY `material2` (`material2`),
  ADD KEY `material3` (`material3`),
  ADD KEY `material4` (`material4`),
  ADD KEY `material5` (`material5`),
  ADD KEY `imageID` (`imageID`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `matirials`
--
ALTER TABLE `matirials`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `matirials`
--
ALTER TABLE `matirials`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `goods`
--
ALTER TABLE `goods`
  ADD CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`material1`) REFERENCES `matirials` (`id`),
  ADD CONSTRAINT `goods_ibfk_2` FOREIGN KEY (`material2`) REFERENCES `matirials` (`id`),
  ADD CONSTRAINT `goods_ibfk_3` FOREIGN KEY (`material3`) REFERENCES `matirials` (`id`),
  ADD CONSTRAINT `goods_ibfk_4` FOREIGN KEY (`material4`) REFERENCES `matirials` (`id`),
  ADD CONSTRAINT `goods_ibfk_5` FOREIGN KEY (`material5`) REFERENCES `matirials` (`id`),
  ADD CONSTRAINT `goods_ibfk_6` FOREIGN KEY (`imageID`) REFERENCES `images` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
