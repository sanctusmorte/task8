-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 01 2019 г., 17:46
-- Версия сервера: 5.6.38
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `nygma_test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `wallet` varchar(255) NOT NULL,
  `id_transaction` varchar(255) NOT NULL,
  `confirmations` varchar(255) NOT NULL,
  `date_added` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `transactions`
--

INSERT INTO `transactions` (`id`, `wallet`, `id_transaction`, `confirmations`, `date_added`) VALUES
(1, '0x39755357759cE0d7f32dC8dC45414CCa409AE24e', '184', '9032938', '1575211532'),
(2, '0x39755357759cE0d7f32dC8dC45414CCa409AE24e', '184', '9032938', '1575211532'),
(3, '0x39755357759cE0d7f32dC8dC45414CCa409AE24e', '185', '9032938', '1575211532'),
(4, '0x39755357759cE0d7f32dC8dC45414CCa409AE24e', '185', '9032938', '1575211532'),
(5, '0x39755357759cE0d7f32dC8dC45414CCa409AE24e', '186', '9032938', '1575211532'),
(6, '0x39755357759cE0d7f32dC8dC45414CCa409AE24e', '186', '9032938', '1575211532'),
(7, '0x39755357759cE0d7f32dC8dC45414CCa409AE24e', '186', '9032938', '1575211532'),
(8, '0x39755357759cE0d7f32dC8dC45414CCa409AE24e', '187', '9032938', '1575211532'),
(9, '0x39755357759cE0d7f32dC8dC45414CCa409AE24e', '187', '9032938', '1575211532'),
(10, '0x39755357759cE0d7f32dC8dC45414CCa409AE24e', '187', '9032938', '1575211532'),
(11, '0x39755357759cE0d7f32dC8dC45414CCa409AE24e', '186', '9032939', '1575211561'),
(12, '0x39755357759cE0d7f32dC8dC45414CCa409AE24e', '186', '9032939', '1575211561');

-- --------------------------------------------------------

--
-- Структура таблицы `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `wallet` varchar(255) NOT NULL,
  `balance` varchar(255) NOT NULL,
  `added_date` varchar(255) DEFAULT NULL,
  `update_balance_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wallets`
--

INSERT INTO `wallets` (`id`, `wallet`, `balance`, `added_date`, `update_balance_date`) VALUES
(7, '0x9fcd788E21417141aF28d0167024F568d6a7D5cF', '1365496171807653', '1574859325', '1575102310'),
(8, '0x5968b664460D17D35650932618EFF7233d7401De', '807822794141773040', '1574859344', '1575102310'),
(9, '0x39755357759cE0d7f32dC8dC45414CCa409AE24e', '0', '1574868669', '1575102310');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
