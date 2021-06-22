-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 21 2021 г., 05:02
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `library`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `id` int NOT NULL,
  `fio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`id`, `fio`) VALUES
(1, 'Гоголь Николай Васильевич'),
(2, 'Толстой Лев Николаевич'),
(3, 'Пушкин Александр Сергеевич'),
(4, 'Чехов Антон Павлович'),
(5, 'Франц Кафка'),
(6, 'Фридрих Ницше'),
(7, 'Достоевский Фёдор Михайлович'),
(8, 'Ландау Лев Давидович'),
(9, 'Лифшиц Евгений Михайлович');

-- --------------------------------------------------------

--
-- Структура таблицы `authorsandbooks`
--

CREATE TABLE `authorsandbooks` (
  `idauthor` int NOT NULL,
  `idbook` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `authorsandbooks`
--

INSERT INTO `authorsandbooks` (`idauthor`, `idbook`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(8, 11),
(9, 11),
(5, 13),
(5, 14),
(6, 12);

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` int NOT NULL,
  `name_b` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `name_b`) VALUES
(1, 'Преступление и Наказание'),
(2, 'Мёртвые души'),
(3, 'Нос'),
(4, 'Шинель'),
(5, 'Тарас Бульба'),
(6, 'Невский Проспект'),
(7, 'Вий'),
(8, 'Портрет'),
(9, 'Миргород'),
(10, 'Вечера на хуторе близ Диканьки'),
(11, 'Курс теоретической физики'),
(12, 'Так говорил Заратустра'),
(13, 'Превращение'),
(14, 'Замок'),
(15, 'Война и Мир');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `authorsandbooks`
--
ALTER TABLE `authorsandbooks`
  ADD KEY `idauthor` (`idauthor`),
  ADD KEY `idbook` (`idbook`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `authorsandbooks`
--
ALTER TABLE `authorsandbooks`
  ADD CONSTRAINT `authorsandbooks_ibfk_1` FOREIGN KEY (`idauthor`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `authorsandbooks_ibfk_2` FOREIGN KEY (`idbook`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
