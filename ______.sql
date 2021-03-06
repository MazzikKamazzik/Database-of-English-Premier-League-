-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 15 2022 г., 02:31
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
-- База данных: `ппп`
--

-- --------------------------------------------------------

--
-- Структура таблицы `events`
--

CREATE TABLE `events` (
  `Id` int NOT NULL,
  `Text` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `events`
--

INSERT INTO `events` (`Id`, `Text`) VALUES
(1, 'получил жёлтую карточку'),
(2, 'забил гол'),
(3, 'получил красную карточку');

-- --------------------------------------------------------

--
-- Структура таблицы `eventsmatches`
--

CREATE TABLE `eventsmatches` (
  `Id` int NOT NULL,
  `Event_Id` int NOT NULL,
  `Match_Id` int NOT NULL,
  `Player_Id` int NOT NULL,
  `Minutes` int NOT NULL,
  `Seconds` int NOT NULL COMMENT '0-59'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='События которые произошли во время матча(гол, получение ж.к)';

--
-- Дамп данных таблицы `eventsmatches`
--

INSERT INTO `eventsmatches` (`Id`, `Event_Id`, `Match_Id`, `Player_Id`, `Minutes`, `Seconds`) VALUES
(1, 2, 2, 22, 4, 3),
(3, 3, 2, 3, 34, 12),
(4, 1, 2, 23, 66, 44),
(5, 2, 2, 24, 12, 5),
(6, 2, 2, 4, 78, 53),
(19, 3, 7, 43, 44, 46),
(20, 1, 7, 42, 50, 10),
(21, 2, 7, 43, 20, 32),
(22, 2, 7, 42, 23, 36),
(23, 2, 7, 44, 9, 2),
(24, 2, 7, 41, 52, 30),
(25, 2, 7, 43, 36, 9),
(26, 2, 7, 55, 62, 40),
(27, 2, 7, 53, 35, 43),
(28, 2, 7, 56, 88, 1),
(29, 2, 7, 54, 64, 56),
(61, 1, 8, 47, 10, 8),
(62, 3, 8, 48, 80, 20),
(63, 2, 8, 49, 82, 38),
(64, 2, 8, 50, 9, 33),
(65, 2, 8, 48, 4, 6),
(66, 2, 8, 70, 12, 4),
(67, 2, 8, 71, 59, 53),
(68, 3, 9, 28, 53, 9),
(69, 1, 9, 29, 37, 18),
(70, 2, 9, 29, 36, 37),
(71, 2, 9, 30, 11, 7),
(72, 2, 9, 43, 79, 17),
(73, 2, 9, 44, 33, 33),
(74, 3, 10, 35, 75, 17),
(75, 1, 10, 36, 31, 36),
(76, 2, 10, 37, 78, 2),
(77, 2, 10, 37, 17, 45),
(78, 2, 10, 38, 77, 28),
(79, 2, 10, 47, 18, 29),
(80, 2, 10, 48, 74, 32),
(81, 2, 10, 49, 89, 12),
(82, 2, 10, 50, 42, 67),
(83, 3, 16, 24, 28, 38),
(84, 1, 16, 25, 88, 9),
(85, 2, 16, 23, 53, 15),
(86, 2, 16, 26, 47, 11),
(87, 2, 16, 29, 64, 34),
(88, 2, 16, 30, 30, 14),
(89, 2, 16, 31, 40, 19),
(90, 2, 16, 32, 35, 30),
(91, 3, 17, 35, 66, 0),
(92, 1, 17, 36, 87, 18),
(93, 2, 17, 37, 38, 1),
(94, 2, 17, 38, 45, 42),
(95, 2, 17, 2, 60, 19),
(96, 2, 17, 3, 80, 15),
(97, 2, 17, 4, 52, 57),
(98, 3, 18, 19, 37, 4),
(99, 1, 18, 42, 68, 4),
(100, 2, 18, 42, 45, 3),
(101, 2, 18, 43, 30, 36),
(102, 2, 18, 44, 42, 9),
(103, 2, 18, 18, 9, 45),
(104, 2, 18, 19, 81, 46),
(105, 2, 18, 20, 32, 22),
(106, 1, 19, 46, 57, 38),
(107, 3, 19, 58, 11, 39),
(108, 2, 19, 47, 16, 48),
(109, 3, 20, 59, 25, 21),
(110, 1, 20, 71, 53, 15),
(111, 2, 20, 60, 35, 17),
(112, 2, 20, 61, 20, 44),
(113, 2, 20, 72, 34, 57),
(114, 2, 20, 73, 85, 29),
(115, 3, 21, 72, 44, 56),
(116, 1, 21, 73, 44, 49),
(117, 2, 21, 70, 89, 19),
(118, 2, 21, 71, 75, 26),
(119, 2, 21, 71, 48, 31),
(120, 2, 21, 60, 62, 36),
(121, 2, 21, 60, 68, 34),
(122, 2, 21, 61, 76, 36),
(123, 2, 21, 61, 39, 2),
(124, 3, 22, 52, 42, 25),
(125, 1, 22, 46, 27, 6),
(126, 2, 22, 56, 77, 33),
(127, 2, 22, 47, 15, 47),
(128, 2, 22, 48, 18, 12),
(129, 1, 23, 49, 22, 25),
(130, 3, 23, 55, 68, 4),
(131, 2, 23, 48, 75, 42),
(132, 2, 23, 49, 54, 31),
(133, 2, 23, 50, 19, 46),
(134, 2, 23, 53, 46, 4),
(135, 3, 24, 42, 68, 56),
(136, 1, 24, 18, 22, 3),
(137, 2, 24, 19, 87, 56),
(138, 3, 27, 22, 14, 47),
(139, 1, 27, 23, 80, 79),
(140, 1, 29, 37, 17, 14),
(141, 3, 29, 8, 14, 38),
(142, 2, 29, 35, 42, 32),
(143, 2, 29, 36, 30, 38),
(144, 3, 30, 20, 30, 15),
(145, 1, 30, 62, 16, 14),
(146, 2, 30, 8, 42, 0),
(147, 2, 30, 18, 70, 37),
(148, 2, 30, 19, 21, 9),
(149, 2, 30, 20, 60, 1),
(150, 2, 30, 59, 16, 6),
(151, 2, 30, 60, 69, 25);

-- --------------------------------------------------------

--
-- Структура таблицы `matches`
--

CREATE TABLE `matches` (
  `Id` int NOT NULL,
  `Team1_Id` int NOT NULL,
  `Team2_Id` int NOT NULL,
  `Date` datetime NOT NULL,
  `Season` int NOT NULL,
  `Score1` int DEFAULT NULL,
  `Score2` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Матчи';

--
-- Дамп данных таблицы `matches`
--

INSERT INTO `matches` (`Id`, `Team1_Id`, `Team2_Id`, `Date`, `Season`, `Score1`, `Score2`) VALUES
(1, 1, 4, '2022-02-14 16:00:00', 2022, 0, 0),
(2, 1, 4, '2020-12-15 20:00:00', 2020, 2, 1),
(3, 5, 7, '2022-03-08 19:00:00', 2022, 0, 0),
(4, 8, 6, '2022-04-01 18:30:00', 2022, 0, 0),
(5, 9, 10, '2022-05-09 22:00:00', 2022, 0, 0),
(6, 2, 3, '2022-06-01 17:30:00', 2022, 0, 0),
(7, 5, 8, '2015-10-31 15:30:00', 2015, 5, 4),
(8, 7, 10, '2015-09-01 08:00:00', 2015, 3, 2),
(9, 2, 5, '2020-01-01 00:00:00', 2020, 2, 2),
(10, 7, 3, '2014-08-25 08:18:00', 2014, 4, 3),
(11, 10, 1, '2022-05-19 21:00:00', 2022, 0, 0),
(12, 5, 9, '2022-06-13 14:30:00', 2022, 0, 0),
(13, 7, 2, '2022-08-11 17:30:00', 2022, 0, 0),
(14, 3, 9, '2022-07-20 15:30:00', 2022, 0, 0),
(15, 3, 8, '2022-09-13 13:30:00', 2022, 0, 0),
(16, 1, 2, '2014-07-10 18:20:00', 2014, 2, 4),
(17, 3, 4, '2015-05-23 12:30:00', 2015, 2, 3),
(18, 5, 6, '2020-05-11 19:30:00', 2020, 3, 3),
(19, 7, 9, '2020-03-18 17:00:00', 2020, 1, 0),
(20, 9, 10, '2014-06-17 11:30:00', 2014, 2, 2),
(21, 10, 9, '2020-10-12 16:30:00', 2020, 3, 4),
(22, 8, 7, '2020-07-21 09:30:00', 2020, 1, 2),
(23, 7, 8, '2015-04-23 07:30:00', 2015, 3, 1),
(24, 5, 6, '2015-08-18 14:20:00', 2015, 0, 1),
(25, 5, 4, '2022-07-04 13:25:00', 2022, 0, 0),
(26, 2, 3, '2022-07-20 17:20:00', 2022, 0, 0),
(27, 2, 1, '2021-08-19 18:25:00', 2021, 0, 0),
(28, 5, 8, '2022-07-21 19:20:00', 2022, 0, 0),
(29, 3, 6, '2014-10-06 09:19:00', 2014, 0, 2),
(30, 6, 9, '2015-06-18 15:25:00', 2015, 4, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `Id` int NOT NULL,
  `Title` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Photo` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Новости';

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`Id`, `Title`, `Photo`, `Text`, `Date`) VALUES
(4, 'В «Барселоне» сомневаются, что «Астон Вилла» выкупит Коутиньо за 40 млн евро летом', 'Coutinio', 'Полузащитник Филиппе Коутиньо результативно начал свои выступления за «Астон Виллу», будучи арендованным у «Барселоны».\r\n\r\nЗа 3 игры в АПЛ бразилец забил 2 гола и отдал 2 результативные передачи, однако, как информирует Diario Sport, в «блаугране» пессимистично оценивают шансы на то, что английская команда летом выкупит футболиста за согласованные 40 млн евро.\r\n\r\nЕсли «Астон Вилла» решит сохранить Коутиньо на постоянной основе, то постарается сделать это за меньшие деньги. Но, как утверждается, и 25-30 млн евро – тоже неплохой вариант для «Барселоны», учитывая высокую зарплату игрока.\r\n\r\n', '2022-02-10 19:19:05'),
(5, 'УЕФА призвал судей жестче наказывать, когда игроки будут окружать их, выпрашивать карточки и приукрашивать реакцию на фолы', 'Referee', 'Глава судейского комитета УЕФА Роберт Розетти рассказал о курсе, который прошли европейские арбитры.\r\n\r\nСудей призвали жестче наказывать игроков за симуляции, приукрашивание реакций на фолы и попытки выпросить карточку для соперника. Также арбитрам рекомендовали принимать более жесткие меры в ситуациях, когда игроки окружают судью и оказывают на него давление, пытаясь заставить его изменить решение.\r\n\r\n«Мы обеспокоены, мы не хотим, чтобы происходили такие инциденты. Они вредят игре и ее образу.\r\n\r\nТакое поведение неуважительно и не отражает дух честной игры, когда игроки, например, пытаются обмануть судью или оказать на него давление, чтобы он предупредил или удалил соперника.\r\n\r\nМы не хотим, чтобы это происходило, мы не можем с этим смириться. Следовательно, мы просим судей быть бдительными и принимать соответствующие жесткие и последовательные меры в таких случаях. Особенно важно, чтобы судьи всегда действовали в соответствии с тем, что они видят, а не с тем, что они слышат», – сказал Розетти.', '2022-02-10 19:22:03'),
(6, 'Антонио о реакции на историю с Зума и кошкой: «Я не одобряю поступок, но это хуже расизма»', 'Mikail Antonio', 'Форвард «Вест Хэма» Микаил Антонио прокомментировал реакцию на инцидент с участием защитника Курта Зума и кошки.\r\n\r\nПосле того, как Зума пнул и ударил кошку, его призывали уйти из сборной Франции, а некоторые эксперты считали, что «Вест Хэм» должен выгнать футболиста. Кроме того, adidas расторг контракт с французом, а клуб оштрафовал его на 250 тысяч фунтов.\r\n\r\n«У меня к вам вопрос. Считаете ли вы, что его поступок хуже расизма? Я не одобряю его поступок. И вообще не согласен с тем, что он сделал. Но есть люди, которые были осуждены и пойманы за расизм, и после этого играли в футбол. \r\n\r\nИх забанили на восемь матчей или что-то в этом роде, но сейчас люди призывают выгнать человека и лишить его средств к существованию. Я просто хочу задать вопрос всем: разве поступок Зума хуже того, что сделали люди, осужденные за расизм?» – сказал Антонио.', '2022-02-10 19:26:32'),
(7, 'Роналду не забивает 5 матчей. У форварда «МЮ» нет результативных действий в 2022-м', 'Ronaldo', '«Манчестер Юнайтед» сыграл вничью с «Бернли» (1:1) в 24-м туре АПЛ.\r\n\r\nФорвард манкунианцев Криштиану Роналду вышел на поле на 68-й минуте и за отведенное ему время результативными действиями не отметился.\r\n\r\nПортугалец не может ни забить, ни сделать голевой пас уже 5 матчей – с начала 2022 года. В последний раз у него был гол 30 декабря в матче как раз с «Бернли» (3:1).', '2022-02-10 19:33:27'),
(8, 'Погба забил в АПЛ впервые с января 2021-го', 'Pogba', 'Полузащитник «Манчестер Юнайтед» Поль Погба отличился в матче с «Бернли» (1:0, первый тайм) в 24-м туре Премьер-лиги.\r\n\r\nДля Погба это первый гол в АПЛ более чем за год. В последний раз он забивал в чемпионате Англии 20 января 2021 года в игре с «Фулхэмом» (2:1).\r\n\r\nПогба сыграл в 10 матчах (включая сегодняшний) в АПЛ в этом сезоне, помимо гола на его счету 7 результативных передач.', '2022-02-10 19:33:27');

-- --------------------------------------------------------

--
-- Структура таблицы `players`
--

CREATE TABLE `players` (
  `Id` int NOT NULL,
  `FirstName` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LastName` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Position` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Goals` int NOT NULL,
  `Passes` int NOT NULL,
  `Assists` int NOT NULL,
  `SuccessfulPasses` int NOT NULL COMMENT '0-100% ',
  `YellowCards` int NOT NULL,
  `RedCards` int NOT NULL,
  `Rating` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Игроки и их статистика';

--
-- Дамп данных таблицы `players`
--

INSERT INTO `players` (`Id`, `FirstName`, `LastName`, `Position`, `Goals`, `Passes`, `Assists`, `SuccessfulPasses`, `YellowCards`, `RedCards`, `Rating`) VALUES
(1, 'Виктор ', 'Линделеф', 'Защитник', 1, 500, 2, 266, 2, 0, 70),
(2, 'Давид ', 'Де Хеа', 'Вратарь', 0, 100, 0, 78, 2, 0, 86),
(3, 'Криштиану', 'Роналду', 'Нападающий', 8, 50, 3, 30, 5, 0, 100),
(4, 'Эрик ', 'Байи', 'Защитник', 1, 600, 0, 350, 1, 1, 77),
(5, 'Диогу \r\n', 'Дало ', 'Защитник', 0, 0, 0, 0, 2, 0, 65),
(6, 'Ральф ', 'Рангник', 'Тренер', 0, 0, 0, 0, 0, 0, 100),
(7, 'Эдуар\r\n', 'Менди', 'Вратарь', 0, 1000, 26, 500, 0, 0, 74),
(8, 'Антонио\r\n', 'Рюдигер', 'Защитник', 2, 50, 4, 27, 55, 25, 88),
(18, 'Мэйсон ', 'Маунт', 'Полузащитник', 13, 11, 24, 9, 4, 0, 45),
(19, 'Жоржиньо ', 'Фрелло', 'Полузащитник', 13, 2, 15, 2, 6, 0, 40),
(20, 'Ромелу ', 'Лукаку', 'Нападающий', 29, 100, 40, 67, 4, 0, 70),
(21, 'Томас ', 'Тухель', 'Тренер', 0, 0, 0, 0, 0, 0, 88),
(22, 'Александр ', 'Зинченко', 'Защитник', 2, 150, 13, 112, 5, 1, 38),
(23, 'Бернарду ', 'Силва', 'Полузащитник', 59, 1000, 103, 756, 33, 1, 89),
(24, 'Эдерсон', '', 'Вратарь', 0, 1500, 3, 1356, 28, 2, 92),
(25, 'Габриэл ', 'Жезус', 'Нападающий', 73, 1856, 110, 1478, 34, 0, 77),
(26, 'Кевин ', 'Де Брюйне', 'Полузащитник', 88, 1654, 223, 1358, 29, 2, 76),
(27, 'Пеп ', 'Гвардиола', 'Тренер', 0, 0, 0, 0, 0, 0, 66),
(28, 'Филиппе ', 'Коутиньо', 'Полузащитник', 77, 1523, 134, 985, 18, 3, 95),
(29, 'Робин ', 'Ольсен', 'Вратарь', 0, 1253, 0, 1023, 8, 1, 64),
(30, 'Люка ', 'Динь', 'Защитник', 9, 854, 39, 652, 35, 3, 42),
(31, 'Олли ', 'Уоткинс', 'Нападающий', 98, 985, 124, 798, 32, 1, 86),
(32, 'Эшли ', 'Янг', 'Защитник', 52, 1856, 109, 1359, 75, 2, 79),
(33, 'Стивен ', 'Джеррард', 'Тренер', 0, 0, 0, 0, 0, 0, 64),
(34, 'Даррен ', 'Рэндолф', 'Вратарь', 0, 1650, 0, 1423, 11, 1, 62),
(35, 'Владимир ', 'Цоуфал', 'Защитник', 10, 672, 23, 462, 25, 3, 55),
(36, 'Микаил ', 'Антонио', 'Нападающий', 94, 1613, 155, 1353, 37, 2, 82),
(37, 'Андрей ', 'Ярмоленко', 'Полузащитник', 108, 1785, 171, 1567, 47, 3, 85),
(38, 'Курт ', 'Зума', 'Защитник', 14, 652, 19, 459, 18, 2, 42),
(39, 'Дэвид ', 'Мойес', 'Тренер', 0, 0, 0, 0, 0, 0, 78),
(40, 'Адриан ', 'Кастильо', 'Вратарь', 0, 2050, 0, 1786, 17, 2, 92),
(41, 'Ибраима ', 'Конате', 'Защитник', 3, 782, 4, 542, 15, 0, 56),
(42, 'Роберто ', 'Фирмино', 'Нападающий', 116, 2647, 196, 2596, 38, 0, 95),
(43, 'Мохамед ', 'Салах', 'Полузащитник', 168, 3541, 238, 3268, 11, 1, 97),
(44, 'Жоэль ', 'Матип', 'Защитник', 22, 742, 36, 589, 34, 1, 61),
(45, 'Юрген ', 'Клопп', 'Тренер', 0, 0, 0, 0, 0, 0, 98),
(46, 'Габриэл ', 'Магальяэс', 'Защитник', 8, 328, 8, 226, 22, 3, 38),
(47, 'Бернд ', 'Лено', 'Вратарь', 0, 3524, 0, 3389, 9, 1, 79),
(48, 'Александр ', 'Ляказетт', 'Нападающий', 153, 3648, 215, 3467, 39, 2, 78),
(49, 'Киран ', 'Тирни', 'Защитник', 8, 235, 32, 204, 12, 0, 39),
(50, 'Николя ', 'Пепе', 'Полузащитник', 60, 649, 86, 605, 16, 1, 64),
(51, 'Микель ', 'Артета', 'Тренер', 0, 0, 0, 0, 0, 0, 56),
(52, 'Уго ', 'Льорис', 'Вратарь', 0, 2753, 0, 2513, 8, 1, 67),
(53, 'Давинсон ', 'Санчес', 'Защитник', 9, 285, 13, 256, 22, 1, 36),
(54, 'Харри ', 'Кейн', 'Нападающий', 185, 4026, 227, 3847, 32, 1, 88),
(55, 'Лукас ', 'Моура', 'Полузащитник', 72, 1489, 128, 1369, 32, 1, 63),
(56, 'Серхио ', 'Регилон', 'Защитник', 13, 123, 25, 92, 44, 1, 28),
(57, 'Антонио ', 'Конте', 'Тренер', 0, 0, 0, 0, 0, 0, 79),
(58, 'Фрэйзер ', 'Форстер', 'Вратарь', 0, 1548, 0, 1345, 16, 2, 42),
(59, 'Кайл ', 'Уокер-Питерс', 'Защитник', 1, 95, 11, 68, 11, 0, 25),
(60, 'Шейн ', 'Лонг', 'Нападающий', 95, 1649, 127, 1452, 38, 1, 67),
(61, 'Стюарт ', 'Армстронг', 'Полузащитник', 53, 1258, 75, 1112, 22, 1, 38),
(62, 'Мохаммед ', 'Салису', 'Защитник', 2, 75, 3, 67, 22, 1, 22),
(63, 'Ральф ', 'Хазенхюттль', 'Тренер', 0, 0, 0, 0, 0, 0, 79),
(69, 'Каспер ', 'Шмейхель', 'Вратарь', 0, 4389, 0, 4076, 20, 1, 92),
(70, 'Дэниэл ', 'Амарти', 'Защитник', 5, 1089, 6, 874, 21, 4, 75),
(71, 'Пэтсон ', 'Дака', 'Нападающий', 64, 2304, 83, 2016, 9, 0, 65),
(72, 'Нампалис ', 'Менди', 'Полузащитник', 1, 94, 6, 61, 36, 2, 53),
(73, 'Уэсли ', 'Фофана', 'Защитник', 1, 534, 1, 381, 12, 0, 42),
(74, 'Брендан ', 'Роджерс', 'Тренер', 0, 0, 0, 0, 0, 0, 88);

-- --------------------------------------------------------

--
-- Структура таблицы `playersteams`
--

CREATE TABLE `playersteams` (
  `Id` int NOT NULL,
  `Teams_Id` int NOT NULL,
  `Player_Id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Многие ко многим (Игроки и команды)';

--
-- Дамп данных таблицы `playersteams`
--

INSERT INTO `playersteams` (`Id`, `Teams_Id`, `Player_Id`) VALUES
(1, 4, 1),
(2, 4, 2),
(3, 4, 3),
(4, 4, 4),
(5, 4, 5),
(6, 4, 6),
(8, 6, 7),
(9, 6, 8),
(10, 6, 18),
(11, 6, 19),
(12, 6, 20),
(13, 6, 21),
(14, 1, 22),
(15, 1, 23),
(16, 1, 24),
(17, 1, 25),
(18, 1, 26),
(19, 1, 27),
(20, 2, 28),
(21, 2, 29),
(22, 2, 30),
(23, 2, 31),
(24, 2, 32),
(25, 2, 33),
(26, 3, 34),
(27, 3, 35),
(28, 3, 36),
(29, 3, 37),
(30, 3, 38),
(31, 3, 39),
(32, 5, 40),
(33, 5, 41),
(34, 5, 42),
(35, 5, 43),
(36, 5, 44),
(37, 5, 45),
(38, 7, 46),
(39, 7, 47),
(40, 7, 48),
(41, 7, 49),
(42, 7, 50),
(43, 7, 51),
(44, 8, 52),
(45, 8, 53),
(46, 8, 54),
(47, 8, 55),
(48, 8, 56),
(49, 8, 57),
(50, 9, 58),
(51, 9, 59),
(52, 9, 60),
(53, 9, 61),
(54, 9, 62),
(55, 9, 63),
(56, 10, 69),
(57, 10, 70),
(58, 10, 71),
(59, 10, 72),
(60, 10, 73),
(61, 10, 74);

-- --------------------------------------------------------

--
-- Структура таблицы `teams`
--

CREATE TABLE `teams` (
  `Id` int NOT NULL,
  `Name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Emblem` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу (Герб)',
  `Adress` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `teams`
--

INSERT INTO `teams` (`Id`, `Name`, `Emblem`, `Adress`) VALUES
(1, 'Manchester City', 'Manchester City', 'Англия, Манчестер, Стадион «Этихад»'),
(2, 'Aston Villa', 'Aston Villa ', 'Англия, Бирмиген, Стадион «Вилла Парк»'),
(3, 'West Ham United', 'West Ham United', 'Англия, Стадион «Лондон», Лондон - Стратфорд'),
(4, 'Machester United', 'Machester United', 'Англия, Стадион «Олд Траффорд», Большой Манчестер - Траффорд'),
(5, 'Liverpool', 'Liverpool', 'Англия, Ливерпуль, Стадион «Энфилд» '),
(6, 'Chelsea', 'Chelsea', 'Англия, Лондон, Стадион «Стэмфорд Бридж»'),
(7, 'Arsenal', 'Arsenal', 'Англия, Лондон, Стадион «Эмирейтс»'),
(8, 'Tottenham Hotspur', 'Tottenham Hotspur', 'Англия, Лондон, Стадион «Тоттенхэм Хотспур»'),
(9, 'Southampton', 'Southampton', 'Англия, Саутгемптон, Стадион «Сент-Мэрис» '),
(10, 'Leicester City', 'Leicester City', 'Англия, Лестер, Стадион «Кинг Пауэр» ');

-- --------------------------------------------------------

--
-- Структура таблицы `tournamenttable`
--

CREATE TABLE `tournamenttable` (
  `Id` int NOT NULL,
  `Season` int NOT NULL,
  `Team_Id` int NOT NULL,
  `Games` int NOT NULL,
  `Wins` int NOT NULL,
  `Draws` int NOT NULL,
  `Loses` int NOT NULL,
  `Goals` int NOT NULL COMMENT 'Голы ГЗ',
  `Goals_Conceded` int NOT NULL COMMENT 'Пропущенные голы ГП',
  `Goals_Difference` int NOT NULL COMMENT 'Разница голов ЗП',
  `Scores` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `tournamenttable`
--

INSERT INTO `tournamenttable` (`Id`, `Season`, `Team_Id`, `Games`, `Wins`, `Draws`, `Loses`, `Goals`, `Goals_Conceded`, `Goals_Difference`, `Scores`) VALUES
(1, 2020, 1, 1, 1, 0, 0, 2, 1, 1, 7),
(2, 2021, 1, 1, 0, 1, 0, 0, 0, 0, 5),
(3, 2015, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 2014, 1, 1, 0, 0, 1, 2, 4, 2, 10),
(12, 2020, 2, 1, 0, 1, 0, 2, 2, 1, 20),
(13, 2021, 2, 1, 0, 1, 0, 0, 0, 0, 5),
(14, 2015, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 2014, 2, 1, 1, 0, 0, 2, 4, 2, 10),
(16, 2020, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 2021, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 2015, 3, 1, 0, 0, 1, 2, 3, 1, 10),
(19, 2014, 3, 2, 0, 0, 0, 4, 5, 1, 6),
(20, 2020, 4, 1, 0, 0, 1, 2, 1, 1, 7),
(21, 2021, 4, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 2015, 4, 1, 1, 0, 0, 3, 2, 1, 10),
(23, 2014, 4, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 2020, 5, 2, 0, 2, 0, 5, 5, 0, 15),
(25, 2021, 5, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 2015, 5, 2, 1, 0, 1, 5, 5, 0, 17),
(27, 2014, 5, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 2020, 6, 1, 0, 0, 1, 3, 3, 0, 8),
(29, 2021, 6, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 2015, 6, 2, 2, 0, 0, 5, 2, 3, 20),
(31, 2014, 6, 1, 1, 0, 0, 2, 0, 2, 5),
(32, 2020, 7, 2, 2, 0, 0, 3, 1, 0, 12),
(33, 2021, 7, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 2015, 7, 2, 2, 0, 0, 6, 3, 3, 20),
(35, 2014, 7, 1, 1, 0, 0, 4, 3, 1, 17),
(36, 2020, 8, 1, 0, 0, 1, 1, 2, 1, 6),
(37, 2021, 8, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 2015, 8, 2, 0, 0, 2, 5, 8, 3, 14),
(39, 2014, 8, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 2020, 9, 2, 1, 0, 1, 4, 4, 0, 13),
(41, 2021, 9, 0, 0, 0, 0, 0, 0, 0, 0),
(42, 2015, 9, 1, 0, 0, 1, 2, 4, 2, 8),
(43, 2014, 9, 1, 0, 1, 0, 2, 2, 0, 11),
(44, 2020, 10, 1, 0, 0, 1, 3, 4, 1, 9),
(45, 2021, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(46, 2015, 10, 1, 0, 0, 1, 2, 3, 1, 6),
(47, 2014, 10, 1, 0, 1, 0, 2, 2, 0, 7);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `eventsmatches`
--
ALTER TABLE `eventsmatches`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Event_Id` (`Event_Id`),
  ADD KEY `Match_Id` (`Match_Id`,`Player_Id`),
  ADD KEY `Player_Id` (`Player_Id`);

--
-- Индексы таблицы `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Team1_Id` (`Team1_Id`),
  ADD KEY `Team2_Id` (`Team2_Id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `playersteams`
--
ALTER TABLE `playersteams`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Player_Id` (`Player_Id`),
  ADD KEY `Teams_Id` (`Teams_Id`);

--
-- Индексы таблицы `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `tournamenttable`
--
ALTER TABLE `tournamenttable`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Team_Id` (`Team_Id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `events`
--
ALTER TABLE `events`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `eventsmatches`
--
ALTER TABLE `eventsmatches`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT для таблицы `matches`
--
ALTER TABLE `matches`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `players`
--
ALTER TABLE `players`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT для таблицы `playersteams`
--
ALTER TABLE `playersteams`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT для таблицы `teams`
--
ALTER TABLE `teams`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `tournamenttable`
--
ALTER TABLE `tournamenttable`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `eventsmatches`
--
ALTER TABLE `eventsmatches`
  ADD CONSTRAINT `eventsmatches_ibfk_1` FOREIGN KEY (`Event_Id`) REFERENCES `events` (`Id`),
  ADD CONSTRAINT `eventsmatches_ibfk_2` FOREIGN KEY (`Match_Id`) REFERENCES `matches` (`Id`),
  ADD CONSTRAINT `eventsmatches_ibfk_3` FOREIGN KEY (`Player_Id`) REFERENCES `players` (`Id`);

--
-- Ограничения внешнего ключа таблицы `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `matches_ibfk_1` FOREIGN KEY (`Team1_Id`) REFERENCES `teams` (`Id`),
  ADD CONSTRAINT `matches_ibfk_2` FOREIGN KEY (`Team2_Id`) REFERENCES `teams` (`Id`);

--
-- Ограничения внешнего ключа таблицы `playersteams`
--
ALTER TABLE `playersteams`
  ADD CONSTRAINT `playersteams_ibfk_1` FOREIGN KEY (`Player_Id`) REFERENCES `players` (`Id`),
  ADD CONSTRAINT `playersteams_ibfk_2` FOREIGN KEY (`Teams_Id`) REFERENCES `teams` (`Id`);

--
-- Ограничения внешнего ключа таблицы `tournamenttable`
--
ALTER TABLE `tournamenttable`
  ADD CONSTRAINT `tournamenttable_ibfk_1` FOREIGN KEY (`Team_Id`) REFERENCES `teams` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
