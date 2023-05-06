-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 06, 2023 at 02:33 AM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u406176785_pg_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(20) NOT NULL,
  `building_name` varchar(2000) NOT NULL,
  `manager_email` varchar(2000) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(255) NOT NULL,
  `tenant_name` varchar(2000) NOT NULL,
  `tenant_email` varchar(2000) NOT NULL,
  `tenant_mobile` varchar(20) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  `expenditure_amount` int(25) NOT NULL DEFAULT 0,
  `income_amount` int(25) NOT NULL DEFAULT 0,
  `balance` int(25) NOT NULL,
  `comments` varchar(2000) DEFAULT NULL,
  `razorpay_payment_id` varchar(2000) NOT NULL,
  `razorpay_order_id` varchar(2000) NOT NULL,
  `razorpay_signature` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `building_name`, `manager_email`, `date`, `type`, `tenant_name`, `tenant_email`, `tenant_mobile`, `month`, `year`, `expenditure_amount`, `income_amount`, `balance`, `comments`, `razorpay_payment_id`, `razorpay_order_id`, `razorpay_signature`) VALUES
(1, 'KB1', 'koduri.bhagath@gmail.com', '2023-01-01', 'grocery', '', '', '', 'January', '2023', 1100, 0, 0, NULL, '', '', ''),
(2, 'KB1', 'koduri.bhagath@gmail.com', '2023-02-01', 'vegetable', '', '', '', 'February', '2023', 2000, 0, 0, NULL, '', '', ''),
(3, 'KB1', 'koduri.bhagath@gmail.com', '2023-03-01', 'milk', '', '', '', 'March', '2023', 2500, 0, 0, NULL, '', '', ''),
(4, 'KB1', 'koduri.bhagath@gmail.com', '2023-04-01', 'grocery', '', '', '', 'April', '2023', 500, 0, 0, NULL, '', '', ''),
(5, 'KB1', 'koduri.bhagath@gmail.com', '2023-05-01', 'vegetable', '', '', '', 'May', '2023', 9000, 0, 0, NULL, '', '', ''),
(6, 'KB1', 'koduri.bhagath@gmail.com', '2023-06-01', 'milk', '', '', '', 'June', '2023', 2500, 0, 0, NULL, '', '', ''),
(7, 'KB1', 'koduri.bhagath@gmail.com', '2023-07-01', 'grocery', '', '', '', 'July', '2023', 4500, 0, 0, NULL, '', '', ''),
(8, 'KB1', 'koduri.bhagath@gmail.com', '2023-08-01', 'vegetable', '', '', '', 'August', '2023', 3300, 0, 0, NULL, '', '', ''),
(9, 'KB1', 'koduri.bhagath@gmail.com', '2023-09-01', 'milk', '', '', '', 'September', '2023', 2200, 0, 0, NULL, '', '', ''),
(10, 'KB1', 'koduri.bhagath@gmail.com', '2023-10-01', 'grocery', '', '', '', 'October', '2023', 2500, 0, 0, NULL, '', '', ''),
(61, 'MNJ1', 'manjuprasad.4327@gmail.com', '2022-11-11', '0', '', '', '1034567890', '11', '2022', 0, 2500, 151500, 'due 3000', '$fjedj^&8jj', 'raz$123', 'Raz_sign%$#@!'),
(62, 'MNJ1', 'manjuprasad.4327@gmail.com', '2022-11-11', '0', '', '', '1034567890', '11', '2022', 0, 2500, 154000, 'due 3000', '$fjedj^&8jj', 'raz$123', 'Raz_sign%$#@!'),
(68, 'MNJ1', 'manjuprasad.4327@gmail.com', '2022-11-11', '0', '', '', '1034567890', '11', '2022', 0, 2500, 181300, 'due 3000', '$fjedj^&8jj', 'raz$123', 'Raz_sign%$#@!'),
(95, 'MNJ1', 'manjuprasad.4327@gmail.com', '2022-11-11', '0', '', '', '1034567890', '11', '2022', 0, 2500, 219500, 'due 3000', '$fjedj^&8jj', 'raz$123', 'Raz_sign%$#@!'),
(96, 'MNJ1', 'manjuprasad.4327@gmail.com', '2022-11-11', '0', '', '', '1034567890', '11', '2022', 0, 2500, 222000, 'due 3000', '$fjedj^&8jj', 'raz$123', 'Raz_sign%$#@!'),
(109, 'KB1', 'koduri.bhagath@gmail.com', '2023-03-01', '1', 'test', 'test@gmail.com', '1034567890', '2', '2022', 999, 1000, 0, '', 'iuhyg', 'raz$123', 'Raz_sign%$#@!'),
(110, 'KB1', 'koduri.bhagath@gmail.com', '2023-03-14', '1', 'test', 'test@gmail.com', '1034567890', '2', '2022', 1000, 1000, 0, '', 'iuhyg', 'raz$123', 'Raz_sign%$#@!'),
(137, 'KB1', 'koduri.bhagath@gmail.com', '2022-01-03', '1', 'test', 'test@gmail.com', '1034567890', '2', '2022', 0, 1000, 0, 'test commen', 'iuhyg', 'raz$123', 'Raz_sign%$#@!'),
(138, 'KB1', 'koduri.bhagath@gmail.com', '2023-01-30', 'Monthly Rent', 'Man', 'Mahan@yahoo.com', '7259594701', '03', '2023', 0, 1, 0, 'test  test ', 'pay_LXb3MmpSTpv1jw', '', ''),
(139, 'KB1', 'koduri.bhagath@gmail.com', '2023-01-30', 'Monthly Rent', 'JAI', 'jai@gmail.com', '7779955959', '01', '2023', 0, 1, 0, 'jan 1st 2', 'pay_LXb63KolpqvXQS', 'test1', 'test2'),
(140, 'KB1', 'koduri.bhagath@gmail.com', '2023-01-30', 'Monthly Rent', 'Man', 'Mahan@yahoo.com', '7259594701', '01', '2023', 0, 1, 0, 'test  test ', 'pay_LXbAGUdP8NhaaJ', 'test1', 'test2'),
(141, 'KB1', 'koduri.bhagath@gmail.com', '2023-01-30', 'Monthly Rent', 'JAI', 'jai@gmail.com', '7779955959', '01', '2023', 0, 1, 0, 'jan 1st 2', 'pay_LXbLZZ2g5PfY5p', 'test1', 'test2'),
(142, 'KB1', 'koduri.bhagath@gmail.com', '2023-01-30', 'Monthly Rent', 'Man', 'Mahan@yahoo.com', '7259594701', '01', '2023', 0, 1, 0, 'test  test ', 'pay_LXbPliYpVYozyb', 'test1', 'test2'),
(144, 'KB1', 'koduri.bhagath@gmail.com', '2023-01-30', 'Monthly Rent', 'JAI', 'jai@gmail.com', '7779955959', '03', '2023', 0, 1, 0, 'jan 1st 201', 'pay_LXbWIW1wFt4Yut', 'test1', 'test2'),
(145, 'KB1', 'koduri.bhagath@gmail.com', '2023-01-30', 'Monthly Rent', 'varun', 'varunsondekere95@gmial.com', '9591005094', '03', '2023', 0, 1, 0, 'new joinee ', 'pay_LXbZm4MhZDecyn', 'test1', 'test2'),
(146, 'KB1', 'koduri.bhagath@gmail.com', '2022-11-09', '1', 'test', 'test@gmail.com', '1034567890', '11', '2022', 0, 1000, 0, 'test commen', 'iuhyg', 'test1', 'test2'),
(147, 'KB1', 'koduri.bhagath@gmail.com', '2023-03-31', 'Monthly Rent', 'kiran kumar', 'kiran@gmail.com', '4545454545', '03', '2023', 0, 1, 0, '           ', 'pay_LXxqsruOhDOZYG', 'test1', 'test2'),
(148, 'KB1', 'koduri.bhagath@gmail.com', '2023-03-31', 'Monthly Rent', 'Man', 'Mahan@yahoo.com', '7259594701', '03', '2023', 0, 1, 0, 'test  test ', 'pay_LXy7AcEJQdsASP', 'test1', 'test2'),
(150, 'KB1', 'koduri.bhagath@gmail.com', '2023-03-31', 'Monthly Rent', 'sagar ac', 'varunreddymysuru@gmail.com', '8317453793', '01', '2023', 0, 1, 0, '           ', 'pay_LY5LMsBmilyrAd', 'test1', 'test2'),
(171, 'KB1', 'koduri.bhagath@gmail.com', '2023-01-30', 'Monthly Rent', 'Man', 'Mahan@yahoo.com', '7259594701', '01', '2023', 0, 1, 0, 'test test ', 'pay_LXbPliYpVYozyb', 'test1', 'test2'),
(172, 'KB1', 'koduri.bhagath@gmail.com', '2023-01-30', 'Monthly Rent', 'Man', 'Mahan@yahoo.com', '7259594701', '01', '2023', 0, 1, 0, 'test test ', 'pay_LXbPliYpVYozyb', 'test1', 'test2'),
(173, 'KB1', 'koduri.bhagath@gmail.com', '2023-01-30', 'Monthly Rent', 'Man', 'Mahan@yahoo.com', '7259594701', '01', '2023', 0, 1, 0, 'test test ', 'pay_LXbPliYpVYozyb', 'test1', 'test2'),
(174, 'KB1', 'koduri.bhagath@gmail.com', '2023-01-30', 'Monthly Rent', 'Man', 'Mahan@yahoo.com', '7259594701', '01', '2023', 0, 1, 0, 'test test ', 'pay_LXbPliYpVYozyb', 'test1', 'test2'),
(185, 'KB1', 'koduri.bhagath@gmail.com', '2023-01-30', 'Monthly Rent', 'Man', 'Mahan@yahoo.com', '7259594701', '01', '2023', 0, 1, 0, 'test test ', 'pay_LXbPliYpVYozyb', 'test1', 'test2'),
(189, '', '', '2023-04-03', 'current', '', '', '', '', '', 5000, 0, 12035, '', '', '', ''),
(190, '', '', '2023-04-03', 'current', '', '', '', '', '', 5000, 0, 7035, '', '', '', ''),
(191, '', '', '2023-03-03', 'current', '', '', '', '', '', 5000, 0, 2035, '', '', '', ''),
(192, '', '', '2023-03-03', 'current', '', '', '', '', '', 5000, 0, -2965, '', '', '', ''),
(193, 'KB1', 'koduri.bhagath@gmail.com', '0000-00-00', 'Monthly Rent', 'virat', 'virat@gmail.com', '8521479631', '02', '2023', 0, 100, 0, '                HHH    ', 'pay_LZIgRjUSRWsxdj', 'test1', 'test2'),
(194, 'KB1', 'koduri.bhagath@gmail.com', '2023-04-04', 'Monthly Rent', 'JAI', 'jai@gmail.com', '7779955959', '07', '2023', 0, 1, 0, 'jan 1st 2013 ', 'pay_LZXwyKQMmwPW7P', 'test1', 'test2'),
(195, 'KB2', 'koduri.bhagath@gmail.com', '2023-04-04', 'Monthly Rent', 'reddydeepak', '88@gmail.com', '7777777777', '04', '2023', 0, 1, 0, '               hi     ', 'pay_LZe1PsUqxItu2S', 'test1', 'test2'),
(196, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-08-08', 'Monthly Rent', 'bhargav', 'par.paavan@gmail.com', '9381404011', '06', '2023', 0, 1, 0, '', 'pay_La6YTcWlztPiFf', 'test1', 'test2'),
(197, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-02-06', 'Monthly Rent', 'bhargav', 'par.paavan@gmail.com', '9381404011', '04', '2023', 0, 1, 0, 'Hi hello', 'pay_La8Vwh9OxZpeZY', 'test1', 'test2'),
(198, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-05', 'Monthly Rent', 'bhargav', 'par.paavan@gmail.com', '9381404011', '06', '2022', 0, 1, 0, 'Hi hello', 'pay_La8Y3g5WYZi2ih', 'test1', 'test2'),
(199, '', '', '2023-04-06', 'Monthly Rent', '', '', '', 'april', '2023', 0, 6500, -28979, 'sjkldkaj', '', '', ''),
(200, '', '', '2023-04-06', 'current', '', '', '', '', '', 7000, 0, -35979, '', '', '', ''),
(201, '', '', '2023-04-06', 'current', '', '', '', '', '', 7000, 0, -42979, '', '', '', ''),
(202, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-06', 'Monthly Rent', 'bhargav', 'par.paavan@gmail.com', '9381404011', '02', '2023', 0, 900, 0, 'undefined', '', 'test1', 'test2'),
(203, '', '', '2023-04-06', 'wifi', '', '', '', '', '', 890, 0, -42969, '', '', '', ''),
(204, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-06', 'Monthly Rent', 'bhargav', 'par.paavan@gmail.com', '9381404011', '04', '2023', 0, 100, 0, 'april month payment', '', 'test1', 'test2'),
(205, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-06', 'Monthly Rent', 'bhargav', 'par.paavan@gmail.com', '9381404011', '04', '2023', 0, 1000, 0, 'undefined', '', 'test1', 'test2'),
(206, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-06', 'Monthly Rent', 'bhargav', 'par.paavan@gmail.com', '9381404011', '04', '2023', 0, 100, 0, 'hi', '', 'test1', 'test2'),
(207, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-06', 'Monthly Rent', 'bhargav', 'par.paavan@gmail.com', '9381404011', '06', '2023', 0, 1, 0, 'undefined', '', 'test1', 'test2'),
(208, 'KB1', 'koduri.bhagath@gmail.com', '2023-04-06', 'Monthly Rent', 'JAI', 'jai@gmail.com', '7779955959', '04', '2023', 0, 1000, 0, 'undefined', '', 'test1', 'test2'),
(209, 'KB1', 'koduri.bhagath@gmail.com', '2023-04-06', 'Monthly Rent', 'JAI', 'jai@gmail.com', '7779955959', '01', '2023', 0, 789, 0, 'undefined', '', 'test1', 'test2'),
(210, 'KB1', 'koduri.bhagath@gmail.com', '2023-04-06', 'Monthly Rent', 'JAI', 'jai@gmail.com', '7779955959', '01', '2023', 0, 1000, 0, 'hi', '', 'test1', 'test2'),
(211, 'KB1', 'koduri.bhagath@gmail.com', '2023-04-06', 'Monthly Rent', 'JAI', 'jai@gmail.com', '7779955959', '04', '2023', 0, 210, 0, 'hi', '', 'test1', 'test2'),
(212, 'KB1', 'koduri.bhagath@gmail.com', '2023-04-06', 'Monthly Rent', 'JAI', 'jai@gmail.com', '7779955959', '05', '2023', 0, 6500, 0, 'hi hello', '', 'test1', 'test2'),
(213, 'KB1', 'koduri.bhagath@gmail.com', '2023-05-06', 'Monthly Rent', 'JAI', 'jai@gmail.com', '7779955959', '05', '2023', 0, 5000, 0, 'hi', '', 'test1', 'test2'),
(214, '', '', '2023-04-06', 'cleaning', '', '', '', '', '', 6000, 0, -33269, '', '', '', ''),
(215, '', '', '2023-04-06', 'cleaning', '', '', '', '', '', 6000, 0, -39269, '', '', '', ''),
(216, '', '', '2023-04-06', 'cleaning', '', '', '', '', '', 10000, 0, -49269, '', '', '', ''),
(217, '', '', '2023-04-06', 'iuyyi', '', '', '', '', '', 889, 0, -50158, '', '', '', ''),
(218, '', '', '2023-04-06', 'o', '', '', '', '', '', 9, 0, -50167, '', '', '', ''),
(219, '', '', '2023-04-06', 'o', '', '', '', '', '', 9, 0, -50176, '', '', '', ''),
(220, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-06', 'test', '', '', '', '', '', 3239, 0, 0, '', '', '', ''),
(221, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-06', 'wifi', '', '', '', '', '', 14500, 0, 0, '', '', '', ''),
(222, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-06', 'power bill', '', '', '', '', '', 83934, 0, 0, '', '', '', ''),
(223, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-02-08', 'something', '', '', '', '', '', 13400, 0, 0, '', '', '', ''),
(224, 'KB1', 'koduri.bhagath@gmail.com', '2023-06-06', 'cleaning', '', '', '', '', '', 10000, 0, 0, '', '', '', ''),
(225, 'KB1', 'koduri.bhagath@gmail.com', '2023-06-06', 'cleaning', '', '', '', '', '', 2000, 0, 0, '', '', '', ''),
(226, 'KB1', 'koduri.bhagath@gmail.com', '2023-01-06', 'cleaning', '', '', '', '', '', 5000, 0, 0, '', '', '', ''),
(227, 'KB1', 'koduri.bhagath@gmail.com', '2023-01-06', 'cleaning', '', '', '', '', '', 900, 0, 0, '', '', '', ''),
(228, 'KB1', 'koduri.bhagath@gmail.com', '2023-05-06', 'Monthly Rent', 'JAI', 'jai@gmail.com', '7779955959', '05', '2023', 0, 1000, 0, 'undefined', '', 'test1', 'test2'),
(229, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-07', 'Monthly Rent', '', 'par.paavan@gmail.com', '9381404011', '06', '2023', 0, 1, 0, '', 'pay_LaoWSmbQpfcdyp', 'test1', 'test2'),
(230, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-07', 'Monthly Rent', 'bhargav', 'par.paavan@gmail.com', '9381404011', '05', '2023', 0, 1, 0, 'May month pg', 'pay_Lavlh0BUXCaRYC', 'test1', 'test2'),
(231, 'ANB1', 'tanandbabu@yahoo.co.in', '0000-00-00', 'TAP REPAIR', '', '', '', '', '', 1400, 0, 0, '', '', '', ''),
(232, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-11', 'Monthly Rent', 'bhargav', 'par.paavan@gmail.com', '9381404011', '04', '2023', 0, 1, 0, 'New rent', 'pay_LcNU4BOkJ65bvY', 'test1', 'test2'),
(233, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-11', 'Monthly Rent', 'bhargav', 'par.paavan@gmail.com', '9381404011', '02', '2023', 0, 1, 0, 'hi', 'pay_LcSPArZ3gm5Bhm', 'test1', 'test2'),
(234, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-11', 'Monthly Rent', 'bhargav', 'par.paavan@gmail.com', '9381404011', '05', '2023', 0, 1, 0, 'No message', 'pay_LcTJzjbGbfjX2y', 'test1', 'test2'),
(235, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-11', 'Monthly Rent', 'steve smith', '5577@gmail.com', '5555555577', '04', '2023', 0, 1, 0, '                 hi hello   ', 'pay_LcUVNlH0sqXaTP', 'test1', 'test2'),
(236, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-11', 'Monthly Rent', 'steve smith', '5577@gmail.com', '5555555577', '08', '2023', 0, 100, 0, 'undefined', '', 'test1', 'test2'),
(237, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-11', 'Monthly Rent', 'steve smith', '5577@gmail.com', '5555555577', '04', '2023', 0, 7000, 0, 'undefined', '', 'test1', 'test2'),
(238, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-11', 'cleaning', '', '', '', '', '', 10000, 0, 0, '', '', '', ''),
(239, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-02-11', 'cleaning', '', '', '', '', '', 400, 0, 0, '', '', '', ''),
(240, 'KB1', 'koduri.bhagath@gmail.com', '2023-04-12', 'Monthly Rent', 'sagar ac', 'varunreddymysuru@gmail.com', '8317453793', '05', '2023', 0, 1, 0, '             hi hello       ', 'pay_LcgaqNHBVKkDZB', 'test1', 'test2'),
(241, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-13', 'Monthly Rent', 'bhargav', 'par.paavan@gmail.com', '9381404011', '04', '2023', 0, 1, 0, 'New tenant', 'pay_Ld9ykwn27YaTa5', 'test1', 'test2'),
(242, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-14', 'Monthly Rent', 'bhargav', 'par.paavan@gmail.com', '9381404011', '06', '2023', 0, 1, 0, 'No message', 'pay_LdXXi2WveEpY1j', 'test1', 'test2'),
(243, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-15', 'Monthly Rent', 'date test', '45@gmail.com', '4567456745', '05', '2023', 0, 1, 0, '                    ', 'pay_LdxR3ZAQfPWmPu', 'test1', 'test2'),
(244, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-15', 'current', '', '', '', '', '', 1000, 0, 0, '', '', '', ''),
(245, 'KB1', 'koduri.bhagath@gmail.com', '2023-04-15', 'Light', '', '', '', '', '', 200, 0, 0, '', '', '', ''),
(246, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-04-17', 'Monthly Rent', 'bhargav', 'par.paavan@gmail.com', '9381404011', '02', '2023', 0, 1, 0, 'hii', 'pay_LemubNE0JBNrmd', 'test1', 'test2'),
(247, 'ANB1', 'tanandbabu@yahoo.co.in', '2023-05-01', 'Monthly Rent', 'johnson', 'pari.paavan@gmail.com', '0821082108', '05', '2023', 0, 1, 0, '                no comments    ', 'pay_LkIZn0K4wNxbnP', 'test1', 'test2'),
(248, 'KB1', 'koduri.bhagath@gmail.com', '2023-05-01', 'Monthly Rent', 'testing', 'test@gmail.com', '9858438488', '05', '2023', 0, 1, 0, '                    ', 'pay_LkJNdJ4KSMoYwW', 'test1', 'test2'),
(249, 'KB1', 'koduri.bhagath@gmail.com', '2023-05-01', 'Monthly Rent', 'johnson', 'john@gmail.com', '0821082100', '05', '2023', 0, 1, 0, '                   add ', 'pay_LkJRzRgqTBGnWw', 'test1', 'test2'),
(250, 'KB1', 'koduri.bhagath@gmail.com', '2023-05-01', 'Monthly Rent', 'testing', 'test@gmail.com', '9858438488', '05', '2023', 0, 1, 0, '                    ', 'pay_LkJdATzav2mMpJ', 'test1', 'test2'),
(251, 'KB1', 'koduri.bhagath@gmail.com', '2023-05-01', 'Monthly Rent', 'testing', 'test@gmail.com', '9858438488', '05', '2023', 0, 1, 0, '                    ', 'pay_LkJhhSrpZ15zLZ', 'test1', 'test2'),
(252, 'KB1', 'koduri.bhagath@gmail.com', '2023-05-01', 'Monthly Rent', 'testing', 'test@gmail.com', '9858438488', '05', '2023', 0, 1, 0, '                    ', 'pay_LkJmYYZD9sfrLy', 'test1', 'test2'),
(253, 'KB1', 'koduri.bhagath@gmail.com', '2023-05-01', 'Monthly Rent', 'testing', 'test@gmail.com', '9858438488', '05', '2023', 0, 1, 0, '                    ', 'pay_LkKuxfEdYd7MY8', 'test1', 'test2'),
(254, 'KB1', 'koduri.bhagath@gmail.com', '2023-05-01', 'Monthly Rent', 'testing', 'test@gmail.com', '9858438488', '05', '2023', 0, 1, 0, '                    ', 'pay_LkLfLedvqMzjFd', 'test1', 'test2'),
(255, 'KB1', 'koduri.bhagath@gmail.com', '2023-05-01', 'Monthly Rent', 'Mahan', 'Mahan@yahoo.com', '7789009876', '04', '2023', 0, 1, 0, 'test  test     teat', 'pay_LkLkAKUe1YKnCV', 'test1', 'test2'),
(256, 'KB1', 'koduri.bhagath@gmail.com', '2023-05-01', 'Monthly Rent', 'Mahan', 'Mahan@yahoo.com', '7789009876', '02', '2023', 0, 1, 0, 'test  test     teat', 'pay_LkM3uLztQa1OVE', 'test1', 'test2'),
(257, 'KB1', 'koduri.bhagath@gmail.com', '2023-05-01', 'Monthly Rent', 'sagar ac', 'varunreddymysuru@gmail.com', '8317453793', '03', '2023', 0, 1, 0, '             hi hello       ', 'pay_LkM82KudVaIBhs', 'test1', 'test2'),
(258, 'KB1', 'koduri.bhagath@gmail.com', '2023-05-02', 'Monthly Rent', 'Mahan', 'Mahan@yahoo.com', '7789009876', '06', '2023', 0, 1, 0, 'test  test     teat', 'pay_LkpXRJEmc7VELD', 'test1', 'test2'),
(259, 'KB1', 'koduri.bhagath@gmail.com', '2023-05-05', 'Monthly Rent', 'Mahan', 'Mahan@yahoo.com', '7789009876', '08', '2022', 0, 1, 0, 'test  test     teat', 'pay_Lly2f2yLWU9obJ', 'test1', 'test2'),
(260, 'KB1', 'koduri.bhagath@gmail.com', '2023-05-05', 'Monthly Rent', 'Mahan', 'Mahan@yahoo.com', '7789009876', '04', '2022', 0, 1, 0, 'test  test     teat', 'pay_LlzUYQ62vZJAKr', 'test1', 'test2');

-- --------------------------------------------------------

--
-- Table structure for table `adding-bed-details`
--

CREATE TABLE `adding-bed-details` (
  `id` int(20) NOT NULL,
  `floor_no` varchar(255) NOT NULL,
  `room_no` varchar(255) NOT NULL,
  `no_of_persons_sharing_per_room` varchar(255) NOT NULL,
  `bed_no` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adding-bed-details`
--

INSERT INTO `adding-bed-details` (`id`, `floor_no`, `room_no`, `no_of_persons_sharing_per_room`, `bed_no`, `amount`, `status`) VALUES
(1, '4', '2', '5', '3', '3500', 'Avialable'),
(2, '1', '4', '2', '1', '5500', 'Avialable'),
(3, '2', '3', '4', '2', '4500', 'Avialable'),
(4, '3', '3', '5', '5', '5500', 'Avialable'),
(5, '5', '3', '2', '3', '6500', 'Avialable');

-- --------------------------------------------------------

--
-- Table structure for table `adding-bed-details1`
--

CREATE TABLE `adding-bed-details1` (
  `id` int(11) NOT NULL,
  `building_name` varchar(200) NOT NULL,
  `manager_email` varchar(255) NOT NULL,
  `manager_mobile` varchar(255) NOT NULL,
  `tenant_name` varchar(200) NOT NULL,
  `tenant_email` varchar(255) NOT NULL,
  `tenant_mobile` varchar(255) NOT NULL,
  `joining_date` date NOT NULL,
  `floor_no` varchar(255) NOT NULL,
  `room_no` varchar(255) NOT NULL,
  `bed_no` varchar(255) NOT NULL,
  `no_of_persons_sharing_per_room` varchar(255) DEFAULT NULL,
  `amount` varchar(255) NOT NULL,
  `paid_amount` int(11) DEFAULT NULL,
  `due` int(11) DEFAULT NULL,
  `Available` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adding-bed-details1`
--

INSERT INTO `adding-bed-details1` (`id`, `building_name`, `manager_email`, `manager_mobile`, `tenant_name`, `tenant_email`, `tenant_mobile`, `joining_date`, `floor_no`, `room_no`, `bed_no`, `no_of_persons_sharing_per_room`, `amount`, `paid_amount`, `due`, `Available`) VALUES
(182, 'KB1', 'koduri.bhagath@gmail.com', '8834567891', 'jhkk', 'tesjht@gmail.com', '5059955950', '2023-05-05', '1', '2', '1', '3', '5500', 1, 6499, 'no'),
(193, 'KB1', 'koduri.bhagath@gmail.com', '8834567891', 'Yuva', 'yuva@gmail.com', '7779955959', '2023-04-12', '1', '1', '1', '4', '9876', 1, 6499, 'no'),
(194, 'KB1', 'koduri.bhagath@gmail.com', '8834567891', 'HJHa', 'HHJ@gmail.com', '7779955950', '2023-04-12', '2', '1', '1', '3', '6500', 1, 6499, 'no'),
(222, 'ANB1', 'tanandbabu@yahoo.co.in', '8106517443', '', '', '', '2023-04-11', '1', '101', '2', '2', '7000', 0, 0, 'Yes'),
(224, 'KB2', 'koduri.bhagath@gmail.com', '8834567891', 'reddydeepak', '88@gmail.com', '7777777777', '2023-04-04', '1', '101', '1', '2', '7000', 1, 0, 'no'),
(247, 'ANB1', 'tanandbabu@yahoo.co.in', '8106517443', '', '', '', '2023-04-11', '1', '101', '2', '2', '7000', 0, 0, 'Yes'),
(248, 'KB2', 'koduri.bhagath@gmail.com', '8834567891', 'reddydeepak', '88@gmail.com', '7777777777', '2023-04-04', '1', '101', '1', '2', '7000', 1, 0, 'no'),
(264, 'KB1', 'koduri.bhagath@gmail.com', '8834567891', 'testt', 'testttt@gmail.com', '6679955950', '2023-05-02', '1', '1', '3', '4', '1234', 1, 6499, 'no'),
(265, 'KB1', 'koduri.bhagath@gmail.com', '8834567891', '', '', '', '0000-00-00', '1', '2', '3', '3', '5500', 0, 0, 'Yes'),
(267, 'KB1', 'koduri.bhagath@gmail.com', '8834567891', '', '', '', '0000-00-00', '1', '1', '2', '4', '4567', 0, 0, 'Yes'),
(268, 'KB1', 'koduri.bhagath@gmail.com', '8834567891', '', '', '', '0000-00-00', '2', '1', '2', '3', '5500', 0, 0, 'Yes'),
(269, 'KB1', 'koduri.bhagath@gmail.com', '8834567891', '', '', '', '0000-00-00', '3', '1', '1', '1', '2222', 0, 0, 'Yes'),
(270, 'KB1', 'koduri.bhagath@gmail.com', '8834567891', '', '', '', '0000-00-00', '2', '2', '1', '2', '6500', 0, 0, 'Yes'),
(271, 'KB1', 'koduri.bhagath@gmail.com', '8834567891', 'jhkk', 'tesjht@gmail.com', '5059955950', '2023-05-05', '1', '2', '1', '3', '5500', 1, 6499, 'no'),
(272, 'KB1', 'koduri.bhagath@gmail.com', '8834567891', '', '', '', '0000-00-00', '1', '2', '2', '3', '5500', 0, 0, 'Yes'),
(273, 'KB1', 'koduri.bhagath@gmail.com', '8834567891', '', '', '', '0000-00-00', '2', '1', '3', '3', '5500', 0, 0, 'Yes'),
(274, 'KB1', 'koduri.bhagath@gmail.com', '8834567891', 'jhkkhijh', 'tesjhtvgjhgh@gmail.com', '5059955989', '2023-05-05', '2', '2', '2', '2', '6500', 1, 6499, 'no'),
(275, 'KB1', 'koduri.bhagath@gmail.com', '8834567891', '', '', '', '0000-00-00', '3', '1', '2', '2', '6500', 0, 0, 'Yes'),
(276, 'KB1', 'koduri.bhagath@gmail.com', '8834567891', '', '', '', '0000-00-00', '3', '1', '3', '1', '3333', 0, 0, 'Yes'),
(277, 'KB1', 'koduri.bhagath@gmail.com', '8834567891', 't', 'testtt@gmail.com', '5559955950', '2023-05-02', '1', '1', '4', '4', '2345', 1, 6499, 'no'),
(278, 'ANB1', 'tanandbabu@yahoo.co.in', '8106517443', 'bhargav', 'par.paavan@gmail.com', '9381404011', '2023-04-04', '1', '1', '1', '4', '9876', 1, 9875, 'No'),
(279, 'ANB1', 'tanandbabu@yahoo.co.in', '8106517443', '', '', '', '0000-00-00', '1', '1', '2', '4', '4567', 0, 0, 'Yes'),
(280, 'KB1', 'koduri.bhagath@gmail.com', '8834567891', 'testt', 'testttt@gmail.com', '6679955950', '2023-05-02', '1', '1', '3', '4', '1234', 1, 6499, 'no'),
(281, 'ANB1', 'tanandbabu@yahoo.co.in', '8106517443', '', '', '', '0000-00-00', '1', '2', '3', '3', '5500', 0, 0, 'Yes'),
(282, 'ANB1', 'tanandbabu@yahoo.co.in', '8106517443', '', '', '', '0000-00-00', '1', '2', '2', '3', '5500', 0, 0, 'Yes'),
(283, 'ANB1', 'tanandbabu@yahoo.co.in', '8106517443', '', '', '', '0000-00-00', '2', '1', '1', '3', '6500', 0, 0, 'Yes'),
(284, 'KB1', 'koduri.bhagath@gmail.com', '8834567891', 't', 'testtt@gmail.com', '5559955950', '2023-05-02', '1', '1', '4', '4', '2345', 1, 6499, 'no'),
(285, 'ANB1', 'tanandbabu@yahoo.co.in', '8106517443', '', '', '', '0000-00-00', '2', '1', '2', '3', '5500', 0, 0, 'Yes'),
(286, 'ANB1', 'tanandbabu@yahoo.co.in', '8106517443', '', '', '', '0000-00-00', '2', '1', '3', '3', '5500', 0, 0, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `company_name` varchar(500) NOT NULL,
  `address` varchar(2000) NOT NULL,
  `date` varchar(20) NOT NULL,
  `company_logo` varchar(1000) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `name`, `email`, `phone`, `password`, `company_name`, `address`, `date`, `company_logo`, `image`) VALUES
(1, 'admin', 'admin@gmail.com', '9999999999', '123456', 'ABC', 'admin', '0000-00-00', 'images/0f7d898ce5019947a1c566678bf8f5afavatar.png17-09-2022', 'img/avatar.png'),
(2, 'abcd', 'soumyacn16@gmail.com', '1234567890', '123456', 'XYZ', 'Bangalore', '0000-00-00', 'images/0f7d898ce5019947a1c566678bf8f5afavatar.png17-09-2022', 'images/0f7d898ce5019947a1c566678bf8f5afavatar.png17-09-2022'),
(3, 'Bhanu', 'Bhanu@yahoo.com', '9393929495', '123', 'SR constructions', 'Bangalore', '0000-00-00', 'images/empq11.jpg20-11-2022', 'images/MICROSCOPE.jpg20-11-2022'),
(4, 'Ambuja', 'amritha21@yahoo.com', '8310317564', '12345', 'Chirag Card Containers', 'Bangalore', '0000-00-00', 'images/WhatsApp Image 2022-10-11 at 9.57.23 AM.jpeg22-11-2022', 'images/10000000_781978516169685_8131637035221956669_n.mp422-11-2022'),
(5, 'Sravan', 'sravan@gmail.com', '9584484234', '123', 'sravan tech', 'hyderbad', '0000-00-00', NULL, NULL),
(6, 'amritha', 'admin@gmail.com', '9876543211', 'admin@123', 'infotec', 'bangalor', '0000-00-00', NULL, NULL),
(7, 'amith', 'admin@gmail.com', '4543543543', 'admin@123', 'amith', 'karnataka', '0000-00-00', NULL, NULL),
(8, 'chirag', 'chiragcard@yahoo.com', '8310317564', '123456789', 'chiargcard', 'Bangalore', '0000-00-00', NULL, NULL),
(9, 'bhagath', 'irctcssy@gmail.com', '9393939393', '123', 'xyz', 'abc', '0000-00-00', NULL, NULL),
(10, 'manu', 'a@gmail.com', '9494944949', '123', 'silicon', 'hyd', '0000-00-00', NULL, NULL),
(11, 'kamalesh', 'u@gmail.com', '8894944949', '123', 'Wilicon', 'hyd', '2022-11-22', NULL, NULL),
(12, 'Abc company ', 'amritha21@yahoo.com', '9019312392', '123456', 'Abc company pvt ltd.,', 'Bangalore', '01-12-2022', 'admin/images/WhatsApp Image 2022-12-01 at 13.37.50.jpeg01-12-2022', NULL),
(13, 'Parth Dattani', 'dattani@easyfunds.in', '7795017910', '123456', 'Easy Funds', 'Jayanagar, Bangalore ', '02-12-2022', NULL, NULL),
(14, 'T S Vasudev', 'vasudevts@gmail.com', '9845041842', '123456', 'T Vasudeva Setty & Sons', '	Avenue Road, Bengaluru', '02-12-2022', NULL, NULL),
(15, '	Smitha', 'accounts@amwinsystems.in', '9844381073', '123456', 'Amwin Systems pvt ltd', 'Bangalore', '02-12-2022', NULL, NULL),
(16, '	Ajish', 'ajish.s@gmail.com', '9845998651', 'admin@123', '	Thankachy rentals', 'Coimbatore', '02-12-2022', NULL, NULL),
(17, '	Leela H R ', 'leelapradeep38@gmail.com', '9980126400', 'admin@123', 'Saptha Innovations Pvt Ltd.,', 'Laggere Bangalore', '02-12-2022', NULL, NULL),
(18, 'Bhagath', 'koduri.bhagath@gmail.com', '8106517443', '123', 'iiiqbets', 'hyderbad', '05-12-2022', NULL, NULL),
(19, 'T Anand Babu', 'tanandbabu@yahoo.com', '7706517443', 'Anand@123', 'iiiqbets', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `api_images`
--

CREATE TABLE `api_images` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buildings_under_pg_manager`
--

CREATE TABLE `buildings_under_pg_manager` (
  `id` int(20) NOT NULL,
  `manager_email` varchar(30) NOT NULL,
  `manager_mobile` varchar(20) NOT NULL,
  `building_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buildings_under_pg_manager`
--

INSERT INTO `buildings_under_pg_manager` (`id`, `manager_email`, `manager_mobile`, `building_name`) VALUES
(1, 'koduri.bhagath@gmail.com', '8834567890', 'KB1'),
(2, 'manjuprasad.4327@gmail.com', '8834567891', 'MNJ1'),
(3, 'koduri.bhagath@gmail.com', '8834567890', 'KB2'),
(4, 'koduri.bhagath@gmail.com', '8834567890', 'KB3'),
(5, 'koduri.bhagath@gmail.com', '8834567890', 'KB4'),
(6, 'manjuprasad.4327@gmail.com', '8834567891', 'MNJ2'),
(7, 'tanandbabu@yahoo.co.in', '8106517443', 'ANB1');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(10) NOT NULL,
  `building_name` varchar(20) NOT NULL,
  `manager_email` varchar(200) NOT NULL,
  `manager_mobile` varchar(20) NOT NULL,
  `tenant_name` varchar(200) NOT NULL,
  `tenant_email` varchar(200) NOT NULL,
  `tenant_mobile` varchar(20) NOT NULL,
  `floor_no` varchar(2) NOT NULL,
  `room_no` varchar(2) NOT NULL,
  `bed_no` varchar(2) NOT NULL,
  `complaint_type` varchar(200) NOT NULL,
  `complaint_description` varchar(2000) NOT NULL,
  `response` varchar(2000) NOT NULL,
  `created_date` date NOT NULL,
  `resolve_date` date NOT NULL,
  `status` varchar(200) NOT NULL,
  `comments` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `building_name`, `manager_email`, `manager_mobile`, `tenant_name`, `tenant_email`, `tenant_mobile`, `floor_no`, `room_no`, `bed_no`, `complaint_type`, `complaint_description`, `response`, `created_date`, `resolve_date`, `status`, `comments`) VALUES
(92, 'KB1', 'koduri.bhagath@gmail.com', '', 'JAI', 'jai@gmail.com', '7779955959', '1', '1', '2', 'wifi issue', 'internet', 'Not Yet responded', '2023-04-08', '2023-04-10', 'Pending', ''),
(94, 'ANB1', 'tanandbabu@yahoo.co.in', '', 'bhargav', 'par.paavan@gmail.com', '9381404011', '1', '2', '1', 'Update', 'Test update ', 'Not Yet responded', '2023-10-04', '1970-01-01', '', ''),
(95, 'ANB1', 'tanandbabu@yahoo.co.in', '', 'bhargav', 'par.paavan@gmail.com', '9381404011', '1', '2', '1', 'Update test', 'xyz description', 'Not Yet responded', '2023-10-04', '1970-01-01', 'Pending', ''),
(96, 'ANB1', 'tanandbabu@yahoo.co.in', '', 'bhargav', 'par.paavan@gmail.com', '9381404011', '1', '2', '1', 'New complaint', 'New complaint', 'Not Yet responded', '2023-04-11', '1970-01-01', '', ''),
(98, 'ANB1', 'tanandbabu@yahoo.co.in', '', 'bhargav', 'par.paavan@gmail.com', '9381404011', '1', '2', '1', 'Testing', 'Testing', 'Not Yet responded', '2023-04-11', '1970-01-01', '', ''),
(99, 'ANB1', 'tanandbabu@yahoo.co.in', '', 'bhargav', 'par.paavan@gmail.com', '9381404011', '1', '2', '1', 'AAAA', 'AAAA', 'Not Yet responded', '2023-04-11', '1970-01-01', '', ''),
(100, 'KB1', 'koduri.bhagath@gmail.com', '', 'JAI', 'jai@gmail.com', '7779955959', '1', '1', '2', 'Power issue', 'From afternoon power isn\'t avialble.', 'Not Yet responded', '2023-04-08', '2023-04-11', 'Solved', ''),
(101, 'ANB1', 'tanandbabu@yahoo.co.in', '', 'bhargav', 'par.paavan@gmail.com', '9381404011', '1', '2', '1', 'water shortage', 'water leakage', 'Not Yet responded', '2023-07-04', '1970-01-01', '', ''),
(102, 'ANB1', 'tanandbabu@yahoo.co.in', '', 'bhargav', 'par.paavan@gmail.com', '9381404011', '1', '2', '1', 'Yest', 'Test', 'Not Yet responded', '2023-04-11', '1970-01-01', '', ''),
(103, 'ANB1', 'tanandbabu@yahoo.co.in', '', 'bhargav', 'par.paavan@gmail.com', '9381404011', '1', '2', '1', 'Yest', 'Test', 'Not Yet responded', '2023-04-11', '1970-01-01', '', ''),
(104, 'ANB1', 'tanandbabu@yahoo.co.in', '', 'bhargav', 'par.paavan@gmail.com', '9381404011', '1', '2', '1', 'j', 'iioi', 'Not Yet responded', '2023-04-11', '1970-01-01', 'Pending', ''),
(107, 'ANB1', 'tanandbabu@yahoo.co.in', '', 'bhargav', 'par.paavan@gmail.com', '9381404011', '1', '2', '1', 'waterasdf', 'sdfs', 'Not Yet responded', '2023-04-11', '1970-01-01', '', ''),
(108, 'ANB1', 'tanandbabu@yahoo.co.in', '', 'bhargav', 'par.paavan@gmail.com', '9381404011', '1', '2', '1', 'water shortage', 'water leakage', 'Not Yet responded', '2023-07-04', '1970-01-01', '', ''),
(109, 'ANB1', 'tanandbabu@yahoo.co.in', '', 'bhargav', 'par.paavan@gmail.com', '9381404011', '1', '2', '1', 'water shortage', 'water leakage', 'Not Yet responded', '2023-07-04', '1970-01-01', '', ''),
(110, 'ANB1', 'tanandbabu@yahoo.co.in', '', 'bhargav', 'par.paavan@gmail.com', '9381404011', '1', '2', '1', 'hotwater shortage', 'hotwater leakage', 'Not Yet responded', '2023-07-04', '1970-01-01', '', ''),
(111, 'KB1', 'koduri.bhagath@gmail.com', '', 'deepak', 'ssy.balu@gmail.com', '92349023849', '5', '1', '2', 'AC Problem', 'Ac is not working ', 'hi', '2022-01-22', '2023-04-10', 'Pending', 'please solve as sonn as possible'),
(113, 'ANB1', 'tanandbabu@yahoo.co.in', '', 'bhargav', 'par.paavan@gmail.com', '9381404011', '1', '2', '1', 'hotwater shortage', 'hotwater leakage', 'Not Yet responded', '2023-07-04', '1970-01-01', 'Pending', ''),
(114, 'ANB1', 'tanandbabu@yahoo.co.in', '', 'bhargav', 'par.paavan@gmail.com', '9381404011', '1', '2', '1', 'coldwater shortage', 'coldwater leakage', 'Not Yet responded', '2023-07-04', '1970-01-01', 'Pending', ''),
(115, 'ANB1', 'tanandbabu@yahoo.co.in', '', 'bhargav', 'par.paavan@gmail.com', '9381404011', '1', '2', '1', 'water', 'water is not comming', 'Not Yet responded', '2023-04-11', '1970-01-01', 'Pending', ''),
(121, 'ANB1', 'tanandbabu@yahoo.co.in', '', 'bhargav', 'par.paavan@gmail.com', '9381404011', '1', '2', '1', 'date test ', 'dat etest', 'Not Yet responded', '2023-04-11', '1970-01-01', 'Pending', ''),
(122, 'ANB1', 'tanandbabu@yahoo.co.in', '', 'bhargav', 'par.paavan@gmail.com', '9381404011', '1', '2', '1', 'jhkjhkj', 'hihih', 'no response', '2023-04-11', '2020-07-01', 'Pending', ''),
(123, 'ANB1', 'tanandbabu@yahoo.co.in', '', 'bhargav', 'par.paavan@gmail.com', '9381404011', '1', '2', '1', 'Retest test', 'Test retest', 'solve it asap', '2023-04-11', '2023-04-15', 'Pending', ''),
(125, 'KB1', 'koduri.bhagath@gmail.com', '', 'JAI', 'jai@gmail.com', '7779955959', '1', '1', '2', 'jghjhgj', 'hjgjhgjh', 'Not Yet responded', '2023-04-12', '1970-01-01', 'Pending', ''),
(126, 'ANB1', 'tanandbabu@yahoo.co.in', '', 'bhargav', 'par.paavan@gmail.com', '9381404011', '1', '2', '1', 'water', 'not comming four days', 'Not Yet responded', '2023-04-12', '1970-01-01', 'Pending', ''),
(127, 'ANB1', 'tanandbabu@yahoo.co.in', '', 'bhargav', 'par.paavan@gmail.com', '9381404011', '1', '1', '1', 'News type', 'News description view', 'responding', '2023-04-14', '2023-04-14', 'Pending', '');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(200) NOT NULL,
  `host` varchar(2000) NOT NULL,
  `username` varchar(2000) NOT NULL,
  `password` varchar(2000) NOT NULL,
  `database1` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `host`, `username`, `password`, `database1`) VALUES
(0, 'localhost', 'u406176785_pg_mng_user', 'Pt;VYa&ez2:', 'u406176785_pg_management');

-- --------------------------------------------------------

--
-- Table structure for table `configure_PG`
--

CREATE TABLE `configure_PG` (
  `id` int(20) NOT NULL,
  `PG_Name` varchar(200) NOT NULL,
  `manager_mobile` varchar(20) NOT NULL,
  `manager_email` varchar(50) NOT NULL,
  `floor` varchar(200) NOT NULL,
  `room` varchar(8) NOT NULL,
  `bed` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configure_PG`
--

INSERT INTO `configure_PG` (`id`, `PG_Name`, `manager_mobile`, `manager_email`, `floor`, `room`, `bed`) VALUES
(1, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gma', '8', '4', '5'),
(2, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gma', '8', '4', '5'),
(3, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gma', '8', '4', '5'),
(4, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gma', '8', '4', '5'),
(6, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '8', '4', '5'),
(7, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '8', '4', '5'),
(8, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '8', '4', '5'),
(9, 'manju pg', '8834567891', 'manjuprasad.4327@gmail.com', '3', '3', '3'),
(10, 'manju pg', '8834567891', 'manjuprasad.4327@gmail.com', 'default', 'default', 'default'),
(11, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '8', '4', '5'),
(12, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '8', '4', '5'),
(13, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '8', '4', '5'),
(14, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '2', '2', '2'),
(15, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '2', '2', '2'),
(16, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '2', '2', '2'),
(17, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '2', '2', '2'),
(18, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '2', '2', '2'),
(19, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '2', '2', '2'),
(20, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '2', '2', '2'),
(21, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '2', '2', '2'),
(22, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '1', '1', '1'),
(23, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '2', '2', '2'),
(24, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '2', '2', '1'),
(25, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '2', '1', '2'),
(26, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '1', '2', '2'),
(27, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '2', '1', '1'),
(28, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '1', '2', '1'),
(29, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '1', '1', '2'),
(30, 'manju pg', '8834567891', 'manjuprasad.4327@gmail.com', 'default', 'default', 'default'),
(31, 'manju pg', '8834567891', 'manjuprasad.4327@gmail.com', 'default', 'default', 'default'),
(32, 'manju pg', '8834567891', 'manjuprasad.4327@gmail.com', 'G', '2', '2'),
(33, 'manju pg', '8834567891', 'manjuprasad.4327@gmail.com', '10', '5', '3'),
(34, 'manju pg', '8834567891', 'manjuprasad.4327@gmail.com', 'default', 'default', 'default'),
(35, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '2', '2', '2'),
(36, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '2', '1', '2'),
(37, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '2', '2', '1'),
(38, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '1', '1', '1'),
(39, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '1', '1', '2'),
(40, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '2', '1', '1'),
(41, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '1', '2', '2'),
(42, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '1', '2', '1'),
(43, 'manju pg', '8834567891', 'manjuprasad.4327@gmail.com', 'default', 'default', 'default'),
(44, 'manju pg', '8834567891', 'manjuprasad.4327@gmail.com', 'G', '2', '2'),
(45, 'manju pg', '8834567891', 'manjuprasad.4327@gmail.com', '20', '6', '4'),
(46, 'manju pg', '8834567891', 'manjuprasad.4327@gmail.com', '10', '5', '2'),
(47, 'manju pg', '8834567891', 'manjuprasad.4327@gmail.com', 'default', 'default', 'default'),
(48, 'manju pg', '8834567891', 'manjuprasad.4327@gmail.com', 'default', 'default', 'default'),
(49, 'manju pg', '8834567891', 'manjuprasad.4327@gmail.com', 'default', 'default', 'default'),
(50, 'manju pg', '8834567891', 'manjuprasad.4327@gmail.com', '6', '5', '2'),
(51, 'manju pg', '8834567891', 'manjuprasad.4327@gmail.com', '7', '5', '2'),
(52, 'manju pg', '8834567891', 'manjuprasad.4327@gmail.com', 'G', '4', '2'),
(53, ' <br /><b>Notice</b>:  Undefined variable: PG_Name in <b>/home/u406176785/domains/iqbetspro.com/public_html/pg_manager_new/configure.php</b> on line <b>112</b><br />', '8834567890', 'koduri.bhagath@gmail.com', '2', '16', '2'),
(54, 'my full name', '8834567890', 'koduri.bhagath@gmail.com', '2', '4', '3'),
(55, ' <br /><b>Warning</b>:  Undefined variable $PG_Name in <b>C:xampphtdocspg_manager_newconfigure.php</b> on line <b>112</b><br />', '8834567891', 'manjuprasad.4327@gmail.com', '4', '5', '2'),
(56, ' <br /><b>Notice</b>:  Undefined variable: PG_Name in <b>/home/u406176785/domains/iqbetspro.com/public_html/pg_manager_new/configure.php</b> on line <b>112</b><br />', '8834567890', 'koduri.bhagath@gmail.com', '15', '14', '7'),
(57, ' <br /><b>Notice</b>:  Undefined variable: PG_Name in <b>/home/u406176785/domains/iqbetspro.com/public_html/pg_manager_new/configure.php</b> on line <b>112</b><br />', '8834567890', 'koduri.bhagath@gmail.com', '5', '5', '5'),
(58, ' varun', '8834567890', 'koduri.bhagath@gmail.com', '3', '4', '2'),
(59, ' varun', '8834567890', 'koduri.bhagath@gmail.com', '3', '4', '2'),
(60, 'Sri Venkateswara Mens PG', '8834567891', 'manjuprasad.4327@gmail.com', '8', '4', '5'),
(61, ' varun', '8834567890', 'koduri.bhagath@gmail.com', '3', '2', '2'),
(62, ' Raj', '8834567890', 'koduri.bhagath@gmail.com', '3', '2', '2'),
(63, ' uyguyg', '8834567890', 'koduri.bhagath@gmail.com', '4', '2', '3'),
(64, ' Raj', '8834567890', 'koduri.bhagath@gmail.com', '4', '2', '2'),
(65, ' varun', '8834567890', 'koduri.bhagath@gmail.com', '5', '2', '2'),
(66, ' <br /><b>Warning</b>:  Undefined variable $PG_Name in <b>C:xampphtdocspg_manager_newconfigure.php</b> on line <b>112</b><br />', '8834567890', 'koduri.bhagath@gmail.com', 'default', 'default', 'default'),
(67, ' <br /><b>Warning</b>:  Undefined variable $PG_Name in <b>C:xampphtdocspg_manager_newconfigure.php</b> on line <b>112</b><br />', '8834567890', 'koduri.bhagath@gmail.com', '7', '5', '3'),
(68, ' varun', '8834567890', 'koduri.bhagath@gmail.com', '3', '2', '2'),
(69, ' varun', '8834567890', 'koduri.bhagath@gmail.com', '3', '2', '2'),
(70, ' ', '8834567890', 'koduri.bhagath@gmail.com', '4', '4', '4'),
(71, ' ', '8834567890', 'koduri.bhagath@gmail.com', '4', '5', '6'),
(72, ' moon', '8834567890', 'koduri.bhagath@gmail.com', '2', '2', '2'),
(73, ' moon', '8834567890', 'koduri.bhagath@gmail.com', '4', '3', '2'),
(74, ' <br /><b>Warning</b>:  Undefined variable $PG_Name in <b>C:xampphtdocspg_manager_newconfigure.php</b> on line <b>112</b><br />', '3837383838', 'ssy.balu@gmail.com', '4', '3', '2'),
(75, ' moon', '8834567890', 'koduri.bhagath@gmail.com', '4', '2', '2'),
(76, ' star', '8834567890', 'koduri.bhagath@gmail.com', 'default', 'default', 'default'),
(77, ' moon', '8834567890', 'koduri.bhagath@gmail.com', 'default', 'default', 'default'),
(78, ' sun', '8834567890', 'koduri.bhagath@gmail.com', '5', '3', '3'),
(79, ' sun', '8834567890', 'koduri.bhagath@gmail.com', '2', '3', '4'),
(80, ' sun', '8834567890', 'koduri.bhagath@gmail.com', '4', '6', '3'),
(81, ' sun', '8834567890', 'koduri.bhagath@gmail.com', 'default', 'default', 'default'),
(82, ' sun', '8834567890', 'koduri.bhagath@gmail.com', 'default', 'default', 'default'),
(83, ' new pg', '8834567890', 'koduri.bhagath@gmail.com', '6', '10', '3'),
(84, ' starpg', '8834567890', 'koduri.bhagath@gmail.com', '5', '5', '5'),
(85, ' starpg', '8834567890', 'koduri.bhagath@gmail.com', '4', '9', '3'),
(86, ' starpg', '8834567890', 'koduri.bhagath@gmail.com', '5', '5', '2'),
(87, ' starpg', '8834567890', 'koduri.bhagath@gmail.com', 'default', 'default', 'default'),
(88, ' starpg', '8834567890', 'koduri.bhagath@gmail.com', '7', '5', '3'),
(89, ' starpg', '8834567890', 'koduri.bhagath@gmail.com', '7', '10', '4'),
(90, ' new pg', '8834567890', 'koduri.bhagath@gmail.com', 'default', 'default', 'default'),
(91, ' star', '8834567890', 'koduri.bhagath@gmail.com', 'default', 'default', 'default'),
(92, ' ', '8834567890', 'koduri.bhagath@gmail.com', 'default', 'default', 'default'),
(93, ' starpg', '8834567890', 'koduri.bhagath@gmail.com', '2', '3', '2'),
(94, ' pg14', '8834567890', 'koduri.bhagath@gmail.com', '4', '4', '4');

-- --------------------------------------------------------

--
-- Table structure for table `create_PG`
--

CREATE TABLE `create_PG` (
  `id` int(20) NOT NULL,
  `PG_Name` varchar(200) NOT NULL,
  `manager_mobile` varchar(20) NOT NULL,
  `manager_email` varchar(200) NOT NULL,
  `landmark` varchar(200) NOT NULL,
  `city` varchar(20) NOT NULL,
  `pincode` varchar(8) NOT NULL,
  `state` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `PG_Type` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `create_PG`
--

INSERT INTO `create_PG` (`id`, `PG_Name`, `manager_mobile`, `manager_email`, `landmark`, `city`, `pincode`, `state`, `address`, `PG_Type`) VALUES
(2, 'keshava', '8834567891', 'keshava@gmail.com', 'Jayanagr X road', 'Bangalore', '530018', 'Karnataka', 'H.no.1-34/5,Beside h/anuman Temple,Jayanagar 4th Block', '0'),
(3, 'keshava', '8834567891', 'keshava@gmail.com', 'Jayanagr X road', 'Bangalore', '530018', 'Karnataka', 'H.no.1-34/5,Beside h/anuman Temple,Jayanagar 4th Block', '0'),
(4, 'keshava', '8834567891', 'keshava@gmail.com', 'Jayanagr X road', 'Bangalore', '530018', 'Karnataka', 'H.no.1-34/5,Beside h/anuman Temple,Jayanagar 4th Block', '0'),
(5, 'keshava', '8834567891', 'keshava@gmail.com', 'Jayanagr X road', 'Bangalore', '530018', 'Karnataka', 'H.no.1-34/5,Beside h/anuman Temple,Jayanagar 4th Block', '0'),
(6, 'keshava', '8834567891', 'keshava@gmail.com', 'Jayanagr X road', 'Bangalore', '530018', 'Karnataka', 'H.no.1-34/5,Beside h/anuman Temple,Jayanagar 4th Block', '0'),
(8, 'iouio', '8834567891', 'manjuprasad.4327@gmail.com', 'jhh', 'bangalore', '', 'uuio', '                    yyurturttt', 'Mens'),
(10, 'manju j', '8834567891', 'manjuprasad.4327@gmail.com', 'Radio park', 'bangalore', '142563', 'KA', '         fghhshgsj dhststhteryf          ', 'Mens'),
(12, 'kmb', '8834567891', 'manjuprasad.4327@gmail.com', 'Radio park', 'bellary', '142563', 'sgsfhf', '                    eyty  w5yw54 y7 5y ', 'Mens'),
(14, 'chintu', '8834567891', 'manjuprasad.4327@gmail.com', 'Gandhi nagar', 'bellary', '89787678', 'KA', '                    dfhth  truyrt6ur wruwy uww', 'Mens'),
(16, 'Raj', '8834567891', 'manjuprasad.4327@gmail.com', 'Radio park', 'bellary', '89787678', 'AP', '                    dtuy yrty y erryey', 'Mens'),
(18, 'kmb', '8834567891', 'manjuprasad.4327@gmail.com', 'jhh', 'bellary', '12352', 'KA', '              dfhshhayh      ', 'Mens'),
(20, 'kmb', '8834567891', 'manjuprasad.4327@gmail.com', 'near mall', 'bellary', '89787678', 'sgsfhf', '                    etwetqt', 'Mens'),
(22, 'iouio', '8834567891', 'manjuprasad.4327@gmail.com', 'Radio park', 'bangalore', '165448', 'KA', '         mkbu yrx  gv           ', 'Mens'),
(24, 'fgdf', '8834567891', 'manjuprasad.4327@gmail.com', 'jhh', 'bangalore', '142563', 'uuio', '                    jkhbuf', 'Mens'),
(35, 'Raj', '8834567891', 'manjuprasad.4327@gmail.com', 'near mall', 'bellary', '12352', 'uuio', '                    ihuyfgt6d', 'Mens'),
(49, 'new pg', '8834567890', 'koduri.bhagath@gmail.com', 'mall', 'bengaluru', '560087', 'Karnataka', 'bengaluru', 'male'),
(50, 'star', '8834567890', 'koduri.bhagath@gmail.com', 'vega city mall', 'bengaluru', '560087', 'Karnataka', 'bengaluru', 'male'),
(51, 'star', '8834567890', 'koduri.bhagath@gmail.com', 'vega city mall', 'bengaluru', '560087', 'Karnataka', 'bengaluru', ''),
(52, 'star', '8834567890', 'koduri.bhagath@gmail.com', 'vega city mall', 'bengaluru', '560087', 'Karnataka', 'bengaluru', ''),
(54, 'new pg', '8834567890', 'koduri.bhagath@gmail.com', 'vega city mall', 'bengaluru', '560087', 'Karnataka', 'bengaluru', 'male'),
(56, 'moon', '8834567890', 'koduri.bhagath@gmail.com', 'vega city mall', 'bengaluru', '560087', 'Karnataka', 'bengaluru', 'male'),
(57, '', '', '', '', '', '', '', '', ''),
(58, 'sun', '8834567890', 'koduri.bhagath@gmail.com', 'Radio park', 'bangalore', '560001', 'karnataka', '           bengaluru         ', 'male'),
(59, 'starpg', '8834567890', 'koduri.bhagath@gmail.com', '', 'bengaluru', '560087', 'GJ', 'bengaluru', 'male'),
(60, '', '', '', '', '', '', '', '', ''),
(61, '', '8834567890', 'koduri.bhagath@gmail.com', '', '', '', 'AN', '                    ', ''),
(62, '', '', '', '', '', '', '', '', ''),
(63, 'pg14', '8834567890', 'koduri.bhagath@gmail.com', 'Radio park', 'bangalore', '560001', 'KA', 'bengaluru', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `manage_rooms`
--

CREATE TABLE `manage_rooms` (
  `id` int(20) NOT NULL,
  `add_floors` varchar(255) NOT NULL,
  `add_rooms` varchar(255) NOT NULL,
  `add_sharing` varchar(255) NOT NULL,
  `building_name` varchar(2000) NOT NULL,
  `manager_email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manage_rooms`
--

INSERT INTO `manage_rooms` (`id`, `add_floors`, `add_rooms`, `add_sharing`, `building_name`, `manager_email`) VALUES
(1, '5', '10', '5', 'KB1', 'koduri.bhagath@gmail.com'),
(2, '3', '4', '2', '', NULL),
(3, '', '', '', '', NULL),
(4, '4', '5', '3', '', NULL),
(5, '5', '4', '4', '', NULL),
(6, '4', '55', '7', '', NULL),
(7, '3', '2', '1', '', NULL),
(8, '4', '3', '1', '', NULL),
(9, '3', '2', '1', '', NULL),
(10, '6', '8', '2', '', 'ssy.balu@gmail.com'),
(11, '5', '10', '5', '', 'ssy.balu@gmail.com'),
(12, '3', '4', '2', '', ''),
(13, '3', '4', '2', '', 'a@gmail.com'),
(14, '3', '4', '2', '', 'a@gmail.com'),
(15, '', '', '', '', ''),
(16, '3', '4', '2', '', 'a@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `manage_rooms_under_building`
--

CREATE TABLE `manage_rooms_under_building` (
  `id` int(20) NOT NULL,
  `add_floors` varchar(255) NOT NULL,
  `add_rooms` varchar(255) NOT NULL,
  `add_sharing` varchar(255) NOT NULL,
  `building_name` varchar(2000) NOT NULL,
  `manager_email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manage_rooms_under_building`
--

INSERT INTO `manage_rooms_under_building` (`id`, `add_floors`, `add_rooms`, `add_sharing`, `building_name`, `manager_email`) VALUES
(1, '5', '10', '5', '', NULL),
(2, '3', '4', '2', '', NULL),
(3, '', '', '', '', NULL),
(4, '4', '5', '3', '', NULL),
(5, '5', '4', '4', '', NULL),
(6, '4', '55', '7', '', NULL),
(7, '3', '2', '1', '', NULL),
(8, '4', '3', '1', '', NULL),
(9, '3', '2', '1', '', NULL),
(10, '6', '8', '2', '', 'ssy.balu@gmail.com'),
(11, '5', '10', '5', '', 'ssy.balu@gmail.com'),
(12, '3', '4', '2', '', ''),
(13, '3', '4', '2', '', 'a@gmail.com'),
(14, '3', '4', '2', '', 'a@gmail.com'),
(15, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` int(10) NOT NULL,
  `tenant_mobile` varchar(100) NOT NULL,
  `floor_no` varchar(500) NOT NULL,
  `room_no` varchar(500) NOT NULL,
  `bed_no` varchar(500) NOT NULL,
  `breakfast` varchar(2000) NOT NULL,
  `lunch` varchar(2000) NOT NULL,
  `dinner` varchar(2000) NOT NULL,
  `date` date NOT NULL,
  `comments` varchar(2000) NOT NULL,
  `building_name` varchar(50) NOT NULL,
  `manager_email` varchar(3000) NOT NULL,
  `tenant_name` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `tenant_mobile`, `floor_no`, `room_no`, `bed_no`, `breakfast`, `lunch`, `dinner`, `date`, `comments`, `building_name`, `manager_email`, `tenant_name`) VALUES
(6, '6665595959', '', '', '', 'no', 'yes', 'yes', '1970-01-01', 'hheeee', 'KB1', 'koduri.bhagath@gmail.com', 'deepak'),
(10, '6665595959', '', '', '', 'no', 'yes', 'yes', '1970-01-01', 'ohhhhh', 'KB1', 'koduri.bhagath@gmail.com', 'deepak'),
(13, '9595595959', '', '', '', 'yes', 'no', 'no', '2023-01-07', 'AAAA', '', '', ''),
(15, '9595595959', '', '', '', 'yes', 'no', 'no', '1970-01-01', '', '', '', ''),
(16, '6665595959', '', '', '', 'no', 'yes', 'yes', '1970-01-01', 'undefined', 'KB1', 'koduri.bhagath@gmail.com', 'deepak'),
(17, '9595595959', '', '', '', 'yes', 'no', 'no', '2023-01-13', 'heee', '', '', ''),
(18, '6665595959', '', '', '', 'no', 'yes', 'yes', '2023-01-13', 'undefined', 'KB1', 'koduri.bhagath@gmail.com', 'deepak'),
(25, '6665595959', '1', '101', '2', 'no', 'yes', 'yes', '2023-02-08', 'TEST UPDATE', 'KB1', 'koduri.bhagath@gmail.com', 'JAI'),
(26, '6665595959', '1', '101', '2', 'no', 'yes', 'yes', '2023-02-08', 'ssssssssss', 'KB1', 'koduri.bhagath@gmail.com', 'JAI'),
(27, '7779955959', '1', '101', '2', 'no', 'yes', 'yes', '2023-05-02', 'ssssssssss', 'KB1', 'koduri.bhagath@gmail.com', 'JAI'),
(30, '92349023849', '5', '1', '2', 'no', 'no', '', '2022-01-22', 'please solve as sonn as possible', 'KB1', 'koduri.bhagath@gmail.com', 'deepak'),
(32, '7779955959', '1', '101', '2', 'on', 'on', 'on', '2023-02-09', 'HSH', 'KB1', 'koduri.bhagath@gmail.com', 'JAI'),
(33, '7779955959', '1', '101', '2', 'on', 'on', 'on', '2023-02-08', '', 'KB1', 'koduri.bhagath@gmail.com', 'JAI'),
(35, '7779955959', '1', '102', '2', 'on', 'yes', 'on', '2023-02-09', '', 'KB1', 'koduri.bhagath@gmail.com', ''),
(36, '7779955959', '1', '102', '2', 'on', 'on', 'yes', '2023-02-10', 'iio', 'KB1', 'koduri.bhagath@gmail.com', ''),
(37, '7779955959', '1', '102', '2', 'on', 'yes', 'on', '2023-02-09', 'iipo', 'KB1', 'koduri.bhagath@gmail.com', ''),
(38, '7779955959', '1', '102', '2', 'on', 'yes', 'on', '0000-00-00', '', 'KB1', 'koduri.bhagath@gmail.com', ''),
(39, '7779955959', '1', '102', '2', 'NO', 'NO', 'NO', '2023-03-28', '', 'KB1', 'koduri.bhagath@gmail.com', ''),
(40, '7779955959', '1', '102', '2', 'YES', 'NO', 'YES', '2023-03-30', '', 'KB1', 'koduri.bhagath@gmail.com', ''),
(42, '3837383838', '2', '203', '3', 'on', 'yes', 'on', '2023-02-10', 'will eat outside', 'KB4', 'koduri.bhagath@gmail.com', 'my full name'),
(43, '3837383838', '2', '203', '3', 'on', 'on', 'on', '0000-00-00', '', 'KB4', 'koduri.bhagath@gmail.com', 'my full name'),
(44, '3837383838', '2', '203', '3', 'on', 'on', 'on', '0000-00-00', '', 'KB4', 'koduri.bhagath@gmail.com', 'my full name'),
(45, '3837383838', '2', '203', '3', 'on', 'on', 'yes', '1970-01-01', 'dfzfsssrgdt', 'KB4', 'koduri.bhagath@gmail.com', 'my full name'),
(49, '7779955959', '2', '1', '1', 'on', 'yes', 'on', '2023-03-29', '', 'KB1', 'koduri.bhagath@gmail.com', 'JAI'),
(50, '7779955959', '2', '1', '1', 'YES', 'NO', 'NO', '2023-03-30', 'gdhggfvdsd', 'KB1', 'koduri.bhagath@gmail.com', 'JAI'),
(51, '7779955959', '2', '1', '1', 'NO', 'YES', 'NO', '2023-03-30', 'bfssgfgfxgf', 'KB1', 'koduri.bhagath@gmail.com', 'JAI'),
(52, '7779955959', '2', '1', '1', 'on', 'on', 'yes', '2023-03-28', 'vdvddf', 'KB1', 'koduri.bhagath@gmail.com', 'JAI'),
(53, '7779955959', '2', '1', '1', 'yes', 'on', 'on', '2023-03-28', '', 'KB1', 'koduri.bhagath@gmail.com', 'JAI'),
(54, '7779955959', '2', '1', '1', 'on', 'yes', 'yes', '2023-03-28', '', 'KB1', 'koduri.bhagath@gmail.com', 'JAI'),
(55, '7779955959', '2', '1', '1', 'yes', 'on', 'on', '2023-03-28', '', 'KB1', 'koduri.bhagath@gmail.com', 'JAI'),
(56, '7779955959', '2', '1', '1', 'yes', 'yes', 'yes', '2023-03-28', '', 'KB1', 'koduri.bhagath@gmail.com', 'JAI'),
(57, '7779955959', '2', '1', '1', 'no', 'no', 'yes', '2023-03-28', '', 'KB1', 'koduri.bhagath@gmail.com', 'JAI'),
(58, '7779955959', '2', '1', '1', 'yes', 'no', 'no', '2023-03-29', '', 'KB1', 'koduri.bhagath@gmail.com', 'JAI'),
(60, '7779955959', '2', '1', '1', 'yes', 'yes', 'no', '2023-03-29', 'not comming\n', 'KB1', 'koduri.bhagath@gmail.com', 'JAI'),
(61, '7779955959', '1', '2', '2', 'yes', 'no', 'no', '2023-03-29', 'no changes', 'KB1', 'koduri.bhagath@gmail.com', 'JAI'),
(62, '8317453793', '3', '1', '2', 'YES', 'YES', 'NO', '2023-04-01', 'hi hello', 'KB1', 'koduri.bhagath@gmail.com', 'sagar ac'),
(63, '9381404040', '1', '2', '1', 'yes', 'no', 'no', '2023-04-01', 'Going outside', 'ANB1', 'tanandbabu@yahoo.co.in', 'bhargav'),
(64, '9381404040', '1', '2', '1', 'YES', 'YES', 'NO', '2023-04-05', 'i will not be available', 'ANB1', 'tanandbabu@yahoo.co.in', 'bhargav'),
(65, '8106517443', '', '', '', 'yes', 'no', 'no', '2023-04-03', 'hhhh', '', '', 'T Anand Babu'),
(66, '8106517443', '', '', '', 'no', 'no', 'yes', '2023-04-03', 'hhhh', '', '', 'T Anand Babu'),
(68, '', '', '', '', 'no', 'no', 'yes', '2023-04-05', 'hhhh', '', '', ''),
(70, '', '1', '2', '1', 'NO', 'NO', 'NO', '2023-04-06', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(76, '', '1', '2', '1', 'yes', 'yes', 'no', '2023-04-04', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(77, '', '1', '2', '1', 'no', 'no', 'no', '2023-04-04', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(78, '', '1', '2', '1', 'no', 'no', 'no', '2023-04-04', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(79, '', '1', '2', '1', 'no', 'no', 'no', '2023-04-04', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(80, '', '1', '2', '1', 'no', 'no', 'no', '2023-04-04', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(81, '', '1', '2', '1', 'no', 'no', 'no', '2023-04-04', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(82, '', '1', '2', '1', 'no', 'no', 'no', '2023-04-04', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(83, '', '1', '2', '1', 'no', 'no', 'no', '2023-04-04', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(84, '', '1', '2', '1', 'no', 'no', 'no', '2023-04-04', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(85, '', '1', '2', '1', 'no', 'no', 'no', '2023-04-04', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(86, '', '1', '2', '1', 'no', 'no', 'no', '0000-00-00', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(87, '', '1', '2', '1', 'no', 'no', 'no', '2023-04-04', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(88, '', '1', '2', '1', 'no', 'no', 'no', '2023-04-04', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(89, '', '1', '2', '1', 'no', 'no', 'no', '0000-00-00', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(90, '', '1', '2', '1', 'no', 'no', 'no', '0000-00-00', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(91, '', '1', '2', '1', 'no', 'no', 'no', '2023-04-04', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(92, '', '1', '2', '1', 'no', 'no', 'no', '2023-04-04', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(93, '', '1', '2', '1', 'no', 'no', 'no', '2023-04-04', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(94, '', '1', '2', '1', 'no', 'no', 'no', '2023-04-04', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(95, '', '1', '2', '1', 'no', 'no', 'no', '2023-04-04', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(96, '', '1', '2', '1', 'no', 'no', 'no', '2023-04-04', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(97, '', '1', '2', '1', 'no', 'no', 'no', '2023-04-04', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(98, '', '1', '2', '1', 'no', 'no', 'no', '2023-04-04', '', 'ANB1', 'tanandbabu@yahoo.co.in', ''),
(124, '7777777788', '1', '101', '1', 'YES', 'NO', 'NO', '2023-04-04', 'deepak reddy', 'KB2', 'koduri.bhagath@gmail.com', 'reddydeepak'),
(125, '7777777788', '1', '101', '1', 'NO', 'YES', 'NO', '2023-04-04', 'deepak reddy', 'KB2', 'koduri.bhagath@gmail.com', 'reddydeepak'),
(126, '9381404041', '1', '2', '1', 'no', 'no', 'no', '0000-00-00', '', 'ANB1', 'tanandbabu@yahoo.co.in', 'bhargav'),
(128, '9381404011', '1', '2', '1', 'yes', 'no', 'no', '0000-00-00', 'going outside', 'ANB1', 'tanamdbabu@gmail.com', 'bhargav'),
(129, '9381404011', '1', '2', '1', 'yes', 'yes', 'yes', '2023-04-07', 'going outside', 'ANB1', 'tanamdbabu@gmail.com', 'bhargav'),
(131, '9381404011', '1', '2', '1', 'yes', 'yes', 'yes', '2023-04-07', 'going outside', 'ANB1', 't@gmail.com', 'bhargav'),
(132, '1', '1', '2', '1', 'yes', 'yes', 'yes', '2023-04-07', 'going outside', 'ANB1', 't@gmail.com', 'bhargav'),
(137, '9381404011', '1', '2', '1', 'YES', 'YES', 'YES', '2023-04-11', '', 'ANB1', 'tanandbabu@yahoo.co.in', 'bhargav'),
(138, '9381404011', '1', '2', '1', 'no', 'yes', 'no', '2023-04-11', '', 'ANB1', 'tanandbabu@yahoo.co.in', 'bhargav'),
(139, '9381404011', '1', '2', '1', 'yes', 'no', 'no', '2023-04-11', '', 'ANB1', 'tanandbabu@yahoo.co.in', 'bhargav'),
(140, '9381404011', '1', '2', '1', 'YES', 'YES', 'YES', '2023-04-13', '2 days trip', 'ANB1', 'tanandbabu@yahoo.co.in', 'bhargav'),
(141, '9381404011', '1', '2', '1', 'YES', 'YES', 'NO', '2023-04-12', 'yessss', 'ANB1', 'tanandbabu@yahoo.co.in', 'bhargav'),
(142, '9381404011', '1', '2', '1', 'yes', 'yes', 'yes', '2023-04-12', 'nnnnnnnnn', 'ANB1', 'tanandbabu@yahoo.co.in', 'bhargav'),
(143, '9381404011', '1', '1', '1', 'yes', 'no', 'no', '2023-04-13', 'i am going ouside', 'ANB1', 'tanandbabu@yahoo.co.in', 'bhargav');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `building_name` varchar(20) NOT NULL,
  `manager_email` varchar(200) NOT NULL,
  `manager_mobile` varchar(12) NOT NULL,
  `news_type` varchar(2000) NOT NULL,
  `news_description` mediumtext NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `building_name`, `manager_email`, `manager_mobile`, `news_type`, `news_description`, `created_at`) VALUES
(17, 'MNJ2', 'manjuprasad.4327@gmail.co', '8834567891', 'guest', 'guest is comming to visit to pg', '2022-11-17'),
(21, 'MNJ2', 'manjuprasad.4327@gmail.co', '8834567891', 'guest', 'guest is comming to visit to pg', '2022-11-17'),
(22, 'KB2', 'koduri.bhagath@gmail.com', '', 'Meals food', 'tommorow dinner isnt there in PG gfsdvs', '2023-02-09'),
(24, 'MNJ1', 'manjuprasad.4327@gmail.co', '8834567891', 'meals', 'special meals', '2022-11-09'),
(26, '', '', '8834567890', 'test ', 'test', '2023-04-02'),
(27, '', '', '8834567890', 'udhuis', 'jdfjkd', '2023-05-02'),
(28, '', 'koduri.bhagath@gmail.com', '', 'road repair', '2 days road block full road', '2023-02-06'),
(29, '', '', '8398391209', 'road', 'block', '2023-02-06'),
(34, 'KB1', 'koduri.bhagath@gmail.com', '8834567890', 'function', 'update tesing on februRY ', '1970-01-01'),
(37, 'KB2', 'koduri.bhagath@gmail.com', '8834567890', 'water', 'no water for 2 hr today and tommorow', '1970-01-01'),
(38, '', 'koduri.bhagath@gmail.com', '8834567890', 'water', 'no water for 2 hrs', '1970-01-01'),
(39, 'KB1', 'koduri.bhagath@gmail.com', '8834567890', 'test for eerro updaye', 'for date error', '2023-03-28'),
(41, 'KB2', 'koduri.bhagath@gmail.com', '8834567890', 'guest', 'guest are comming  ', '2022-11-30'),
(43, 'KB1', 'koduri.bhagath@gmail.com', '8834567890', 'internet', 'no internet', '2023-03-28'),
(44, 'KB1', 'koduri.bhagath@gmail.com', '8834567890', 'special dinner', 'special dinner for tenants', '2023-03-28'),
(45, 'KB1', 'koduri.bhagath@gmail.com', '8834567890', 'fashion show', 'in play area evening 7pm', '2023-03-31'),
(46, 'ANB1', 'tanandbabu@yahoo.co.in', '8106517443', 'Road repair', 'New road construction', '2023-04-01'),
(47, 'KB2', '88@gmail.com', '7777777777', 'internet', 'no internet', '2023-04-04'),
(48, 'KB2', 'koduri.bhagath@gmail.com', '8834567890', 'internet', 'wifi', '2023-04-04'),
(49, 'KB2', '88@gmail.com', '7777777788', 'special dinner', 'deepak reddy', '2023-04-04'),
(50, 'KB1', 'jai@gmail.com', '7779955959', 'retest of manager', 'resting', '2023-04-06'),
(51, 'KB1', 'jai@gmail.com', '7779955959', 'restesting 2', 'restest 2', '2023-04-06'),
(53, 'ANB1', 'tanandbabu@yahoo.co.in', '8106517443', 'QATAR NEWS', 'QATAR TRIP', '2023-02-01'),
(54, 'ANB1', 'tanandbabu@yahoo.co.in', '8106517443', 'current shut down', 'nooo current till 10', '2023-04-11'),
(55, 'KB1', 'koduri.bhagath@gmail.com', '8834567890', 'fd', 'dsfsdfs aaf', '2023-04-11');

-- --------------------------------------------------------

--
-- Table structure for table `pg_management`
--

CREATE TABLE `pg_management` (
  `id` int(12) NOT NULL,
  `property_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `property_email` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `property_phone` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pincode` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `registered_date` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `subscription` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pg_management`
--

INSERT INTO `pg_management` (`id`, `property_name`, `property_email`, `property_phone`, `pincode`, `password`, `registered_date`, `subscription`) VALUES
(1, 'B1', 'ssy@gmail.com', '8834567890', '879688', '123', NULL, NULL),
(2, 'B2', 'bhuvan@gmail.com', '3993933939', '560018', '123', '', 'Free'),
(3, 'B3', 'ssy.balu@gmail.com', '6996696969', '560012', '123', '22-10-22', 'Free'),
(5, 'B4', 'y@gmail.com', '9900990099', '560013', 'abc@123', '22-10-2022', 'Free'),
(10, 'M1', 'ssy.balu@gmail.com', '1234567890', '500012', 'Bhargav@123', '24-10-2022', 'Free'),
(14, 'M2', 'v@gmail.com', '9900990099', '560013', 'abc@123', '24-10-2022', 'Free'),
(17, 'james', 'james@gmail.com', '9087907678', '560014', '123', '29-10-2022', 'Free'),
(18, 'Bhargav12', 'ssy1@gmail.com', '9381407315', '123456', 'Bhargav@123', '30-10-2022', 'Free'),
(19, 'Bhargav k', 'kb@gmail.com', '7894561230', '456123', 'Bhargav@123', '07-11-2022', 'Free'),
(20, 'Bhargav k', 'kb1@gmail.com', '7894561230', '456123', 'Bhargav@123', '07-11-2022', 'Free'),
(21, 'Mahati', 'Maha@yahoo.com', '6996696960', '123456', 'Bhargav@123', '11-11-2022', 'Free'),
(22, 'Bhagath', 'bhagath@gmail.com', '9845612345', '132456', 'Bhagath@123', '12-11-2022', 'Free'),
(23, 'NANDU', 'nadini@gmail.com', '9087907678', '560014', '123', '20-11-2022', 'Free');

-- --------------------------------------------------------

--
-- Table structure for table `setup_rooms_under_building`
--

CREATE TABLE `setup_rooms_under_building` (
  `id` int(20) NOT NULL,
  `floor_no` varchar(255) NOT NULL,
  `room_no` varchar(255) NOT NULL,
  `bed_no` varchar(255) NOT NULL,
  `no_of_persons_sharing_per_room` varchar(255) NOT NULL,
  `fee` varchar(255) NOT NULL,
  `building_name` varchar(2000) NOT NULL,
  `manager_email` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setup_rooms_under_building`
--

INSERT INTO `setup_rooms_under_building` (`id`, `floor_no`, `room_no`, `bed_no`, `no_of_persons_sharing_per_room`, `fee`, `building_name`, `manager_email`) VALUES
(806, '3', '302', '2', '2', '7000', 'KB2', 'koduri.bhagath@gmail.com'),
(807, '4', '401', '1', '4', '4000', 'KB2', 'koduri.bhagath@gmail.com'),
(808, '4', '401', '2', '4', '4000', 'KB2', 'koduri.bhagath@gmail.com'),
(809, '2', '202', '1', '3', '5000', 'KB2', 'koduri.bhagath@gmail.com'),
(810, '1', '103', '1', '1', '9000', 'KB2', 'koduri.bhagath@gmail.com'),
(811, '4', '401', '3', '4', '4000', 'KB2', 'koduri.bhagath@gmail.com'),
(812, '2', '201', '1', '1', '9000', 'KB2', 'koduri.bhagath@gmail.com'),
(813, '4', '401', '4', '4', '4000', 'KB2', 'koduri.bhagath@gmail.com'),
(983, '1', '1', '1', '4', '9876', 'KB1', 'koduri.bhagath@gmail.com'),
(984, '2', '1', '2', '3', '5500', 'KB1', 'koduri.bhagath@gmail.com'),
(985, '2', '1', '1', '3', '6500', 'KB1', 'koduri.bhagath@gmail.com'),
(986, '1', '1', '2', '4', '4567', 'KB1', 'koduri.bhagath@gmail.com'),
(987, '1', '1', '3', '4', '1234', 'KB1', 'koduri.bhagath@gmail.com'),
(988, '2', '1', '3', '3', '5500', 'KB1', 'koduri.bhagath@gmail.com'),
(989, '2', '2', '1', '2', '6500', 'KB1', 'koduri.bhagath@gmail.com'),
(990, '2', '2', '2', '2', '6500', 'KB1', 'koduri.bhagath@gmail.com'),
(991, '3', '1', '1', '2', '6500', 'KB1', 'koduri.bhagath@gmail.com'),
(992, '1', '1', '4', '4', '2345', 'KB1', 'koduri.bhagath@gmail.com'),
(993, '3', '1', '2', '2', '6500', 'KB1', 'koduri.bhagath@gmail.com'),
(994, '1', '2', '1', '3', '5500', 'KB1', 'koduri.bhagath@gmail.com'),
(995, '1', '2', '2', '3', '5500', 'KB1', 'koduri.bhagath@gmail.com'),
(996, '1', '2', '3', '3', '5500', 'KB1', 'koduri.bhagath@gmail.com'),
(997, '1', '1', '2', '4', '4567', 'ANB1', 'tanandbabu@yahoo.co.in'),
(998, '1', '1', '1', '4', '9876', 'ANB1', 'tanandbabu@yahoo.co.in'),
(999, '1', '1', '3', '4', '1234', 'ANB1', 'tanandbabu@yahoo.co.in'),
(1000, '2', '1', '1', '3', '6500', 'ANB1', 'tanandbabu@yahoo.co.in'),
(1001, '1', '2', '3', '3', '5500', 'ANB1', 'tanandbabu@yahoo.co.in'),
(1002, '2', '1', '2', '3', '5500', 'ANB1', 'tanandbabu@yahoo.co.in'),
(1003, '1', '1', '4', '4', '2345', 'ANB1', 'tanandbabu@yahoo.co.in'),
(1004, '1', '2', '1', '3', '5500', 'ANB1', 'tanandbabu@yahoo.co.in'),
(1005, '1', '2', '2', '3', '5500', 'ANB1', 'tanandbabu@yahoo.co.in'),
(1006, '2', '1', '3', '3', '5500', 'ANB1', 'tanandbabu@yahoo.co.in');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aadhaar`
--

CREATE TABLE `tbl_aadhaar` (
  `id` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Photo` varchar(5000) NOT NULL,
  `DOB` date NOT NULL,
  `Aadhaar_Card_No` bigint(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `City` varchar(20) NOT NULL,
  `District` varchar(30) NOT NULL,
  `Pincode` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_aadhaar`
--

INSERT INTO `tbl_aadhaar` (`id`, `Name`, `Photo`, `DOB`, `Aadhaar_Card_No`, `Gender`, `Address`, `City`, `District`, `Pincode`) VALUES
(2, ' MANJUPRASAD J', ' https://persist.signzy.tech/api/files/462431333/download/d110d741f35c4b7e828b70ceb5d6fb4dcb86e2c7e2c646e9aa827ae9857b0482.jpeg', '1996-10-14', 363409467513, ' MALE', ' C/O: HANUMANTHAPPA J #6/3/91 WARD NO 31 VIRUPAPUR THANDA GANGAWATI KOPPAL KARNATAKA 583227', ' DEVINAGAR', ' KOPPAL', 583227),
(1, ' RENUKA.E', ' https://persist.signzy.tech/api/files/462400401/download/9a45f7ebd73e47e3a9e3288a2df52458995b9b783f014d2baa452eda340c99b2.jpeg', '1989-02-19', 429496547553, ' FEMALE', ' C/O RAMCHANDRA.E 1-38 OGULAPUR OBULAPURAM (P.A) KARIMNAGAR TELANGANA 505402', ' CHEERLAVANCHA', ' KARIM NAGAR', 505402);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiry`
--

CREATE TABLE `tbl_enquiry` (
  `Id` int(20) NOT NULL,
  `building_name` varchar(50) NOT NULL,
  `manager_email` varchar(50) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Mobile_Number` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Email` varchar(200) NOT NULL,
  `enquiry_date` date NOT NULL DEFAULT current_timestamp(),
  `Remarks` varchar(200) NOT NULL,
  `Reference` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_enquiry`
--

INSERT INTO `tbl_enquiry` (`Id`, `building_name`, `manager_email`, `Name`, `Mobile_Number`, `Email`, `enquiry_date`, `Remarks`, `Reference`) VALUES
(151, 'KB1', 'koduri.bhagath@gmail.com', 'suhas', '7259960509', 'suhasgan@gmail.com', '2023-02-25', 'will join ', ''),
(152, 'MNJ1', 'manjuprasad.4327@gmail.com', 'abhishek', '7259960508', 'abc@gcad.com', '2022-12-31', 'will join 2 days later.\npaid 2000rs advance', ''),
(154, 'MNJ2', 'manjuprasad.4327@gmail.com', 'mandya', '7259960507', 'Dreddy@gmail.com', '2023-01-04', '', ''),
(158, 'KB3', 'koduri.bhagath@gmail.com', 'jsdhj', '9393939393', 'k@g.co', '2023-02-07', 'TEST', 'friends'),
(160, '', '', 'uiu', '8778779789', 'hjh@g.co', '2023-02-07', '', ''),
(161, '', '', 'test', '4893929291', 'me@mydomain.com', '2023-02-07', 'me@mydomain.com', 'me@mydomain.com'),
(168, 'KB2', 'koduri.bhagath@gmail.com', 'reddydeepak', '7777777777', '76@gmail.com', '2023-03-14', 'hi hello', 'mobile call'),
(172, 'KB2', 'koduri.bhagath@gmail.com', 'suhas', '1111111111', '11111111@gmail.com', '2023-03-03', 'fvffsaddf', 'fhtrrtrt'),
(173, 'KB2', 'koduri.bhagath@gmail.com', 'naveen', '7777777777', '777@gmail.com', '2023-03-14', 'hi hello. good pg', 'advertisement tv'),
(174, 'KB2', 'koduri.bhagath@gmail.com', 'guru', '9090909090', 'guru@gamil.com', '2023-03-25', '2 weeks', 'advertisement'),
(175, 'KB1', 'koduri.bhagath@gmail.com', 'kiran kumar', '4545454545', 'kiran@gmail.com', '2023-03-28', 'hi hello', 'instagram'),
(176, 'KB1', 'koduri.bhagath@gmail.com', 'sagar', '8317453793', 'sagar@gmail.com', '2023-03-31', 'april 1 joining, new joinee', 'advertise'),
(177, 'KB1', 'koduri.bhagath@gmail.com', 'sagar', '8317453793', 'sagar@gmail.com', '2023-03-31', '', ''),
(178, 'KB2', 'koduri.bhagath@gmail.com', 'Sagar p', '9874561231', 'sagar@gmail.com', '2023-04-28', 'hiiiii', 'facebok'),
(181, 'ANB1', 'tanandbabu@yahoo.co.in', 'manju', '9545454545', 'manju@gmail.com', '2023-04-01', 'New Joinee', 'banner'),
(182, 'ANB1', 'tanandbabu@yahoo.co.in', 'Ajay ', '7777777777', 'Ajay@gmail.com', '2023-04-01', 'hii', 'google'),
(183, 'ANB1', 'tanandbabu@yahoo.co.in', 'raghu', '8197997575', 'raghu@gmail.com', '2023-04-09', 'adding new tenant', 'ad'),
(185, 'ANB1', 'tanandbabu@yahoo.co.in', 'smith', '5555555555', 'par.paavan@gmail.com', '2023-04-15', '', ''),
(187, 'KB2', 'koduri.bhagath@gmail.com', 'Bittu', '9874561231', 'bitu@gmail.com', '2023-04-28', 'dgdgdg', 'rsrtyrey'),
(188, 'ANB1', 'tanandbabu@yahoo.co.in', 'johnson', '0821082108', 'pari.paavan@gmail.com', '2023-05-01', 'hi enquiry', 'add'),
(189, 'ANB1', 'tanandbabu@yahoo.co.in', 'john', '0821082121', 'par1.paavan@gmail.com', '2023-05-01', 'hi remarks', 'add'),
(190, 'KB1', 'koduri.bhagath@gmail.com', 'johnson', '0821082100', 'john123@gmail.com', '2023-05-01', 'new room', 'poster');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register_pg_manager`
--

CREATE TABLE `tbl_register_pg_manager` (
  `id` int(20) NOT NULL,
  `manager_name` varchar(255) NOT NULL,
  `manager_email` varchar(255) NOT NULL,
  `manager_mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `registered_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_register_pg_manager`
--

INSERT INTO `tbl_register_pg_manager` (`id`, `manager_name`, `manager_email`, `manager_mobile`, `password`, `registered_date`) VALUES
(1, 'bhagath', 'koduri.bhagath@gmail.com', '8834567891', '123', '0000-00-00'),
(5, 'varun', 'v@gmail.com', '9449499449', '123', '0000-00-00'),
(8, 'Manju', 'manjuprasad.4327@gmail.com', '8834567890', '123', '0000-00-00'),
(9, 'maww', '@gmail.com', '3933443333', '123', '0000-00-00'),
(10, 'maww', 'KKK@gmail.com', '8933443333', '123', '0000-00-00'),
(11, 'IJWIDF', 'JKDJA@gmail.com', '9223443333', '123', '0000-00-00'),
(33, 'T Anand Babu', 'tanandbabu@yahoo.co.in', '8106517443', 'Anand@123', '2023-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vacated_tenant`
--

CREATE TABLE `tbl_vacated_tenant` (
  `id` int(20) NOT NULL,
  `building_name` varchar(30) NOT NULL,
  `manager_email` varchar(30) NOT NULL,
  `manager_mobile` varchar(20) NOT NULL,
  `tenant_name` varchar(255) NOT NULL,
  `tenant_email` varchar(255) NOT NULL,
  `tenant_mobile` varchar(200) NOT NULL,
  `joined_date` date NOT NULL,
  `floor_no` varchar(10) NOT NULL,
  `room_no` varchar(10) NOT NULL,
  `bed_no` varchar(10) NOT NULL,
  `tenant_address` varchar(255) NOT NULL,
  `tenant_aadhar_number` varchar(200) NOT NULL,
  `tenant_aadhar_photo` varchar(2000) DEFAULT NULL,
  `tenant_image` varchar(2000) DEFAULT NULL,
  `tenant_documents` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vacated_tenant`
--

INSERT INTO `tbl_vacated_tenant` (`id`, `building_name`, `manager_email`, `manager_mobile`, `tenant_name`, `tenant_email`, `tenant_mobile`, `joined_date`, `floor_no`, `room_no`, `bed_no`, `tenant_address`, `tenant_aadhar_number`, `tenant_aadhar_photo`, `tenant_image`, `tenant_documents`) VALUES
(1, '', '', '', 'jdhj', 'newupdatedtenant@gmail.com', '8679955959', '0000-00-00', '3', '2', '3', 'dkjf', '1111873874387', NULL, '', ''),
(2, '', '', '', 'vacate_test', '1st_test_vacated_tenant@gmail.com', '6655594700', '0000-00-00', '5', '1', '2', 'Hyderbad', '699669699669', NULL, '', ''),
(3, '', '', '', '3_vacate_test', 'jai@gmail.com', '9855594700', '0000-00-00', '5', '1', '2', 'Pune', '889669699669', NULL, '', ''),
(4, '', '', '', '4_vacate_test', 'ssy.balu@gmail.com', '9000594700', '0000-00-00', '3', '2', '2', 'Pune', '889669699669', NULL, '', ''),
(5, '', '', '', 'vacate_test', 'vacate_test@gmail.com', '9000077667', '0000-00-00', '3', '2', '2', 'Hyderbad', '699669699669', NULL, '', ''),
(6, '', '', '', 'jdhj', 'sdkjja@gmail.com', '8888877667', '0000-00-00', '3', '3', '3', 'dkjf', '1111873874387', NULL, '', ''),
(7, '', '', '', 'many', 'mant@gmail.com', '8034567890', '2022-03-12', '5', '1', '2', 'null', 'null', NULL, 'null', 'null'),
(8, '', '', '', 'Raj', 'manjuprasad.4327@gmail.com', '8034567890', '2022-12-28', '5', '1', '2', '', '', NULL, '', ''),
(9, '', '', '', 'manju123', 'manju@gmail.com', '7034567890', '2022-12-30', '3', '3', '3', '', '', NULL, '', ''),
(10, '', '', '', 'Manju', 'manjuprasad.4327@gmail.com', '7259594700', '2022-12-30', '3', '3', '3', '', '', NULL, '', ''),
(11, '', '', '', 'new tenant', 'djasjkdjasjdas@yahoo.com', '969696969696', '2022-11-02', '3', '3', '3', '', '', NULL, '', ''),
(12, '', '', '', 'Bhargav123', 'sdkjja@gmail.com', '7779955959', '2022-12-30', '1', '2', '3', '', '', NULL, '', ''),
(13, '', '', '', 'Manju111', 'manjuprasad.4327@gmail.com', '1236547891', '2022-12-28', '1', '2', '3', '', '', NULL, '', ''),
(14, '', '', '', 'Manju', 'manjuprasad.4327@gmail.com', '7259594700', '2022-12-07', '3', '3', '3', '', '', NULL, '', ''),
(15, '', '', '', 'Bhargav', 'ssy@gmail.com', '7259594700', '2023-01-02', '3', '3', '3', '', '', NULL, '', ''),
(16, '', '', '', 'manju123', 'sdkjja@gmail.com', '7259594700', '1970-01-01', '5', '4', '2', '', '', NULL, '', ''),
(17, '', '', '', 'Soumya', 'soumyacn16@gmail.com', '8904112290', '2023-01-05', '3', '3', '3', '', '', NULL, '', ''),
(18, '', '', '', 'soumya', 'soumyacn16@gmail.com', '8904112290', '2023-01-07', '5', '4', '2', '', '', NULL, '', ''),
(19, '', '', '', 'soumya cn', 'soumyacn16@gmail.com', '8904112290', '2023-01-11', '5', '4', '2', '', '', NULL, '', ''),
(20, '', '', '', 'soumya', 's@gmail.com', '1234567890', '2023-01-05', '5', '4', '2', '', '', NULL, '', ''),
(21, '', '', '', 'my full name', 'me@mydomain.com', '9989989780', '2023-01-23', '1', '1', '1', '', '', NULL, '', ''),
(22, '', '', '', 'Manju', 'manju@gmail.com', '7259594700', '2023-01-27', '1', '101', '1', '', '', NULL, '', ''),
(23, '', '', '', 'suhas', '1234@gmail.co', '7259960507', '2023-01-27', '1', '104', '2', '', '', NULL, '', ''),
(24, '', '', '', 'deepak', 'reddy@gmail.com', '7259960506', '2023-01-27', '1', '103', '2', '', '', NULL, '', ''),
(25, '', '', '', 'paavan', 'acd@g.com', '7259960509', '2023-01-27', '1', '101', '1', '', '', NULL, '', ''),
(26, '', '', '', 'akash', '1234@pg.com', '7259960508', '2023-01-27', '1', '103', '2', '', '', NULL, '', ''),
(27, '', '', '', 'test', 'me@mydomain.com', '8839489339', '2023-01-27', '1', '101', '1', '', '', NULL, '', ''),
(28, '', '', '', 'test', 'me@mydomain.com', '8839489339', '2023-01-27', '1', '101', '1', '', '', NULL, '', ''),
(29, '', '', '', 'paavan', 'Dreddy@gmail.com', '7259960507', '2023-02-01', '2', '201', '1', '', '', NULL, '', ''),
(30, '', '', '', 'manju', 'yuva@gmail.com', '7779955959', '2023-01-31', '2', '202', '2', '', '', NULL, '', ''),
(31, '', '', '', 'manju', 'yuva@gmail.com', '7779955959', '2023-01-31', '2', '202', '2', '', '', NULL, '', ''),
(32, '', '', '', 'Viru', 'viru@gmail.com', '9034567877', '2023-01-31', '1', '101', '1', '', '', NULL, '', ''),
(33, '', '', '', 'manju', 'yuva@gmail.com', '7779955959', '2023-01-31', '2', '202', '3', '', '', NULL, '', ''),
(34, '', '', '', 'manju', 'yuva@gmail.com', '7779955959', '2023-01-31', '2', '202', '3', '', '', NULL, '', ''),
(35, '', '', '', 'manju', 'yuva@gmail.com', '7779955959', '2023-01-31', '2', '202', '3', '', '', NULL, '', ''),
(36, '', '', '', 'kiran kumar', 'kiran@gmail.com', '4545454545', '2023-03-30', '1', '1', '2', '', '', NULL, '', ''),
(37, '', '', '', 'kiran kumar', 'kiran@gmail.com', '4545454545', '2023-03-30', '1', '1', '2', '', '', NULL, '', ''),
(38, '', '', '', 'manju', 'yuva@gmail.com', '7779955959', '2023-01-31', '2', '1', '1', '', '', NULL, '', ''),
(39, '', '', '', 'Man', 'Mahan@yahoo.com', '7259594701', '2023-02-07', '1', '2', '1', '', '', NULL, '', ''),
(40, '', '', '', 'manju', 'yuva@gmail.com', '7779955959', '2023-01-31', '1', '1', '1', '', '', NULL, '', ''),
(41, '', '', '', 'kiran kumar', 'kiran@gmail.com', '4545454545', '2023-03-30', '1', '1', '2', '', '', NULL, '', ''),
(42, '', '', '', 'kiran kumar', 'kiran@gmail.com', '4545454545', '2023-03-30', '1', '2', '1', '', '', NULL, '', ''),
(43, '', '', '', 'manju', 'yuva@gmail.com', '7779955959', '2023-01-31', '1', '1', '2', '', '', NULL, '', ''),
(44, '', '', '', 'manju', 'yuva@gmail.com', '7779955959', '2023-01-31', '2', '2', '2', '', '', NULL, '', ''),
(45, '', '', '', 'Man', 'Mahan@yahoo.com', '7259594701', '2023-02-07', '1', '2', '1', '', '', NULL, '', ''),
(46, '', '', '', 'Man', 'Mahan@yahoo.com', '7259594701', '2023-02-07', '2', '2', '1', '', '', NULL, '', ''),
(47, '', '', '', 'manju', 'yuva@gmail.com', '7779955959', '2023-01-31', '2', '2', '2', '', '', NULL, '', ''),
(48, '', '', '', 'manju', 'yuva@gmail.com', '7779955959', '2023-01-31', '8', '1', '1', '', '', NULL, '', ''),
(49, '', '', '', 'manju', 'yuva@gmail.com', '7779955959', '2023-01-31', '2', '1', '2', '', '', NULL, '', ''),
(50, '', '', '', 'Man', 'Mahan@yahoo.com', '7259594701', '2023-02-07', '2', '1', '1', '', '', NULL, '', ''),
(51, '', '', '', 'virat', 'virat@gmail.com', '8521479631', '2023-04-03', '1', '1', '1', '', '', NULL, '', ''),
(52, '', '', '', 'manju', 'yuva@gmail.com', '7779955959', '2023-01-31', '1', '1', '1', '', '', NULL, '', ''),
(53, '', '', '', 'manju', 'yuva@gmail.com', '7779955959', '2023-01-31', '1', '1', '1', '', '', NULL, '', ''),
(54, '', '', '', 'manju', 'yuva@gmail.com', '7779955959', '2023-01-31', '1', '1', '1', '', '', NULL, '', ''),
(55, '', '', '', 'manju', 'yuva@gmail.com', '7779955959', '2023-01-31', '1', '1', '1', '', '', NULL, '', ''),
(56, '', '', '', 'bhargav', 'par.paavan@gmail.com', '9381404011', '2023-04-01', '1', '2', '1', '', '', NULL, '', ''),
(57, '', '', '', 'steve smith', '5577@gmail.com', '5555555577', '2023-04-11', '1', '101', '2', '', '', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_data`
--

CREATE TABLE `tb_data` (
  `id` int(200) NOT NULL,
  `name` varchar(2000) NOT NULL,
  `age` varchar(2000) NOT NULL,
  `country` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_data`
--

INSERT INTO `tb_data` (`id`, `name`, `age`, `country`) VALUES
(31, 'test', '123', 'p'),
(32, 'changed', '67', 'i'),
(33, 'values', '7', 'jhkj');

-- --------------------------------------------------------

--
-- Table structure for table `tenant-payments-details`
--

CREATE TABLE `tenant-payments-details` (
  `id` int(11) NOT NULL,
  `order_id` varchar(1000) NOT NULL,
  `payment_id` varchar(1000) NOT NULL,
  `payment_method` varchar(1000) NOT NULL,
  `tenant_id` varchar(1000) NOT NULL,
  `tenant_name` varchar(1000) NOT NULL,
  `totalamount` varchar(1000) NOT NULL,
  `tenant_mobile` varchar(1000) NOT NULL,
  `tenant_aadhar` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tenant_complaints`
--

CREATE TABLE `tenant_complaints` (
  `id` int(10) NOT NULL,
  `complaint_type` varchar(200) NOT NULL,
  `complaint_description` varchar(2000) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `resolve_date` date NOT NULL,
  `comments` varchar(200) NOT NULL,
  `building_name` varchar(20) NOT NULL,
  `manager_email` varchar(20) NOT NULL,
  `tenant_name` varchar(20) NOT NULL,
  `tenant_mobile` varchar(20) NOT NULL,
  `floor_no` varchar(20) NOT NULL,
  `room_no` varchar(20) NOT NULL,
  `bed_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tenant_image_upload`
--

CREATE TABLE `tenant_image_upload` (
  `id` int(20) NOT NULL,
  `image` mediumtext NOT NULL,
  `added_on` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tenant_image_upload`
--

INSERT INTO `tenant_image_upload` (`id`, `image`, `added_on`) VALUES
(1, 'C://Users/KODUR/Downloads/12321.jpeg', '2008-11-11 13:23:44.000000'),
(2, '415020191.jpeg', '2022-11-09 01:16:34.000000');

-- --------------------------------------------------------

--
-- Table structure for table `tenant_registration`
--

CREATE TABLE `tenant_registration` (
  `id` int(20) NOT NULL,
  `tenant_name` varchar(255) NOT NULL,
  `tenant_email` varchar(255) NOT NULL,
  `tenant_mobile` varchar(200) NOT NULL,
  `tenant_address` varchar(255) NOT NULL,
  `tenant_aadhar_number` varchar(200) NOT NULL,
  `tenant_aadhar_photo` varchar(2000) DEFAULT NULL,
  `tenant_image` varchar(2000) DEFAULT NULL,
  `tenant_image_base64_format_with_extension` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`tenant_image_base64_format_with_extension`)),
  `tenant_documents` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tenant_registration_manager_email`
--

CREATE TABLE `tenant_registration_manager_email` (
  `id` int(20) NOT NULL,
  `building_name` varchar(20) NOT NULL,
  `manager_mobile_no` varchar(20) NOT NULL,
  `tenant_name` varchar(255) NOT NULL,
  `manager_email` varchar(200) NOT NULL,
  `tenant_email` varchar(255) NOT NULL,
  `tenant_mobile` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) NOT NULL,
  `tenant_aadhar_number` varchar(2000) NOT NULL,
  `tenant_address` varchar(2000) NOT NULL,
  `joining_date` date NOT NULL,
  `comments` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tenant_registration_manager_email`
--

INSERT INTO `tenant_registration_manager_email` (`id`, `building_name`, `manager_mobile_no`, `tenant_name`, `manager_email`, `tenant_email`, `tenant_mobile`, `password`, `tenant_aadhar_number`, `tenant_address`, `joining_date`, `comments`) VALUES
(351, '', '', 'deepak', '', 'reddy@gmail.com', '7259960508', '12345', '123456789090', 'mysuru', '2023-02-01', '                    '),
(352, '', '', 'paavan', '', 'Dreddy@gmail.com', '7259960507', '12345', '123456789000', 'mysuru', '2023-02-01', '                    '),
(353, '', '', 'paavan', '', 'varunpruthvi4@gmail.com', '7259960510', 'asdfgg', '123456789045', 'mysuru', '2023-01-28', '                    '),
(354, '', '', 'deepak', '', 'varunsondekere95@gmail.com', '9898989899', '1234567', '123456789120', 'mysuru', '2023-01-28', '                    '),
(355, '', '', 'bhagath', '', 'koduri.bhagath@gmail.com', '4388239482', '12345', '438823948211', 'jasjd', '2023-01-28', '                    '),
(356, 'KB1', '8834567891', 'JAI', 'koduri.bhagath@gmail.com', 'jai@gmail.com', '7779955959', '$123@', '47387482973', 'dkjf', '2023-02-10', 'jan 1st 2013 '),
(357, 'MNJ1', '8834567890', 'Mahan', 'manjuprasad.4327@gmail.com', 'Maha@yahoo.com', '1236547891', '12345', '123453456723', 'bangalore', '2023-01-28', '                    '),
(358, 'KB1', '8834567891', 'Mahan', 'koduri.bhagath@gmail.com', 'Mahan@yahoo.com', '7789009876', '12345', '123456789456', 'Delhi', '2023-02-07', 'test  test     teat'),
(359, 'KB2', '8834567891', 'Manju', 'koduri.bhagath@gmail.com', 'Maha@yahoo.com', '7259594700', '123', '123456789456', 'bombay', '2023-01-28', '                    hi hello'),
(360, 'MNJ1', '8834567890', 'Raj', 'manjuprasad.4327@gmail.com', 'Maha@yahoo.com', '7259594700', '123', '123456789456', 'bombay', '2023-01-28', '                    hii'),
(364, 'MNJ2', '8834567890', 'yuva2', 'manjuprasad.4327@gmail.com', 'yuva2@gmail.com', '7779955959', '$123@', '47387482973', 'dkjf', '2022-11-10', 'jan 1st 2013 '),
(365, 'KB4', '8834567890', 'my full name', 'koduri.bhagath@gmail.com', 'ssy.balu@gmail.com', '3837383838', '123456', '383738383838', 'full street address', '2023-01-31', 'this is a comment'),
(366, 'KB3', '8834567890', 'my full name', 'koduri.bhagath@gmail.com', 'me@mydomain.com', '3837383838', '83382', '383738383838', 'full street address', '2023-01-31', 'this is a comment'),
(367, 'MNJ2', '8834567891', 'Viru', 'manjuprasad.4327@gmail.com', 'viru@gmail.com', '9034567877', '12345', '245673458786', 'bombay', '2023-01-31', '                    '),
(368, 'KB4', '8834567890', 'chintu', 'koduri.bhagath@gmail.com', 'a@gmail.com', '8660771615', '12345', '123453456700', 'bombay', '2023-03-03', '                hello    '),
(369, 'MNJ2', '8834567891', 'nani', 'manjuprasad.4327@gmail.com', 'nani@gmail.com', '7779955160', '12345', '123456789400', 'bombay', '2023-01-31', '                   hey '),
(370, 'MNJ1', '8834567891', 'manju', 'manjuprasad.4327@gmail.com', 'yuva@gmail.com', '7779955959', '$123@3', '123456789456', 'bangalore', '2023-01-31', '                    '),
(372, 'MNJ1', '8834567891', 'viraj', 'manjuprasad.4327@gmail.com', 'viraj@gmail.com', '7353581334', '12345', '123456789500', 'bombay', '2023-02-01', '                    '),
(373, 'B1', '8834567890', 'dhoni', 'manjuprasad.4327@gmail.com', 'dhoni@gmail.com', '1111111111', '$123@', '111111111111', 'dkjf', '0000-00-00', 'jan 1st 2013 '),
(374, 'B1', '8834567890', 'dhoni', 'manjuprasad.4327@gmail.com', 'dhoni1@gmail.com', '111111111111', '$123@', '11111111111111', 'dkjf', '0000-00-00', 'jan 1st 2013 '),
(375, 'MNJ1', '8834567891', 'Ajay', 'manjuprasad.4327@gmail.com', 'Ajay@gmail.com', '1236547890', '12345', '245673458900', 'bombay', '2023-02-04', '                   hii '),
(378, 'KB2', '8834567890', 'kiran', 'koduri.bhagath@gmail.com', '2kiran@gmail.com', '2222222222', '123456', '222222222222', 'bengaluru', '2023-02-14', '             hi hello'),
(379, 'KB2', '8834567890', 'rakshith', 'koduri.bhagath@gmail.com', '33@gmail.com', '3333333333', '123456', '333333333333', 'bengaluru', '2023-02-10', '                  '),
(380, 'KB4', '8834567890', 'bhagat', 'koduri.bhagath@gmail.com', '55@gmail.com', '5555555555', '123456', '555555555555', 'bengaluru', '2023-02-13', '           hi     hello    '),
(383, 'KB2', '8834567890', 'Ajay p kumar', 'koduri.bhagath@gmail.com', '76@gmail.com', '7654765476', '76547654', '765476547654', 'bengaluru', '2023-03-14', 'new tenant one'),
(384, 'KB1', '8834567890', 'Abhi', 'koduri.bhagath@gmail.com', 'Abhi@gmail.com', '7353581336', '12345', '123456789440', 'bengaluru', '2023-03-14', '                    '),
(385, '', '8834567890', 'naveen kumar', 'koduri.bhagath@gmail.com', '666@gmail.com', '6666666666', '123456', '666666666666', 'bengaluru', '2023-03-14', '          hi hello          '),
(386, '', '8834567890', 'naveen hunsur', 'koduri.bhagath@gmail.com', '000@gmail.com', '0000000000', '123456', '000000000000', 'bengaluru', '2023-03-14', '              hi hello      '),
(388, 'KB1', '8834567890', 'varun', 'koduri.bhagath@gmail.com', 'varunsondekere95@gmial.com', '9591005094', '123456', '120420120420', 'bengaluru', '2023-04-01', '              new joinee      '),
(389, 'KB1', '8834567890', 'Manju', 'koduri.bhagath@gmail.com', 'manjuprasad.4327@gmail.com', '7418529631', '12345', '123456789450', 'bengaluru', '2023-04-01', '                    hi'),
(390, 'KB1', '8834567890', 'sagar ac', 'koduri.bhagath@gmail.com', 'varunreddymysuru@gmail.com', '8317453793', '1234567', '129012901290', 'bengaluru', '2023-04-02', '             hi hello       '),
(391, 'ANB1', '8106517443', 'bhargav', 'tanandbabu@yahoo.co.in', 'par.paavan@gmail.com', '9381404011', '1234567', '890890890890', 'bengaluru', '2023-04-01', ''),
(392, 'ANB1', '8106517443', 'naveen', 'tanandbabu@yahoo.co.in', 'navin@gmail.com', '9845198451', 'asdfg', '567567567567', 'bengaluru', '2023-04-01', '                    Hi hello'),
(394, '', '8106517443', 'Anand Babu', 'tanandbabu@yahoo.co.in', 'tanandbabu@yahoo.co.in', '9945259777', 'Anand@123', '297741220523', 'Bangalore', '2023-04-03', '                    '),
(395, 'KB1', '8834567890', 'virat', 'koduri.bhagath@gmail.com', 'virat@gmail.com', '8521479631', '123456', '887596214735', 'bengaluru', '2023-04-03', '                HHH    '),
(396, 'KB2', '8834567890', 'reddydeepak', 'koduri.bhagath@gmail.com', '88@gmail.com', '7777777788', '55555', '345345345345', 'bengaluru', '2023-04-04', '               hi\n     '),
(397, 'ANB1', '8106517443', 'Milan', 'tanandbabu@yahoo.co.in', 'milan@gmail.com', '9945994599', 'abc123', '994599459945', 'hubli', '0000-00-00', 'new joinee'),
(398, 'ANB1', '8106517443', 'steve smith', 'tanandbabu@yahoo.co.in', '5577@gmail.com', '5555555577', '55775577', '555566665555', 'bengaluru', '2023-04-11', '                 hi hello   '),
(399, 'ANB1', '8106517443', 'date test', 'tanandbabu@yahoo.co.in', '45@gmail.com', '4567456745', '45674567', '456745674567', 'bengaluru', '2023-04-15', '                    '),
(400, 'ANB1', '8106517443', 'johnson', 'tanandbabu@yahoo.co.in', 'pari.paavan@gmail.com', '0821082108', '1234567', '123456789012', 'bengaluru', '2023-05-01', '                no comments    '),
(401, 'KB1', '8834567891', 'testing', 'koduri.bhagath@gmail.com', 'test@gmail.com', '9858438488', '12345', '873874282818', 'sr nagae', '2023-05-01', '                    '),
(402, 'KB1', '8834567891', 'johnson', 'koduri.bhagath@gmail.com', 'john@gmail.com', '0821082100', '1234567', '456456456456', 'bengaluru', '2023-05-01', '                   add ');

-- --------------------------------------------------------

--
-- Table structure for table `tenant_registration_without_image`
--

CREATE TABLE `tenant_registration_without_image` (
  `id` int(20) NOT NULL,
  `tenant_name` varchar(255) NOT NULL,
  `tenant_email` varchar(255) NOT NULL,
  `tenant_mobile` varchar(200) NOT NULL,
  `password` varchar(20) NOT NULL,
  `tenant_aadhar_number` varchar(2000) NOT NULL,
  `tenant_address` varchar(2000) NOT NULL,
  `joining_date` date NOT NULL,
  `comments` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tenant_registration_without_image`
--

INSERT INTO `tenant_registration_without_image` (`id`, `tenant_name`, `tenant_email`, `tenant_mobile`, `password`, `tenant_aadhar_number`, `tenant_address`, `joining_date`, `comments`) VALUES
(351, 'deepak', 'reddy@gmail.com', '7259960508', '12345', '123456789090', 'mysuru', '2023-01-02', '                    '),
(352, 'paavan', 'Dreddy@gmail.com', '7259960507', '12345', '123456789000', 'mysuru', '2023-01-10', '                    '),
(354, 'deepak', 'varunsondekere95@gmail.com', '9898989899', '1234567', '123456789120', 'mysuru', '2023-01-28', '                    '),
(355, 'bhagath', 'koduri.bhagath@gmail.com', '4388239482', '12345', '438823948211', 'jasjd', '2023-01-28', '                    '),
(356, 'pavan', 'deepakreddy16@gmail.com', '8217887764', '123123', '123123123123', 'mysuru', '2023-02-05', 'hdjhsdhajshdkjshd'),
(357, 'yuva', 'yuva@gmail.com', '7779955959', '$123@', '47387482973', 'dkjf', '0000-00-00', 'jan 1st 2013 ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `verification_id` bigint(20) NOT NULL,
  `verification_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `verification_id`, `verification_status`) VALUES
(1, 'bhaagth', 'koduri.bhagath@gmail.com', '123', 726498336, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adding-bed-details`
--
ALTER TABLE `adding-bed-details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adding-bed-details1`
--
ALTER TABLE `adding-bed-details1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_images`
--
ALTER TABLE `api_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buildings_under_pg_manager`
--
ALTER TABLE `buildings_under_pg_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configure_PG`
--
ALTER TABLE `configure_PG`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `create_PG`
--
ALTER TABLE `create_PG`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_rooms`
--
ALTER TABLE `manage_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_rooms_under_building`
--
ALTER TABLE `manage_rooms_under_building`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pg_management`
--
ALTER TABLE `pg_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setup_rooms_under_building`
--
ALTER TABLE `setup_rooms_under_building`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_aadhaar`
--
ALTER TABLE `tbl_aadhaar`
  ADD PRIMARY KEY (`Aadhaar_Card_No`);

--
-- Indexes for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_register_pg_manager`
--
ALTER TABLE `tbl_register_pg_manager`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `manager_email` (`manager_email`,`manager_mobile`);

--
-- Indexes for table `tbl_vacated_tenant`
--
ALTER TABLE `tbl_vacated_tenant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_data`
--
ALTER TABLE `tb_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenant-payments-details`
--
ALTER TABLE `tenant-payments-details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenant_complaints`
--
ALTER TABLE `tenant_complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenant_image_upload`
--
ALTER TABLE `tenant_image_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenant_registration`
--
ALTER TABLE `tenant_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenant_registration_manager_email`
--
ALTER TABLE `tenant_registration_manager_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenant_registration_without_image`
--
ALTER TABLE `tenant_registration_without_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `adding-bed-details`
--
ALTER TABLE `adding-bed-details`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adding-bed-details1`
--
ALTER TABLE `adding-bed-details1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `api_images`
--
ALTER TABLE `api_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buildings_under_pg_manager`
--
ALTER TABLE `buildings_under_pg_manager`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `configure_PG`
--
ALTER TABLE `configure_PG`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `create_PG`
--
ALTER TABLE `create_PG`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `manage_rooms`
--
ALTER TABLE `manage_rooms`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `manage_rooms_under_building`
--
ALTER TABLE `manage_rooms_under_building`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `pg_management`
--
ALTER TABLE `pg_management`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `setup_rooms_under_building`
--
ALTER TABLE `setup_rooms_under_building`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `tbl_register_pg_manager`
--
ALTER TABLE `tbl_register_pg_manager`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_vacated_tenant`
--
ALTER TABLE `tbl_vacated_tenant`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `tb_data`
--
ALTER TABLE `tb_data`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tenant_complaints`
--
ALTER TABLE `tenant_complaints`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tenant_image_upload`
--
ALTER TABLE `tenant_image_upload`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tenant_registration`
--
ALTER TABLE `tenant_registration`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `tenant_registration_manager_email`
--
ALTER TABLE `tenant_registration_manager_email`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT for table `tenant_registration_without_image`
--
ALTER TABLE `tenant_registration_without_image`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
