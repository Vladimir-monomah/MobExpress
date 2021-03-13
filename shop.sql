-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 13 2021 г., 18:31
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext DEFAULT NULL,
  `phone` longtext DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `email` longtext DEFAULT NULL,
  `password` longtext DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `phone`, `address`, `email`, `password`, `role`, `timestamp`) VALUES
(1, 'Айнур Гизатуллин', '', '', 'admin@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '1', '1584335119'),
(2, 'Mr. Accountant', '017', 'Dhaka', 'accountant@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '4', '1430737266'),
(3, 'Mr Manager', '021525566', 'Niketon Dhaka', 'manager@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '6', '1433682938');

-- --------------------------------------------------------

--
-- Структура таблицы `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `page` longtext DEFAULT NULL,
  `place` longtext DEFAULT NULL,
  `num` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `link` longtext DEFAULT NULL,
  `image_ext` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `banner`
--

INSERT INTO `banner` (`banner_id`, `page`, `place`, `num`, `status`, `link`, `image_ext`) VALUES
(1, 'home', 'after_slider', '1', 'ok', '', '.jpg'),
(2, 'home', 'after_slider', '2', 'ok', '', '.jpg'),
(3, 'home', 'after_slider', '3', 'ok', '', '.jpg'),
(4, 'home', 'after_slider', '4', '0', '', '.jpg'),
(5, 'home', 'after_featured', '1', '0', '', NULL),
(6, 'home', 'after_featured', '2', '0', '', NULL),
(7, 'home', 'after_featured', '3', '0', '', NULL),
(8, 'home', 'after_featured', '4', '0', '', NULL),
(9, 'home', 'after_search', '1', '0', '', NULL),
(10, 'home', 'after_search', '2', '0', '', NULL),
(11, 'home', 'after_search', '3', '0', '', NULL),
(12, 'home', 'after_search', '4', '0', '', NULL),
(13, 'home', 'after_category', '1', '0', '', NULL),
(14, 'home', 'after_category', '2', '0', '', NULL),
(15, 'home', 'after_category', '3', '0', '', NULL),
(16, 'home', 'after_category', '4', '0', '', NULL),
(17, 'home', 'after_latest', '1', '0', '', NULL),
(18, 'home', 'after_popular', '1', '0', '', NULL),
(19, 'home', 'after_most_viewed', '1', '0', '', NULL),
(20, 'category', 'after_filters', '1', 'ok', '', NULL),
(21, 'featured', 'after_most_sold', '1', '0', '', NULL),
(22, 'featured', 'after_most_viewed', '1', '0', '', NULL),
(23, 'vendor_home', 'after_filter', '1', '', '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `summery` varchar(1000) DEFAULT NULL,
  `author` varchar(500) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `blog_category` varchar(25) DEFAULT NULL,
  `number_of_view` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`blog_id`, `title`, `summery`, `author`, `date`, `description`, `status`, `blog_category`, `number_of_view`) VALUES
(14, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry ', '                                    <p><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><br></p>', 'Mr Author', '2021-02-24', '                                    <p><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span removed]=\"text-align: justify;\">Lorem Ipsum</span><span removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><br></p>', NULL, '5', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `blog_category`
--

CREATE TABLE `blog_category` (
  `blog_category_id` int(11) NOT NULL,
  `name` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `blog_category`
--

INSERT INTO `blog_category` (`blog_category_id`, `name`) VALUES
(5, 'Наука и техника'),
(6, 'Электроника');

-- --------------------------------------------------------

--
-- Структура таблицы `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `name` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `logo` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `brand`
--

INSERT INTO `brand` (`brand_id`, `name`, `description`, `logo`) VALUES
(59, 'Asus', NULL, 'brand_59.jpg'),
(60, 'HP', NULL, 'brand_60.jpg'),
(61, 'Dell', NULL, 'brand_61.jpg'),
(62, 'Intel', NULL, 'brand_62.jpg'),
(63, 'Apple', NULL, 'brand_63.jpg'),
(64, 'Acer', NULL, 'brand_64.jpg'),
(142, 'Sony', NULL, 'brand_142.png'),
(143, 'Canon', NULL, 'brand_143.png'),
(144, 'Nikon', NULL, 'brand_144.jpg'),
(167, 'Samsung', NULL, 'brand_167.jpg'),
(168, 'LG', NULL, 'brand_168.jpg'),
(169, 'HTC', NULL, 'brand_169.jpg'),
(170, 'Huawei', NULL, 'brand_170.jpg'),
(172, 'Nokia', NULL, 'brand_172.jpg'),
(176, 'Makita', NULL, 'brand_176.jpg'),
(178, 'Bosch', NULL, 'brand_178.jpg'),
(181, 'Lenovo', NULL, 'brand_181.jpg'),
(182, 'Microsoft', NULL, 'brand_182.jpg'),
(183, 'Pentax', NULL, 'brand_183.'),
(184, 'Olympus', NULL, 'brand_184.jpg'),
(185, 'Fujifilm', NULL, 'brand_185.jpg'),
(261, 'Spigen', NULL, 'brand_261.jpg'),
(262, 'Belkin', NULL, 'brand_262.jpg'),
(263, 'Kingston', NULL, 'brand_263.jpg'),
(264, 'Sandisk', NULL, 'brand_264.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `bundle_stock`
--

CREATE TABLE `bundle_stock` (
  `stock_id` int(11) NOT NULL,
  `type` longtext DEFAULT NULL,
  `product_bundle` longtext DEFAULT NULL,
  `quantity` longtext DEFAULT NULL,
  `rate` longtext DEFAULT NULL,
  `total` longtext DEFAULT NULL,
  `reason_note` longtext DEFAULT NULL,
  `datetime` longtext DEFAULT NULL,
  `sale_id` varchar(30) DEFAULT NULL,
  `added_by` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bundle_stock`
--

INSERT INTO `bundle_stock` (`stock_id`, `type`, `product_bundle`, `quantity`, `rate`, `total`, `reason_note`, `datetime`, `sale_id`, `added_by`) VALUES
(1, 'add', '101', '4', '999.00', '3996', '', '1521357279', NULL, NULL),
(2, 'destroy', '101', '5', NULL, '4995', '', '1521357287', NULL, NULL),
(3, 'add', '102', '9', '120.00', '1080', '', '1521606561', NULL, NULL),
(4, 'destroy', '102', '2', NULL, '240', '', '1521610522', NULL, NULL),
(5, 'add', '102', '12', '120.00', '1440', '', '1521616802', NULL, NULL),
(6, 'add', '123', '30', '14.99', '449.7', '', '1522921498', NULL, NULL),
(7, 'add', '122', '20', '80.00', '1600', '', '1522921821', NULL, NULL),
(8, 'add', '121', '15', '499.00', '7485', '', '1522922093', NULL, NULL),
(9, 'add', '120', '11', '1199.00', '13189', '', '1522922900', NULL, NULL),
(10, 'add', '118', '29', '39.99', '1159.71', '', '1522923029', NULL, NULL),
(11, 'add', '117', '39', '249.99', '9749.61', '', '1522923088', NULL, NULL),
(12, 'add', '116', '11', '15.99', '175.89000000000001', '', '1522923244', NULL, NULL),
(13, 'add', '119', '30', '1099.00', '32970', '', '1522923499', NULL, NULL),
(14, 'add', '115', '49', '25.59', '1253.91', '', '1522923556', NULL, NULL),
(15, 'add', '114', '49', '139.00', '6811', '', '1522923574', NULL, NULL),
(16, 'add', '102', '80', '24.99', '1999.1999999999998', '', '1522923749', NULL, NULL),
(17, 'add', '113', '30', '15.00', '450', '', '1522923771', NULL, NULL),
(18, 'add', '126', '50', '23.00', '1150', '', '1523942068', NULL, NULL),
(19, 'add', '163', '20', '7000.00', '140000', '', '1524845958', NULL, NULL),
(20, 'add', '163', '22', '7000.00', '154000', 'nothing', '1524904062', NULL, NULL),
(21, 'destroy', '163', '2', NULL, '14000', '', '1524905432', NULL, NULL),
(22, 'destroy', '163', '2', NULL, '14000', '', '1524910766', NULL, NULL),
(23, 'add', '179', '500', '99.00', '49500', '', '1530436948', NULL, NULL),
(24, 'add', '123', '500', '300.00', '150000', '', '1531643194', NULL, NULL),
(25, 'add', '122', '500', '80.00', '40000', '', '1531643204', NULL, NULL),
(26, 'add', '121', '100', '499.00', '49900', '', '1531643213', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `business_settings`
--

CREATE TABLE `business_settings` (
  `business_settings_id` int(11) NOT NULL,
  `type` longtext DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `business_settings`
--

INSERT INTO `business_settings` (`business_settings_id`, `type`, `status`, `value`) VALUES
(1, 'paypal_email', 'ok', 'paypal@mail.com'),
(2, 'shipping_cost', 'ok', '10'),
(3, 'shipping_cost_type', '', 'product_wise'),
(4, 'currency', '', '21'),
(6, 'shipment_info', '', '                                    <p><span xss=\"removed\"> </span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p><p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p><p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p><p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p><p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p><p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(7, 'currency_name', '', 'Dollar'),
(8, 'exchange', '', '80'),
(9, 'paypal_set', '', NULL),
(10, 'paypal_type', '', 'sandbox'),
(11, 'faqs', '', '[{\"question\":\"How to install the script?\",\"answer\":\"<p open=\\\"\\\" sans\\\",=\\\"\\\" roboto,=\\\"\\\" \\\"helvetica=\\\"\\\" neue\\\",=\\\"\\\" helvetica,=\\\"\\\" arial,=\\\"\\\" sans-serif;=\\\"\\\" font-size:=\\\"\\\" 16px;=\\\"\\\" text-align:=\\\"\\\" justify;=\\\"\\\" line-height:=\\\"\\\" 1.4;\\\"=\\\"\\\" style=\\\"padding: 0px;\\\"><span id=\\\"docs-internal-guid-f5a12cba-cd69-9b16-f96d-28e5d9a3f80f\\\" style=\\\"\\\">Please follow the following procedure to install this script in local or, online server:<\\/span><\\/p><p open=\\\"\\\" sans\\\",=\\\"\\\" roboto,=\\\"\\\" \\\"helvetica=\\\"\\\" neue\\\",=\\\"\\\" helvetica,=\\\"\\\" arial,=\\\"\\\" sans-serif;=\\\"\\\" font-size:=\\\"\\\" 16px;=\\\"\\\" text-align:=\\\"\\\" justify;=\\\"\\\" line-height:=\\\"\\\" 1.4;\\\"=\\\"\\\" style=\\\"margin-bottom: 24px; padding: 0px; text-align: justify;\\\"><span style=\\\"vertical-align: baseline;\\\"><\\/span><\\/p><ol open=\\\"\\\" sans\\\",=\\\"\\\" roboto,=\\\"\\\" \\\"helvetica=\\\"\\\" neue\\\",=\\\"\\\" helvetica,=\\\"\\\" arial,=\\\"\\\" sans-serif;=\\\"\\\" font-size:=\\\"\\\" 16px;=\\\"\\\" text-align:=\\\"\\\" justify;\\\"=\\\"\\\" style=\\\"padding: 0px; text-align: justify;\\\"><li style=\\\"line-height: 1.4;\\\">Upload the&nbsp;<span style=\\\"vertical-align: baseline;\\\">zip<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;&nbsp;file downloaded from CodeCanyon to your server in the public_html or, any other directory you intend the script to run.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Extract the&nbsp;<span style=\\\"vertical-align: baseline;\\\">zip&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">file in that directory.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Create a&nbsp;<span style=\\\"vertical-align: baseline;\\\">new database<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;from your server&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">MySQL<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;with&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">PhpMyAdmin<\\/span><span style=\\\"vertical-align: baseline;\\\">.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Create&nbsp;<span style=\\\"vertical-align: baseline;\\\">db user<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;to the database and link that database to the&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">db user<\\/span><span style=\\\"vertical-align: baseline;\\\">.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Go to the URL of the unzipped folder.<br><\\/li><li style=\\\"line-height: 1.4;\\\">Make sure the required files are permitted&nbsp;<span style=\\\"vertical-align: baseline;\\\">writeable<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;in the folder you put them and all the requirements are fulfilled by the server environment.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Fill up these Installation form with your&nbsp;<span style=\\\"vertical-align: baseline;\\\">database hostname<\\/span><span style=\\\"vertical-align: baseline;\\\">,&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">database username<\\/span><span style=\\\"vertical-align: baseline;\\\">, &nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">database password<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;and&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">database name<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;respectively which you have created in the previous step.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Provide your default admin credentials in the form.<br><\\/li><li style=\\\"line-height: 1.4;\\\">Click on \\u201c<span style=\\\"vertical-align: baseline;\\\">Install Supershop<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u201d and wait for the installation to complete.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Links to \\u201c<span style=\\\"vertical-align: baseline;\\\">Activation Form<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u201d, \\\"Admin Panel and the \\\"Frontend\\\" of the site will appear. First, activate the license for your online domain and then browse in it. Admin login URL will be&nbsp;your_site\\/index.php\\/admin<\\/span><\\/li><\\/ol>\"},{\"question\":\"How to setup Business setup?\",\"answer\":\"<ol style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; text-align: justify;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: decimal; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Log into <\\/span><span style=\\\"vertical-align: baseline;\\\">Admin Panel<\\/span><span style=\\\"vertical-align: baseline;\\\">.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: decimal; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">From the <\\/span><span style=\\\"vertical-align: baseline;\\\">Navigation<\\/span><span style=\\\"vertical-align: baseline;\\\">, Go to <\\/span><span style=\\\"vertical-align: baseline;\\\">Vendor<\\/span><span style=\\\"vertical-align: baseline;\\\">.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: decimal; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">We have divided the whole Vendor Management into 3 parts to simplify the system so that anyone can understand the processes completely. These &nbsp;3 parts are described as Vendor List, Vendor Payments &amp; Vendor Packages.<\\/span><\\/p><\\/li><ol style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-alpha; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Vendor List: <\\/span><\\/p><\\/li><ol style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Total list of the vendors are shown in a table from where this list can be downloaded in pdf, xls or clv file format. Admin can search for any specific vendor from the search box available in the table.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">From the list Admin can view a short described profile of the vendors. Admin can approve newly registered vendors and can also postpone the vendors to log in.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Admin can pay to vendor a certain amount to money which are sold through the online payment methods. Admin will not pay to vendor for those products which are sold on cash on delivery method.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Admin can delete any vendor from the list.<\\/span><\\/p><\\/li><\\/ol><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-alpha; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Vendor Payments:<\\/span><\\/p><\\/li><ol style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">A list of vendors are shown who have upgraded their package.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Admin can check payment details.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Admin can delete any payment.<\\/span><\\/p><\\/li><\\/ol><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-alpha; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Vendor Package: <\\/span><span style=\\\"vertical-align: baseline;\\\">Admin can create, edit &amp; delete vendor packages from here. Admin can also download the package list in pdf, csv or xls file format and can search for specific vendor package. Process of creating a vendor package:<\\/span><\\/p><\\/li><ol style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Log in<\\/span><span style=\\\"vertical-align: baseline;\\\"> to the Admin Panel &nbsp;using email &amp; password.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">From the <\\/span><span style=\\\"vertical-align: baseline;\\\">Navigation<\\/span><span style=\\\"vertical-align: baseline;\\\">, go to <\\/span><span style=\\\"vertical-align: baseline;\\\">Vendor ? Vendor Package<\\/span><span style=\\\"vertical-align: baseline;\\\"> where you can see a table of <\\/span><span style=\\\"vertical-align: baseline;\\\">Vendor Package List <\\/span><span style=\\\"vertical-align: baseline;\\\">which are created before.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Above the vendor package list, click on the button named \\u2018<\\/span><span style=\\\"vertical-align: baseline;\\\">Create Vendorship<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u2019 to create the vendor package.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Fill up the form by giving the proper <\\/span><span style=\\\"vertical-align: baseline;\\\">title <\\/span><span style=\\\"vertical-align: baseline;\\\">of the vendor package, set the no. of <\\/span><span style=\\\"vertical-align: baseline;\\\">maximum products<\\/span><span style=\\\"vertical-align: baseline;\\\"> a vendor can upload of this package, define a <\\/span><span style=\\\"vertical-align: baseline;\\\">price<\\/span><span style=\\\"vertical-align: baseline;\\\"> of the package, set the <\\/span><span style=\\\"vertical-align: baseline;\\\">duration of expiration<\\/span><span style=\\\"vertical-align: baseline;\\\"> of the package and select a vendor package <\\/span><span style=\\\"vertical-align: baseline;\\\">seal<\\/span><span style=\\\"vertical-align: baseline;\\\">.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Click the \\u2018<\\/span><span style=\\\"vertical-align: baseline;\\\">Save<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u2019 button to create the vendor package.<\\/span><\\/p><\\/li><\\/ol><\\/ol><\\/ol><p style=\\\"margin-bottom: 24px; padding: 0px;\\\"><span style=\\\"vertical-align: baseline;\\\">The newly created package will be shown on the <\\/span><span style=\\\"vertical-align: baseline;\\\">Vendor Package List (<\\/span><span style=\\\"vertical-align: baseline;\\\">Vendor ? Vendor Package<\\/span><span style=\\\"vertical-align: baseline;\\\">)<\\/span><span style=\\\"vertical-align: baseline;\\\"> table where you can <\\/span><span style=\\\"vertical-align: baseline;\\\">Edit &amp; Delete<\\/span><span style=\\\"vertical-align: baseline;\\\"> the package.<\\/span><\\/p>\"},{\"question\":\"How to Purchase a Product?\",\"answer\":\"<ol style=\\\"padding: 0px; text-align: justify;\\\"><li style=\\\"line-height: 1.6;\\\">Click on the \\u2018<span style=\\\"vertical-align: baseline;\\\">Add to cart<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u2019 button of any product which you want to purchase.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">The products which are added to cart will be in the right side of middle header portion.<br><\\/li><li style=\\\"line-height: 1.6;\\\">From there, go to&nbsp;<span style=\\\"vertical-align: baseline;\\\">checkout<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;page.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">Log in<span style=\\\"vertical-align: baseline;\\\">&nbsp;to your account using authenticated email &amp; password or you can login through social media(facebook &amp; google plus). If you already logged in, follow the next step.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">In the checkout page, you can apply the&nbsp;<span style=\\\"vertical-align: baseline;\\\">coupon&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">if it is provided to you. Then click \\u2018<\\/span><span style=\\\"vertical-align: baseline;\\\">next<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u2019.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">Enter the address where you want to deliver your products. Then click \\u2018<span style=\\\"vertical-align: baseline;\\\">next<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u2019.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">Choose your&nbsp;<span style=\\\"vertical-align: baseline;\\\">payment method<\\/span><span style=\\\"vertical-align: baseline;\\\">. Then Place your order.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">Complete the payment using your paypal or stripe account.<br><\\/li><li style=\\\"line-height: 1.6;\\\">System will generate an&nbsp;<span style=\\\"vertical-align: baseline;\\\">invoice&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">for your purchase. You can print the invoice.<\\/span><\\/li><\\/ol>\"}]'),
(12, 'cash_set', '', 'no'),
(13, 'stripe_set', '', 'no'),
(14, 'stripe_secret', '', 'sk_test_NYIpPjs6gbmuogdwUuJ8She4'),
(15, 'stripe_publishable', '', 'pk_test_SuCjGKYkw5J5c0ZXvCfvX3zx'),
(16, 'home_def_currency', '', '21'),
(17, 'c2_set', NULL, 'no'),
(18, 'c2_user', NULL, '901378053'),
(19, 'c2_secret', NULL, '8677E1C0-7CB9-4D35-A513-05CA089B5E70'),
(20, 'c2_type', NULL, 'demo'),
(21, 'currency_format', NULL, 'french'),
(22, 'symbol_format', NULL, 'amount_s'),
(23, 'no_of_decimals', NULL, '2'),
(24, 'vp_set', NULL, 'no'),
(25, 'vp_merchant_id', NULL, 'DEMO'),
(26, 'pum_set', NULL, 'no'),
(27, 'pum_merchant_key', NULL, 'RR2LThlB'),
(28, 'pum_merchant_salt', NULL, '3M85o3dezx'),
(29, 'pum_account_type', NULL, 'sandbox'),
(30, 'commission_set', NULL, 'yes'),
(31, 'commission_amount', NULL, '30'),
(32, 'ssl_store_id', NULL, 'techr5affa68a7602c'),
(33, 'ssl_store_passwd', NULL, 'techr5affa68a7602c@ssl'),
(34, 'ssl_type', NULL, 'sandbox'),
(35, 'ssl_set', NULL, 'ok'),
(56, 'bitcoin_set', NULL, 'no'),
(57, 'bitcoin_coinpayments_merchant', NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `digital` varchar(10) DEFAULT NULL,
  `banner` longtext DEFAULT NULL,
  `data_brands` longtext DEFAULT NULL,
  `data_vendors` longtext DEFAULT NULL,
  `data_subdets` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `description`, `digital`, `banner`, `data_brands`, `data_vendors`, `data_subdets`) VALUES
(16, 'Электроника', NULL, NULL, 'category_16.jpg', '59:::Asus;;;;;;60:::HP;;;;;;63:::Apple;;;;;;142:::Sony;;;;;;167:::Samsung;;;;;;168:::LG;;;;;;170:::Huawei;;;;;;172:::Nokia;;;;;;176:::Makita;;;;;;178:::Bosch;;;;;;61:::Dell;;;;;;62:::Intel;;;;;;64:::Acer;;;;;;169:::HTC;;;;;;181:::Lenovo;;;;;;182:::Microsoft;;;;;;143:::Canon;;;;;;144:::Nikon;;;;;;183:::Pentax;;;;;;184:::Olympus;;;;;;185:::Fujifilm', '7:::Tony Stark;;;;;;16:::Carissa Newman', '[{\"sub_id\":\"81\",\"sub_name\":\"\\u0421\\u043e\\u0442\\u043e\\u0432\\u044b\\u0435 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u044b\",\"min\":210,\"max\":14093,\"brands\":\"59:::Asus;;;;;;60:::HP;;;;;;63:::Apple;;;;;;142:::Sony;;;;;;167:::Samsung;;;;;;168:::LG;;;;;;170:::Huawei;;;;;;172:::Nokia\"},{\"sub_id\":\"83\",\"sub_name\":\"\\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0430\",\"min\":12,\"max\":219,\"brands\":\"176:::Makita;;;;;;178:::Bosch\"},{\"sub_id\":\"85\",\"sub_name\":\"\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\",\"min\":1200,\"max\":2390,\"brands\":\"59:::Asus;;;;;;60:::HP;;;;;;61:::Dell;;;;;;62:::Intel;;;;;;63:::Apple;;;;;;64:::Acer;;;;;;168:::LG;;;;;;169:::HTC;;;;;;172:::Nokia\"},{\"sub_id\":\"86\",\"sub_name\":\"\\u041d\\u043e\\u0443\\u0442\\u0431\\u0443\\u043a\",\"min\":1000,\"max\":44500,\"brands\":\"59:::Asus;;;;;;60:::HP;;;;;;61:::Dell;;;;;;62:::Intel;;;;;;63:::Apple;;;;;;64:::Acer;;;;;;181:::Lenovo;;;;;;182:::Microsoft\"},{\"sub_id\":\"87\",\"sub_name\":\"\\u041d\\u0430\\u0441\\u0442\\u043e\\u043b\\u044c\\u043d\\u044b\\u0439 \\u041f\\u041a\",\"min\":29,\"max\":5000,\"brands\":\"59:::Asus;;;;;;60:::HP;;;;;;61:::Dell;;;;;;63:::Apple;;;;;;64:::Acer;;;;;;181:::Lenovo;;;;;;182:::Microsoft\"},{\"sub_id\":\"88\",\"sub_name\":\"\\u0417\\u0435\\u0440\\u043a\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u043a\\u0430\\u043c\\u0435\\u0440\\u0430\",\"min\":1000,\"max\":3500,\"brands\":\"142:::Sony;;;;;;143:::Canon;;;;;;144:::Nikon;;;;;;183:::Pentax;;;;;;184:::Olympus;;;;;;185:::Fujifilm\"}]'),
(23, 'Телефоны и аксессуары', NULL, NULL, 'category_23.jpg', '63:::Apple;;;;;;167:::Samsung;;;;;;169:::HTC;;;;;;261:::Spigen;;;;;;262:::Belkin;;;;;;263:::Kingston;;;;;;264:::Sandisk', '', '[{\"sub_id\":\"104\",\"sub_name\":\"\\u0413\\u043e\\u0440\\u044f\\u0447\\u0438\\u0435 \\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"min\":0,\"max\":0,\"brands\":\"63:::Apple;;;;;;167:::Samsung;;;;;;169:::HTC;;;;;;261:::Spigen;;;;;;262:::Belkin;;;;;;263:::Kingston;;;;;;264:::Sandisk\"},{\"sub_id\":\"105\",\"sub_name\":\"\\u0427\\u0435\\u0445\\u043b\\u044b \\u0438 \\u043e\\u0431\\u043b\\u043e\\u0436\\u043a\\u0438\",\"min\":0,\"max\":0,\"brands\":\"63:::Apple;;;;;;169:::HTC;;;;;;261:::Spigen;;;;;;262:::Belkin;;;;;;263:::Kingston;;;;;;264:::Sandisk\"}]');

-- --------------------------------------------------------

--
-- Структура таблицы `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('016lf78ksmks2l5nn18626qfsds7aon8', '::1', 1583394886, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333339343833393b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b757365725f6c6f67696e7c733a333a22796573223b757365725f69647c733a313a2237223b757365725f6e616d657c733a343a2244656d6f223b),
('3esfafj40m97kpl6t38kugh5em1134vn', '::1', 1583413341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333430363438343b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b6c6f67696e7c733a333a22796573223b76656e646f725f6c6f67696e7c733a333a22796573223b76656e646f725f69647c733a323a223130223b76656e646f725f6e616d657c733a31333a2244656e746f6e2048616e73656e223b7469746c657c733a363a2276656e646f72223b),
('48o344lv648uul09et2equd4a1u9223v', '::1', 1584346332, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343334323833363b6c6f67696e7c733a333a22796573223b76656e646f725f6c6f67696e7c733a333a22796573223b76656e646f725f69647c733a313a2233223b76656e646f725f6e616d657c733a333a22546f6d223b7469746c657c733a363a2276656e646f72223b),
('4a36hns9nrc5elvbcbj7psrfatg7kpl9', '::1', 1584346349, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343334323435373b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a31363a224d722e204d61737465722041646d696e223b7469746c657c733a353a2261646d696e223b757365725f6c6f67696e7c733a333a22796573223b757365725f69647c733a313a2237223b757365725f6e616d657c733a343a2244656d6f223b636f75706f6e65727c733a303a22223b),
('6i6vl2rklk76kvgpbn5v123sq0h8tbt8', '::1', 1583413459, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333430373834313b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a31363a224d722e204d61737465722041646d696e223b7469746c657c733a353a2261646d696e223b636f75706f6e65727c733a303a22223b757365725f6c6f67696e7c733a333a22796573223b757365725f69647c733a313a2237223b757365725f6e616d657c733a343a2244656d6f223b),
('kjqq08kq7mr4h8if6djc9u96dibhsm3h', '::1', 1596702583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313539363730323533383b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a31363a224d722e204d61737465722041646d696e223b7469746c657c733a353a2261646d696e223b),
('uh3lhjppnknfeq0dp9vsr44kqigj1213', '192.168.1.106', 1583390723, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538333339303633383b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a323030303b733a31313a22746f74616c5f6974656d73223b643a323b733a31343a22746f74616c5f646973636f756e74223b693a303b733a31303a227365745f636f75706f6e223b693a303b733a33323a226264346339616237333066353531333230366239393965633064393064316662223b613a31313a7b733a323a226964223b733a333a22313631223b733a333a22717479223b643a323b733a363a226f7074696f6e223b733a33383a227b22636f6c6f72223a7b227469746c65223a22436f6c6f72222c2276616c7565223a22227d7d223b733a353a227072696365223b643a313030303b733a343a226e616d65223b733a31313a2244534c522043616d657261223b733a383a227368697070696e67223b693a303b733a333a22746178223b643a303b733a353a22696d616765223b733a37353a22687474703a2f2f3139322e3136382e312e3131352f73686f705f322e322f75706c6f6164732f70726f647563745f696d6167652f70726f647563745f3136315f325f7468756d622e6a7067223b733a363a22636f75706f6e223b733a303a22223b733a353a22726f776964223b733a33323a226264346339616237333066353531333230366239393965633064393064316662223b733a383a22737562746f74616c223b643a323030303b7d7d);

-- --------------------------------------------------------

--
-- Структура таблицы `contact_message`
--

CREATE TABLE `contact_message` (
  `contact_message_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL,
  `view` varchar(10) DEFAULT NULL,
  `reply` longtext DEFAULT NULL,
  `other` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `spec` varchar(1000) DEFAULT NULL,
  `added_by` varchar(300) DEFAULT NULL,
  `till` varchar(30) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `title`, `spec`, `added_by`, `till`, `code`, `status`) VALUES
(0, NULL, '{\"set_type\":null,\"set\":\"[]\",\"discount_type\":null,\"discount_value\":null,\"shipping_free\":null}', '{\"type\":\"admin\",\"id\":\"1\"}', NULL, NULL, 'ok');

-- --------------------------------------------------------

--
-- Структура таблицы `currency_settings`
--

CREATE TABLE `currency_settings` (
  `currency_settings_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `exchange_rate` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `exchange_rate_def` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `currency_settings`
--

INSERT INTO `currency_settings` (`currency_settings_id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `exchange_rate_def`) VALUES
(1, 'U.S. Dollar', '$', '1', 'ok', 'USD', '1'),
(2, 'Australian Dollar', '$', '1.2762', 'no', 'AUD', '1.2762'),
(5, 'Brazilian Real', 'R$', '3.238', 'no', 'BRL', '3.238'),
(6, 'Canadian Dollar', '$', '1.272', 'no', 'CAD', '1.272'),
(7, 'Czech Koruna', 'Kč', '20.647', 'no', 'CZK', '20.647'),
(8, 'Danish Krone', 'kr', '6.0532', 'no', 'DKK', '6.0532'),
(9, 'Euro', '€', '0.84861', 'no', 'EUR', '0.84861'),
(10, 'Hong Kong Dollar', '$', '7.754621877836503', 'no', 'HKD', '0.10504915484271037'),
(11, 'Hungarian Forint', 'Ft', '255.24', 'no', 'HUF', '255.24'),
(12, 'Israeli New Sheqel', '₪', '3.4812', 'no', 'ILS', '3.4812'),
(13, 'Japanese Yen', '¥', '107.12', 'no', 'JPY', '107.12'),
(14, 'Malaysian Ringgit', 'RM', '3.908', 'no', 'MYR', '3.908'),
(15, 'Mexican Peso', '$', '18.722', 'no', 'MXN', '18.722'),
(16, 'Norwegian Krone', 'kr', '7.8278', 'no', 'NOK', '7.8278'),
(17, 'New Zealand Dollar', '$', '1.3753', 'no', 'NZD', '1.3753'),
(18, 'Philippine Peso', '₱', '52.261', 'no', 'PHP', '52.261'),
(19, 'Polish Zloty', 'zł', '3.3875', 'no', 'PLN', '3.3875'),
(20, 'Pound Sterling', '£', '0.71864', 'no', 'GBP', '0.71864'),
(21, 'Russian Ruble', 'руб', '73.26037186539226', 'ok', 'RUB', '1'),
(22, 'Singapore Dollar', '$', '1.3198', 'no', 'SGD', '1.3198'),
(23, 'Swedish Krona', 'kr', '8.1945', 'no', 'SEK', '8.1945'),
(24, 'Swiss Franc', 'CHF', '0.93805', 'no', 'CHF', '0.93805'),
(26, 'Thai Baht', '฿', '31.39', 'no', 'THB', '1'),
(27, 'your_currency', '?', '1', 'no', '??', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `customer_product`
--

CREATE TABLE `customer_product` (
  `customer_product_id` int(11) NOT NULL,
  `rating_num` decimal(20,2) NOT NULL DEFAULT 0.00,
  `rating_total` int(11) NOT NULL DEFAULT 0,
  `rating_user` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `prod_condition` varchar(10) DEFAULT NULL,
  `location` longtext DEFAULT NULL,
  `sub_category` int(11) DEFAULT NULL,
  `num_of_imgs` varchar(100) DEFAULT NULL,
  `sale_price` decimal(20,2) NOT NULL DEFAULT 0.00,
  `add_timestamp` longtext DEFAULT NULL,
  `tag` longtext DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `admin_status` varchar(10) DEFAULT NULL,
  `front_image` longtext DEFAULT NULL,
  `brand` longtext DEFAULT NULL,
  `unit` longtext DEFAULT NULL,
  `additional_fields` longtext DEFAULT NULL,
  `number_of_view` int(11) NOT NULL DEFAULT 0,
  `discount` varchar(20) NOT NULL DEFAULT '0.00',
  `discount_type` longtext DEFAULT NULL,
  `tax` varchar(20) NOT NULL DEFAULT '0.00',
  `tax_type` longtext DEFAULT NULL,
  `color` longtext DEFAULT NULL,
  `options` longtext DEFAULT NULL,
  `main_image` varchar(100) NOT NULL DEFAULT '0',
  `update_time` longtext DEFAULT NULL,
  `last_viewed` int(200) DEFAULT NULL,
  `is_sold` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `email_template`
--

CREATE TABLE `email_template` (
  `email_template_id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `subject` longtext DEFAULT NULL,
  `body` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `email_template`
--

INSERT INTO `email_template` (`email_template_id`, `title`, `subject`, `body`) VALUES
(1, 'Password Reset Email', '', '                                            <p><span removed]=\"font-weight: bold;\"> [[to]],</span></p><p> [[account_type]]<br></p><p><span removed]=\"font-weight: bold;\">[[password]]</span></p><p><br></p><p><span removed]=\"\">[[from]]</span></p>'),
(2, 'Account Approval Email', '', '                                                                                        <p><span removed]=\"font-weight: bold;\"> [[to]],</span></p><p><span removed]=\"font-weight: bold;\">[[account_type]]</span></p><p><span removed]=\"font-weight: bold;\">Email : [[email]]</span></p><p><span removed]=\"font-weight: bold;\">[[status]]. </span></p><p><span removed]=\"font-weight: bold;\"><br></span></p><p><br></p><p><span removed]=\"\">[[from]]</span></p>'),
(7, 'Vendor Registration Email To Admin', '', '                                                                                        <p><br></p><p><span removed]=\"font-weight: bold;\"> [[vendor_name]]</span></p><p><span removed]=\"font-weight: bold;\">Email is : [[email]]</span></p><p><br></p><p><span removed]=\"font-weight: bold;\"><br></span></p><p><br></p><p><span removed]=\"\">[[from]]</span></p>'),
(3, 'Membership Upgrade Email', 'Membership Upgraded', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\">Your Membership Type is [[package]]. </span></p><p><span [removed]=\"font-weight: bold;\">Please contact with the </span>administrator team if you have any further question. Best wishes.</p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(4, 'Vendors Account Opening', 'Account Opening', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Thank you for registering at our site </span>[[sitename]]<span [removed]=\"font-weight: bold;\">. </span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\"></span></p><p><span [removed]=\"font-weight: bold;\">Password is : [[password]]</span></p><p><span [removed]=\"font-weight: bold;\">Your account is now being reviewed by </span>administration team. Please wait for Admin approval. You will get a  confirmation email soon and after that you will be able to login from here : [[url]]</p><p><span [removed]=\"font-weight: bold;\">Please contact with the </span>administration team if you have any further question. Best wishes.<br></p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(5, 'Users Account Opening', 'Account Opening', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Thank you for registering at our site&nbsp;</span>[[sitename]]<span [removed]=\"font-weight: bold;\">.</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\"></span></p><p><span [removed]=\"font-weight: bold;\">Password is : [[password]]</span></p><p>Login from here : [[url]]</p><p><span [removed]=\"font-weight: bold;\">Please contact with the&nbsp;</span>administration&nbsp;team if you have any further question. Best wishes.<br></p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(6, 'Admins Account Opening', 'Account Opening', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Thank you for joining at our site&nbsp;</span>[[sitename]]<span [removed]=\"font-weight: bold;\">.</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\"></span></p><p><span [removed]=\"font-weight: bold;\">Password is : [[password]]</span></p><p>Login from here : [[url]]</p><p>&nbsp;Best wishes.</p><p><br></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(9, 'Vendor Payment', 'Admin to Vendor Payment', '<p>Dear <span> [[vendor_name]] ,<br></span></p><p>You have received a new payment from <span>[[from]].</span></p><p><span [removed]=\"font-weight: bold;\">The Amount is : [[amount]].</span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(8, 'Vendor Package Upgrade', 'Vendor Package Upgrade ', '<p>A vendor has updated their package. Details are given below.<br></p><p><span [removed]=\"font-weight: bold;\">Vendor Name : [[vendor_name]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span><br><span [removed]=\"font-weight: bold;\"><span>Package Name is : [[vendor_package]]</span></span></p><p><span [removed]=\"font-weight: bold;\"><span><span>Package Amount&nbsp; is : [[package_amount]]</span></span></span></p><p><span [removed]=\"font-weight: bold;\">Please login to the admin panel to approve the vendor.</span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>');

-- --------------------------------------------------------

--
-- Структура таблицы `general_settings`
--

CREATE TABLE `general_settings` (
  `general_settings_id` int(11) NOT NULL,
  `type` longtext DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `general_settings`
--

INSERT INTO `general_settings` (`general_settings_id`, `type`, `value`) VALUES
(1, 'system_name', 'MobExpress CMS'),
(2, 'system_email', 'system@mail.com'),
(3, 'system_title', 'MobExpress CMS'),
(4, 'address', ''),
(5, 'phone', ''),
(6, 'language', 'lang_0'),
(9, 'terms_conditions', '<p>terms and conditions</p>'),
(10, 'fb_appid', '384144461995754'),
(11, 'fb_secret', 'e8be929ace6deaf50d2a717834a03cc4'),
(12, 'google_languages', '{}'),
(24, 'meta_description', 'Find the best products near you'),
(25, 'meta_keywords', 'Best shop,Near you'),
(26, 'meta_author', 'ActiveItZone'),
(27, 'captcha_public', NULL),
(28, 'captcha_private', NULL),
(29, 'application_name', ''),
(30, 'client_id', ''),
(31, 'client_secret', ''),
(32, 'redirect_uri', ''),
(33, 'api_key', 'e8be929ace6deaf50d2a717834a03cc4'),
(44, 'contact_about', '<p><ya data-index=\"201-0\" data-value=\"ша На\" data-translation=\"ша На\" data-type=\"trSpan\">Наша компания занимается продажей сотовых телефонов и электроники</ya></p>'),
(39, 'contact_phone', '89625716313'),
(40, 'contact_email', 'bugulma1337@yandex.ru'),
(41, 'contact_website', 'https://vk.com/agrss'),
(42, 'footer_text', '<p><ya data-index=\"204-0\" data-value=\"MobExpress-это такая платформа для создания рынка без границ как для физических, так и для цифровых товаров.\" data-translation=\"MobExpress-это такая платформа для создания рынка без границ как для физических, так и для цифровых товаров.\" data-type=\"trSpan\" data-selected=\"false\">MobExpress-это такая платформа для создания рынка без границ как для физических, так и для цифровых товаров.</ya></p>'),
(43, 'footer_category', '[\"16\",\"23\"]'),
(38, 'contact_address', 'РТ, г. Бугульма, ул. Ненастина 55'),
(45, 'admin_notification_sound', 'ok'),
(46, 'admin_notification_volume', '7.47'),
(47, 'privacy_policy', '<p>Privacy Policy</p>'),
(48, 'discus_id', ''),
(49, 'home_notification_sound', 'ok'),
(50, 'homepage_notification_volume', '7.36'),
(51, 'fb_login_set', 'no'),
(52, 'g_login_set', 'no'),
(53, 'slider', 'no'),
(54, 'revisit_after', '2'),
(55, 'default_member_product_limit', '5'),
(56, 'fb_comment_api', ''),
(57, 'comment_type', 'google'),
(58, 'vendor_system', 'ok'),
(59, 'cache_time', '0'),
(60, 'file_folder', 'jfkfkiriwnfjkmskdcsdfasaa'),
(62, 'slides', 'ok'),
(63, 'preloader', '13'),
(64, 'preloader_bg', 'rgba(74,0,94,1)'),
(65, 'preloader_obj', 'rgba(255,255,255,1)'),
(66, 'contact_lat_lang', '(40.7127837, -74.00594130000002)'),
(67, 'google_api_key', ''),
(68, 'physical_product_activation', 'ok'),
(69, 'digital_product_activation', 'ok'),
(70, 'data_all_brands', '59:::Asus;;;;;;60:::HP;;;;;;63:::Apple;;;;;;142:::Sony;;;;;;167:::Samsung;;;;;;168:::LG;;;;;;170:::Huawei;;;;;;172:::Nokia;;;;;;176:::Makita;;;;;;178:::Bosch;;;;;;61:::Dell;;;;;;62:::Intel;;;;;;64:::Acer;;;;;;169:::HTC;;;;;;181:::Lenovo;;;;;;182:::Microsoft;;;;;;143:::Canon;;;;;;144:::Nikon;;;;;;183:::Pentax;;;;;;184:::Olympus;;;;;;185:::Fujifilm;;;;;;261:::Spigen;;;;;;262:::Belkin;;;;;;263:::Kingston;;;;;;264:::Sandisk'),
(79, 'google_analytics_key', 'UA-117985671-1'),
(71, 'data_all_vendors', '1:::Lavinia Mckee;;;;;;3:::Tom;;;;;;5:::Youn;;;;;;7:::Tony Stark;;;;;;9:::Cheyenne Medina;;;;;;10:::Denton Hansen;;;;;;12:::Idona Snider;;;;;;16:::Carissa Newman;;;;;;19:::mevendor'),
(72, 'smtp_host', 'ssl://smtp.googlemail.com'),
(73, 'smtp_port', '465'),
(74, 'smtp_user', 'smtp@gmail.com'),
(75, 'smtp_pass', 'smtp password'),
(76, 'mail_status', 'mail'),
(77, 'captcha_status', 'no'),
(78, 'version', '2.5'),
(80, 'g_analytics_set', 'ok'),
(81, 'show_vendor_website', 'ok'),
(82, 'bundle_product_activation', 'ok'),
(83, 'customer_product_activation', 'ok'),
(84, 'wallet_system_set', 'ok'),
(85, 'guest_checkout_set', 'ok'),
(86, 'affiliation_validity', '30'),
(87, 'affiliation_point_to_currency_rate', '0.25'),
(88, 'product_affiliation_set', 'no'),
(89, 'facebook_pixel_set', 'no'),
(90, 'facebook_pixel_id', NULL),
(91, 'facebook_chat_set', 'no'),
(92, 'facebook_chat_page_id', ''),
(93, 'facebook_chat_theme_color', '#93a8ac'),
(94, 'facebook_chat_logged_in_greeting', 'Hello Sir?'),
(95, 'facebook_chat_logged_out_greeting', 'Thank You');

-- --------------------------------------------------------

--
-- Структура таблицы `language`
--

CREATE TABLE `language` (
  `word_id` int(11) NOT NULL,
  `word` longtext NOT NULL,
  `english` longtext DEFAULT NULL,
  `lang_0` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `language`
--

INSERT INTO `language` (`word_id`, `word`, `english`, `lang_0`) VALUES
(0, 'Войдите в свой аккаунт', 'Login to your account', 'Войдите в свой аккаунт'),
(1, 'visit_home_page', 'Visit Home Page', 'Посетите Домашнюю Страницу'),
(2, 'profile', 'Profile', 'Профиль'),
(3, 'logout', 'Logout', 'Выход'),
(4, 'manage_languages', 'Manage Languages', 'Управление Языками'),
(5, 'add_language', 'Add Language', 'Добавить Язык'),
(6, 'successfully_added!', 'Successfully Added!', 'Успешно Добавлено!'),
(7, 'back_to_language_list', 'Back To Language List', 'Вернуться К Списку Языков'),
(8, 'really_want_to_delete_this_language?', 'Really Want To Delete This Language?', 'Действительно Хотите Удалить Этот Язык? '),
(9, 'settings_updated!', 'Settings Updated!', 'Настройки Обновлены!'),
(10, 'do_you_really_want_to_delete_this_language?', 'Do You Really Want To Delete This Language?', 'Вы Действительно Хотите Удалить Этот Язык? '),
(11, 'saving..', 'Saving..', 'Сохранение...'),
(12, 'dashboard', 'Dashboard', 'Информационная панель'),
(13, 'products', 'Products', 'Продукты'),
(14, 'physical_products', 'Physical Products', 'Физические Продукты'),
(15, 'category', 'Category', 'Категория'),
(16, 'brands', 'Brands', 'Бренды'),
(17, 'sub-category', 'Sub-category', 'Подкатегория'),
(18, 'all_products', 'All Products', 'Все товары'),
(19, 'product_stock', 'Product Stock', 'Товарный Запас'),
(20, 'digital_products', 'Digital Products', 'Цифровые Продукты'),
(21, 'all_digitals', 'All Digitals', 'Все Цифровые Данные'),
(22, 'sale', 'Sale', 'Распродажа'),
(23, 'discount_coupon', 'Discount Coupon', 'Купон На Скидку'),
(24, 'ticket', 'Ticket', 'Билет'),
(25, 'reports', 'Reports', 'Отчеты'),
(26, 'product_compare', 'Product Compare', 'Сравнение Продуктов'),
(27, 'product_wishes', 'Product Wishes', 'Пожелания К Продукту'),
(28, 'vendors', 'Vendors', 'Поставщики'),
(29, 'vendor_list', 'Vendor List', 'Список Поставщиков'),
(30, 'vendor_payments', 'Vendor Payments', 'Платежи Поставщикам'),
(31, 'vendor_packages', 'Vendor Packages', 'Пакеты Поставщиков'),
(32, 'vendor\'s_slides', 'Vendor\'s Slides', 'Слайды поставщика'),
(33, 'customers', 'Customers', 'Клиенты'),
(34, 'messaging', 'Messaging', 'Обмен сообщениями'),
(35, 'newsletters', 'Newsletters', 'Информационные бюллетени'),
(36, 'contact_messages', 'Contact Messages', 'Контактные Сообщения'),
(37, 'blog', 'Blog', 'Блог'),
(38, 'blog_categories', 'Blog Categories', 'Категории Блогов'),
(39, 'all_blogs', 'All Blogs', 'Все блоги'),
(40, 'frontend_settings', 'Frontend Settings', 'Настройки Интерфейса'),
(41, 'slider_settings', 'Slider Settings', 'Настройки Слайдера'),
(42, 'layer_slider', 'Layer Slider', 'Ползунок Слоя'),
(43, 'top_slides', 'Top Slides', 'Верхние Слайды'),
(44, 'display_settings', 'Display Settings', 'Настройки Дисплея'),
(45, 'home_page', 'Home Page', 'Домашняя страница'),
(46, 'contact_page', 'Contact Page', 'Контактная страница'),
(47, 'footer', 'Footer', 'Нижний колонтитул'),
(48, 'theme_color', 'Theme Color', 'Цвет Темы'),
(49, 'logo', 'Logo', 'Логотип'),
(50, 'favicon', 'Favicon', 'Фавикон'),
(51, 'fonts', 'Fonts', 'Шрифты'),
(52, 'preloader', 'Preloader', 'Прелоадер'),
(53, 'site_settings', 'Site Settings', 'Настройки Сайта'),
(54, 'general_settings', 'General Settings', 'Общие Настройки'),
(55, 'third_party_settings', 'Third Party Settings', 'Настройки Сторонних Производителей'),
(56, 'build_responsive_pages', 'Build Responsive Pages', 'Создание Адаптивных Страниц'),
(57, 'set_default_images', 'Set Default Images', 'Установить Изображения По Умолчанию'),
(58, 'business_settings', 'Business Settings', 'Бизнес-Настройки'),
(59, 'activation', 'Activation', 'Активация'),
(60, 'payment_method', 'Payment Method', 'Способ оплаты'),
(61, 'currency_', 'Currency ', 'Валюта'),
(62, 'faqs', 'Faqs', 'Вопросы и ответы'),
(63, 'staffs', 'Staffs', 'Штабы'),
(64, 'all_staffs', 'All Staffs', 'Все Сотрудники'),
(65, 'staff_permissions', 'Staff Permissions', 'Разрешения Персонала'),
(66, 'language', 'Language', 'Язык'),
(67, 'manage_admin_profile', 'Manage Admin Profile', 'Управление Профилем Администратора'),
(68, 'activate', 'Activate', 'Активировать'),
(69, 'SEO_proggres', 'SEO Proggres', 'SEO Прогресс'),
(70, 'online_tutorial', 'Online Tutorial', 'Онлайн-Учебник'),
(71, 'checkout', 'Checkout', 'Оформить покупку'),
(72, 'deleted_successfully', 'Deleted Successfully', 'Удалено Успешно'),
(73, 'cancelled', 'Cancelled', 'Отмененный'),
(74, 'cancel', 'Cancel', 'Отмена'),
(75, 'required', 'Required', 'Требуемый'),
(76, 'must_be_a_number', 'Must Be A Number', 'Должно Быть Число'),
(77, 'must_be_a_valid_email_address', 'Must Be A Valid Email Address', 'Должен Быть Действительный Адрес Электронной Почты'),
(78, 'save', 'Save', 'Сохранить'),
(79, 'product_published!', 'Product Published!', 'Продукт Опубликован!'),
(80, 'product_unpublished!', 'Product Unpublished!', 'Продукт Не опубликован!'),
(81, 'product_featured!', 'Product Featured!', 'Рекомендуемый Продукт!'),
(82, 'product_unfeatured!', 'Product Unfeatured!', 'Продукт не имеет характеристик!'),
(83, 'product_in_todays_deal!', 'Product In Todays Deal!', 'Продукт В Сегодняшней Сделке!'),
(84, 'product_removed_from_todays_deal!', 'Product Removed From Todays Deal!', 'Продукт Удален Из Сегодняшней Сделки!'),
(85, 'slider_published!', 'Slider Published!', 'Слайдер Опубликован!'),
(86, 'slider_unpublished!', 'Slider Unpublished!', 'Слайдер Неопубликован!'),
(87, 'page_published!', 'Page Published!', 'Страница Опубликована!'),
(88, 'page_unpublished!', 'Page Unpublished!', 'Страница Неопубликована!'),
(89, 'notification_sound_enabled!', 'Notification Sound Enabled!', 'Звук Уведомления Включен!'),
(90, 'notification_sound_disabled!', 'Notification Sound Disabled!', 'Звук Уведомления Отключен!'),
(91, 'google_login_enabled!', 'Google Login Enabled!', 'Google Login Включен!'),
(92, 'google_login_disabled!', 'Google Login Disabled!', 'Google Login Отключен!'),
(93, 'facebook_login_enabled!', 'Facebook Login Enabled!', 'Вход В Систему Facebook Включен!'),
(94, 'facebook_login_disabled!', 'Facebook Login Disabled!', 'Вход В Facebook Отключен!'),
(95, 'paypal_payment_disabled!', 'Paypal Payment Disabled!', 'Оплата Paypal Отключена!'),
(96, 'paypal_payment_enabled!', 'Paypal Payment Enabled!', 'Оплата Paypal Включена!'),
(97, 'slider_enabled!', 'Slider Enabled!', 'Слайдер Включен!'),
(98, 'slider_disabled!', 'Slider Disabled!', 'Слайдер Отключен!'),
(99, 'cash_payment_enabled!', 'Cash Payment Enabled!', 'Оплата Наличными Включена!'),
(100, 'cash_payment_disabled!', 'Cash Payment Disabled!', 'Оплата Наличными Отключена!'),
(101, 'enabled!', 'Enabled!', 'Включен!'),
(102, 'disabled!', 'Disabled!', 'Выключен!'),
(103, 'notification_email_sent_to_vendor!', 'Notification Email Sent To Vendor!', 'Уведомление По Электронной Почте Отправлено Поставщику!'),
(104, 'working...', 'Working...', 'Работающий...'),
(105, 'no', 'No', 'НЕТ'),
(106, 'name', 'Name', 'Имя'),
(107, 'icon', 'Icon', 'Икона'),
(108, 'publish', 'Publish', 'Публиковать'),
(109, 'options', 'Options', 'Возможности'),
(110, 'language_enabled', 'Language Enabled', 'Язык Включен'),
(111, 'language_disabled', 'Language Disabled', 'Язык Отключен'),
(112, 'edit_language_list', 'Edit Language List', 'Изменить Список Языков'),
(113, 'successfully_edited!', 'Successfully Edited!', 'Успешно Отредактировано!'),
(114, 'set_translations', 'Set Translations', 'Набор Переводов'),
(115, 'edit_language', 'Edit Language', 'Язык Редактирования'),
(116, 'edit', 'Edit', 'Редактировать'),
(117, 'delete_language', 'Delete Language', 'Удалить Язык'),
(118, 'select_language', 'Select Language', 'Выберите Язык'),
(119, 'word', 'Word', 'Слово'),
(120, 'translation', 'Translation', 'Перевод'),
(121, 'translate', 'Translate', 'Переводить'),
(122, 'save_all', 'Save All', 'Сохранить Все'),
(123, 'saving', 'Saving', 'Экономия'),
(124, 'updated!', 'Updated!', 'Обновлено!'),
(125, 'really_want_to_delete_this_word?', 'Really Want To Delete This Word?', 'Действительно Хотите Удалить Это Слово?'),
(126, 'delete', 'Delete', 'Удалить'),
(127, 'home', 'Home', 'Главная'),
(128, 'subtotal', 'Subtotal', 'Промежуточный итог'),
(129, 'close', 'Close', 'Закрыть'),
(130, 'faq', 'Faq', 'Вопросы и ответы'),
(131, 'login', 'Login', 'Вход'),
(132, 'registration', 'Registration', 'Регистрация'),
(133, 'customer_registration', 'Customer Registration', 'Регистрация Клиентов'),
(134, 'vendor_registration', 'Vendor Registration', 'Регистрация Поставщика'),
(135, 'what_are_you_looking_for', 'What Are You Looking For', 'Что Ты Ищешь'),
(136, 'select', 'Select', 'Выбрать'),
(137, 'all_categories', 'All Categories', 'Все категории'),
(138, 'product', 'Product', 'Продукт'),
(139, 'vendor', 'Vendor', 'Продавец'),
(140, 'compare', 'Compare', 'Сравнить'),
(141, 'item(s)', 'Item(s)', 'Пункт(ы)'),
(142, 'homepage', 'Homepage', 'Домашняя страница'),
(143, 'all_sub_categories', 'All Sub Categories', 'Все Подкатегории'),
(144, 'featured_products', 'Featured Products', 'Рекомендуемые Продукты'),
(145, 'todays_deal', 'Todays Deal', 'Сегодняшняя Сделка'),
(146, 'all_brands', 'All Brands', 'Все Бренды'),
(147, 'all_vendors', 'All Vendors', 'Все Поставщики'),
(148, 'blogs', 'Blogs', 'Блоги'),
(149, 'store_locator', 'Store Locator', 'Поиск магазина'),
(150, 'contact', 'Contact', 'Контакты'),
(151, 'more', 'More', 'Еще'),
(152, 'latest_products', 'Latest Products', 'Новейшие Продукты'),
(153, 'more_categories', 'More Categories', 'Больше Категорий'),
(154, 'today\'s_deal', 'Today\'s Deal', 'Сегодняшняя сделка'),
(155, 'quick_view', 'Quick View', 'Быстрый просмотр'),
(156, 'search', 'Search', 'Поиск'),
(157, 'latest', 'Latest', 'Последние'),
(158, 'featured', 'Featured', 'Избранное'),
(159, 'discount', 'Discount', 'Скидка'),
(160, 'add_to_wishlist', 'Add To Wishlist', 'Добавить в пожелания'),
(161, 'add_to_cart', 'Add To Cart', 'добавить в корзину'),
(162, 'out_of_stock', 'Out Of Stock', 'нет в наличии'),
(163, 'visit', 'Visit', 'Посетить'),
(164, 'recently_viewed', 'Recently Viewed', 'Недавно Просмотренный'),
(165, 'most_viewed', 'Most Viewed', 'Самые просматриваемые'),
(166, 'our_available_brands', 'Our Available Brands', 'Наши Доступные Бренды'),
(167, 'email_address', 'Email Address', 'Эл. адрес'),
(168, 'subscribe', 'Subscribe', 'Подписка'),
(169, 'categories', 'Categories', 'Категории'),
(170, 'useful_links', 'Useful Links', 'Полезные Ссылки'),
(171, 'contact_us', 'Contact Us', 'Связаться с нами'),
(172, 'address', 'Address', 'Адрес'),
(173, 'phone', 'Phone', 'Телефон'),
(174, 'website', 'Website', 'Веб-сайт'),
(175, 'email', 'Email', 'Электронная почта'),
(176, 'all_rights_reserved', 'All Rights Reserved', 'Все права защищены'),
(177, 'terms_&_condition', 'Terms & Condition', 'Условия И Положения'),
(178, 'privacy_policy', 'Privacy Policy', 'Политика конфиденциальности'),
(179, 'product_added_to_cart', 'Product Added To Cart', 'Добавлено В Корзину'),
(180, 'added_to_cart', 'Added To Cart', 'Добавлено В Корзину'),
(181, 'product_quantity_exceed_availability!', 'Product Quantity Exceed Availability!', 'Количество Продукта Превышает Доступность!'),
(182, 'product_already_added_to_cart!', 'Product Already Added To Cart!', 'Товар Уже Добавлен В Корзину!'),
(183, 'product_added_to_wishlist', 'Product Added To Wishlist', 'Продукт Добавлен В Список Желаний'),
(184, 'wished', 'Wished', 'Пожелал'),
(185, 'wishing..', 'Wishing..', 'Желающий..'),
(186, 'product_removed_from_wishlist', 'Product Removed From Wishlist', 'Продукт Удален Из Списка Желаний'),
(187, 'product_added_to_compared', 'Product Added To Compared', 'Продукт, Добавленный К Сравниваемому'),
(188, 'compared', 'Compared', 'Сравненный'),
(189, 'working..', 'Working..', 'Работающий..'),
(190, 'product_removed_from_compare', 'Product Removed From Compare', 'Продукт Удален Из Сравнения'),
(191, 'compare_category_full', 'Compare Category Full', 'Сравните полную категорию'),
(192, 'product_already_added_to_compare', 'Product Already Added To Compare', 'Продукт Уже Добавлен Для Сравнения'),
(193, 'product_rated_successfully', 'Product Rated Successfully', 'Продукт Получил Успешную Оценку'),
(194, 'product_rating_failed', 'Product Rating Failed', 'Оценка Продукта Не Удалась'),
(195, 'you_already_rated_this_product', 'You Already Rated This Product', 'Вы Уже Оценили Этот Продукт'),
(196, 'you_already_subscribed', 'You Already Subscribed', 'Вы Уже Подписались'),
(197, 'you_subscribed_successfully', 'You Subscribed Successfully', 'Вы Успешно Подписались'),
(198, 'you_already_subscribed_thrice_from_this_browser', 'You Already Subscribed Thrice From This Browser', 'Вы Уже Подписались Трижды Из Этого Браузера'),
(199, 'logging_in..', 'Logging In..', 'Вход В Систему..'),
(200, 'you_logged_in_successfully', 'You Logged In Successfully', 'Вы Успешно Вошли В Систему'),
(201, 'login_failed!_try_again!', 'Login Failed! Try Again!', 'Войти Не Удалось! Попробуй Еще Раз!'),
(202, 'you_registered_successfully', 'You Registered Successfully', 'Вы Успешно Зарегистрировались'),
(203, 'registration_failed!_try_again!', 'Registration Failed! Try Again!', 'Регистрация Не Удалась! Попробуй Еще Раз!'),
(204, 'submitting..', 'Submitting..', 'Предоставление..'),
(205, 'email_sent_successfully', 'Email Sent Successfully', 'Электронная Почта Отправлена Успешно'),
(206, 'email_does_not_exist!', 'Email Does Not Exist!', 'Электронная Почта Не Существует!'),
(207, 'email_sending_failed!_try_again', 'Email Sending Failed! Try Again', 'Отправка Электронной Почты Не Удалась! пробовать снова'),
(208, 'logging_in', 'Logging In', 'Вход В Систему'),
(209, 'adding_to_cart..', 'Adding To Cart..', 'Добавление В Корзину..'),
(210, 'product_removed_from_cart', 'Product Removed From Cart', 'Продукт, Извлеченный Из Корзины'),
(211, 'the_field_is_required', 'The Field Is Required', 'Поле обязательно для заполнения'),
(212, 'enter_a_valid_email_address', 'Enter A Valid Email Address', 'Введите Действительный Адрес Электронной Почты'),
(213, 'applying..', 'Applying..', 'Обратившийся..'),
(214, 'coupon_not_valid', 'Coupon Not Valid', 'Купон Не Действителен'),
(215, 'coupon_discount_successful', 'Coupon Discount Successful', 'Купон Скидка Успешная'),
(216, 'favored', 'Favored', 'Фавориты'),
(217, 'successful_login', 'Successful Login', 'Успешный Вход В Систему'),
(218, 'login_failed', 'Login Failed', 'ошибка входа'),
(219, 'sign_in_to_your_account', 'Sign In To Your Account', 'Войдите В Свой Аккаунт'),
(220, 'password', 'Password', 'Пароль'),
(221, 'forget_password', 'Forget Password', 'Забыть Пароль'),
(222, 'email_sent_with_new_password!', 'Email Sent With New Password!', 'Письмо Отправлено С Новым Паролем!'),
(223, 'forgot_password', 'Forgot Password', 'Я забыл пароль'),
(224, 'sign_in', 'Sign In', 'Вход'),
(225, 'this_field_is_required', 'This Field Is Required', 'это поле является обязательным'),
(226, 'signing_in...', 'Signing In...', 'Вход В Систему...'),
(227, 'new_password_sent_to_your_email', 'New Password Sent To Your Email', 'Новый Пароль Отправлен На Ваш Электронный Адрес'),
(228, 'login_failed!', 'Login Failed!', 'Войти Не Удалось!'),
(229, 'wrong_e-mail_address!_try_again', 'Wrong E-mail Address! Try Again', 'Неверный адрес электронной почты! пробовать снова'),
(230, 'login_successful!', 'Login Successful!', 'Вход В Систему Успешен!'),
(231, 'SUCCESS!', 'SUCCESS!', 'Успех!'),
(232, 'reset_password', 'Reset Password', 'сброс пароля'),
(233, 'account_not_approved._wait_for_approval.', 'Account Not Approved. Wait For Approval.', 'Аккаунт Не Утвержден. Ждите Одобрения.'),
(234, '24_hours_stock', '24 Hours Stock', 'Запас за 24 часа'),
(235, '24_hours_sale', '24 Hours Sale', 'Продажи за 24 часа'),
(236, '24_hours_destroy', '24 Hours Destroy', 'Убыль за 24 часа'),
(237, 'total_vendors', 'Total Vendors', 'Всего Поставщиков'),
(238, 'pending_vendors', 'Pending Vendors', 'Ожидающие Поставщики'),
(239, 'vendor_stattistics', 'Vendor Stattistics', 'Статистика Поставщика'),
(240, 'category_wise_monthly_stock', 'Category Wise Monthly Stock', 'Категория ежемесячного запаса'),
(241, 'category_wise_monthly_destroy', 'Category Wise Monthly Destroy', 'Категория ежемесячной убыли'),
(242, 'category_wise_monthly_sale', 'Category Wise Monthly Sale', 'Категория ежемесячной распродажи'),
(243, 'category_wise_monthly_grand_profit', 'Category Wise Monthly Grand Profit', 'Категория Ежемесячной Прибыли'),
(244, 'cost', 'Cost', 'Стоимость'),
(245, 'value', 'Value', 'Ценность'),
(246, 'loss', 'Loss', 'Потеря'),
(247, 'profit', 'Profit', 'Прибыль'),
(248, 'manage_categories_(_physical_product_)', 'Manage Categories ( Physical Product )', 'Управление Категориями ( Физический Продукт )'),
(249, 'add_category_(_physical_product_)', 'Add Category ( Physical Product )', 'Добавить Категорию ( Физический Продукт )'),
(250, 'create_category', 'Create Category', 'Создать Категорию'),
(251, 'banner', 'Banner', 'Баннер'),
(252, 'edit_category_(_physical_product_)', 'Edit Category ( Physical Product )', 'Редактировать Категорию ( Физический Продукт )'),
(253, 'really_want_to_delete_this?', 'Really Want To Delete This?', 'Действительно Хотите Удалить Это?'),
(254, 'category_name', 'Category Name', 'Название Категории'),
(255, 'category_banner', 'Category Banner', 'Баннер Категории'),
(256, 'select_category_banner', 'Select Category Banner', 'Выберите Баннер Категории'),
(257, 'manage_brands_(_physical_product_)', 'Manage Brands ( Physical Product )', 'Управление Брендами ( Физическим Продуктом )'),
(258, 'add_brand_(_physical_product_)', 'Add Brand ( Physical Product )', 'Добавить Бренд ( Физический Продукт )'),
(259, 'create_brand', 'Create Brand', 'Создание Бренда'),
(260, 'edit_brand_(_physical_product_)', 'Edit Brand ( Physical Product )', 'Редактировать Бренд ( Физический Продукт )'),
(261, 'brand', 'Brand', 'Бренд'),
(262, 'brand_name', 'Brand Name', 'торговая марка'),
(263, 'brand_logo', 'Brand Logo', 'Логотип Бренда'),
(264, 'select_brand_logo', 'Select Brand Logo', 'Выберите Логотип Бренда'),
(265, 'manage_sub_categories_(_physical_product_)', 'Manage Sub Categories ( Physical Product )', 'Управление Подкатегориями (Физический Продукт )'),
(266, 'add_sub-category_(_physical_product_)', 'Add Sub-category ( Physical Product )', 'Добавить подкатегорию ( физический продукт )'),
(267, 'create_sub_category', 'Create Sub Category', 'Создать Подкатегорию'),
(268, 'edit_sub-category_(_physical_product_)', 'Edit Sub-category ( Physical Product )', 'Редактировать подкатегорию ( физический продукт )'),
(269, 'sub_category', 'Sub Category', 'Подкатегория'),
(270, 'sub-category_name', 'Sub-category Name', 'Название подкатегории'),
(271, 'sub-category_banner', 'Sub-category Banner', 'Баннер подкатегории'),
(272, 'select_sub-category_banner', 'Select Sub-category Banner', 'Выберите баннер подкатегории'),
(273, 'manage_product_stock', 'Manage Product Stock', 'Управление Запасами Продукции'),
(274, 'destroy_product_entry', 'Destroy Product Entry', 'Уничтожить Запись Продукта'),
(275, 'add_stock_entry_taken!', 'Add Stock Entry Taken!', 'Добавьте Взятую Запись Запаса!'),
(276, 'add_product_stock', 'Add Product Stock', 'Добавить Товарный Запас'),
(277, 'destroy_entry_taken!', 'Destroy Entry Taken!', 'Уничтожьте Захваченный Вход!'),
(278, 'create_stock', 'Create Stock', 'Создать Запас'),
(279, 'ID', 'ID', 'ID'),
(280, 'product_title', 'Product Title', 'Название Продукта'),
(281, 'entry_type', 'Entry Type', 'Тип Записи'),
(282, 'quantity', 'Quantity', 'Количество'),
(283, 'note', 'Note', 'Примечание'),
(284, 'reduced_quantity_will_be_added.', 'Reduced Quantity Will Be Added.', 'Будет Добавлено Уменьшенное Количество.'),
(285, 'added_quantity_will_be_reduced.', 'Added Quantity Will Be Reduced.', 'Добавленное Количество Будет Уменьшено.'),
(286, 'rate', 'Rate', 'Оценить'),
(287, 'total', 'Total', 'Весь'),
(288, 'reason_note', 'Reason Note', 'Примечание Причины'),
(289, 'monetary_loss', 'Monetary Loss', 'Денежные Потери'),
(290, 'manage_categories_(_digital_product_)', 'Manage Categories ( Digital Product )', 'Управление Категориями ( Цифровой Продукт )'),
(291, 'add_category_(_digital_product_)', 'Add Category ( Digital Product )', 'Добавить Категорию ( Цифровой Продукт )'),
(292, 'edit_category_(_digital_product_)', 'Edit Category ( Digital Product )', 'Редактировать Категорию ( Цифровой Продукт )'),
(293, 'manage_sub_categories_(_digital_product_)', 'Manage Sub Categories ( Digital Product )', 'Управление Подкатегориями ( Цифровой Продукт )'),
(294, 'add_sub-category_(_digital_product_)', 'Add Sub-category ( Digital Product )', 'Добавить подкатегорию ( цифровой продукт )'),
(295, 'edit_sub-category_(_digital_product_)', 'Edit Sub-category ( Digital Product )', 'Редактировать подкатегорию ( цифровой продукт )'),
(296, 'manage_product_(_digital_)', 'Manage Product ( Digital )', 'Управление Продуктом ( Цифровой )'),
(297, 'add_product', 'Add Product', 'Добавить Продукт'),
(298, 'create_product', 'Create Product', 'Создание Продукта'),
(299, 'back_to_product_list', 'Back To Product List', 'Вернуться К Списку Продуктов'),
(300, 'download_failed!', 'Download Failed!', 'Скачать Не Удалось!'),
(301, 'image', 'Image', 'Изображение'),
(302, 'title', 'Title', 'Название'),
(303, 'view_product', 'View Product', 'Просмотр Продукта'),
(304, 'successfully_viewed!', 'Successfully Viewed!', 'Удачно Просматривается!'),
(305, 'view', 'View', 'Вид'),
(306, 'view_discount', 'View Discount', 'Посмотреть Скидку'),
(307, 'viewing_discount!', 'Viewing Discount!', 'Просмотр Скидки!'),
(308, 'download', 'Download', 'Скачать'),
(309, 'edit_product_(_digital_product_)', 'Edit Product ( Digital Product )', 'Редактировать Продукт ( Цифровой Продукт )'),
(310, 'manage_sale', 'Manage Sale', 'Управление Продажей'),
(311, 'sale_code', 'Sale Code', 'Код Продажи'),
(312, 'buyer', 'Buyer', 'Покупатель'),
(313, 'date', 'Date', 'Дата'),
(314, 'delivery_status', 'Delivery Status', 'Статус Доставки'),
(315, 'payment_status', 'Payment Status', 'Статус Платежа'),
(316, 'admin', 'Admin', 'Администратор'),
(317, 'full_invoice', 'Full Invoice', 'Полный Счет-Фактура'),
(318, 'delivery_payment', 'Delivery Payment', 'Оплата Доставки'),
(319, 'sales', 'Sales', 'Продажи'),
(320, 'manage_coupons', 'Manage Coupons', 'Управление Купонами'),
(321, 'add_coupon', 'Add Coupon', 'Добавить Купон'),
(322, 'create_coupon', 'Create Coupon', 'Создать Купон'),
(323, 'code', 'Code', 'Код'),
(324, 'added_by', 'Added By', 'Добавлено Автором'),
(325, 'status', 'Status', 'Статус'),
(326, 'coupon', 'Coupon', 'Купон'),
(327, 'manage_ticket', 'Manage Ticket', 'Управление Билетом'),
(328, 'back_to_ticket_list', 'Back To Ticket List', 'Вернуться К Списку Билетов'),
(329, 'from', 'From', 'От'),
(330, 'subject', 'Subject', 'Предмет'),
(331, 'view_profile', 'View Profile', 'Посмотреть профиль'),
(332, 'new', 'New', 'НОВОЕ'),
(333, 'view_contact_ticket', 'View Contact Ticket', 'Просмотр Контактного Билета'),
(334, 'view_ticket', 'View Ticket', 'Просмотр Билета'),
(335, 'product_sale_comparison', 'Product Sale Comparison', 'Сравнение Продаж Продукции'),
(336, 'product_sale_comparison_report', 'Product Sale Comparison Report', 'Отчет О Сравнении Продаж Продукции'),
(337, 'manage_stock_report', 'Manage Stock Report', 'Управление Отчетом О Запасах'),
(338, 'get_stock_report', 'Get Stock Report', 'Получить Биржевой Отчет'),
(339, 'product_wishes_report', 'Product Wishes Report', 'Отчет О Пожеланиях Продукта'),
(340, 'manage_vendors', 'Manage Vendors', 'Управление Поставщиками'),
(341, 'display_name', 'Display Name', 'отображаемое имя'),
(342, 'vendor_approval', 'Vendor Approval', 'Утверждение Поставщика'),
(343, 'approval', 'Approval', 'Утверждение'),
(344, 'pay_vendor', 'Pay Vendor', 'Оплата Поставщику'),
(345, 'pay', 'Pay', 'Оплатить'),
(346, 'e-mail', 'E-mail', 'Электронная почта'),
(347, 'manage_vendor_payments', 'Manage Vendor Payments', 'Управление Платежами Поставщиков'),
(348, 'amount', 'Amount', 'Сумма'),
(349, 'upgraded_vendor_package', 'Upgraded Vendor Package', 'Обновленный Пакет Поставщиков'),
(350, 'view_payment_details', 'View Payment Details', 'Просмотр Платежных Реквизитов'),
(351, 'check_details', 'Check Details', 'Проверьте Детали'),
(352, 'membership_payments', 'Membership Payments', 'Членские Взносы'),
(353, 'upgraded_membership', 'Upgraded Membership', 'Повышенное Членство'),
(354, 'manage_vendor_package', 'Manage Vendor Package', 'Управление Пакетом Поставщиков'),
(355, 'add_vendor_package', 'Add Vendor Package', 'Добавить Пакет Поставщика'),
(356, 'create_vendor_package', 'Create Vendor Package', 'Создание Пакета Поставщика'),
(357, 'seal', 'Seal', 'Печать'),
(358, 'price', 'Price', 'Цена'),
(359, 'for', 'For', 'Для'),
(360, 'lifetime', 'Lifetime', 'Продолжительность жизни'),
(361, 'edit_vendor_package', 'Edit Vendor Package', 'Изменить Пакет Поставщика'),
(362, 'days', 'Days', 'Дни'),
(363, 'membership', 'Membership', 'Членство'),
(364, 'manage_product_(_physical_)', 'Manage Product ( Physical )', 'Управление Продуктом (Физическим )'),
(365, 'current_quantity', 'Current Quantity', 'Текущее Количество'),
(366, 'add_product_quantity', 'Add Product Quantity', 'Добавьте Количество Продукта'),
(367, 'quantity_added!', 'Quantity Added!', 'Количество Добавлено!'),
(368, 'stock', 'Stock', 'Склад'),
(369, 'reduce_product_quantity', 'Reduce Product Quantity', 'Уменьшите Количество Продукции'),
(370, 'quantity_reduced!', 'Quantity Reduced!', 'Количество Сокращено!'),
(371, 'destroy', 'Destroy', 'Уничтожить'),
(372, 'edit_product', 'Edit Product', 'Редактировать Продукт'),
(373, 'product_details', 'Product Details', 'Детали Продукта'),
(374, 'business_details', 'Business Details', 'Бизнес-Детали'),
(375, 'customer_choice_options', 'Customer Choice Options', 'Варианты Выбора Клиента'),
(376, 'unit', 'Unit', 'Единица'),
(377, 'unit_(e.g._kg,_pc_etc.)', 'Unit (e.g. Kg, Pc Etc.)', 'Единица (например, кг, шт. И т. Д.)'),
(378, 'tags', 'Tags', 'Теги'),
(379, 'images', 'Images', 'Изображения'),
(380, 'choose_file', 'Choose File', 'Выберите файл'),
(381, 'description', 'Description', 'Описание'),
(382, 'if_you_need_more_field_for_your_product_,_please_click_here_for_more...', 'If You Need More Field For Your Product , Please Click Here For More...', 'Если Вам Нужно Больше Полей Для Вашего Продукта , Пожалуйста, Нажмите Здесь Для Получения Дополнительной Информации...'),
(383, 'add_more_fields', 'Add More Fields', 'Добавить Дополнительные Поля'),
(384, 'sale_price', 'Sale Price', 'Цена Продажи'),
(385, 'purchase_price', 'Purchase Price', 'Закупочная Цена'),
(386, 'shipping_cost', 'Shipping Cost', 'Стоимость Доставки'),
(387, 'product_tax', 'Product Tax', 'Налог На Продукцию'),
(388, 'product_discount', 'Product Discount', 'Скидка На Продукт'),
(389, 'color', 'Color', 'Цвет'),
(390, 'add_more_colors', 'Add More Colors', 'Добавьте Больше Цветов'),
(391, 'if_you_need_more_choice_options_for_customers_of_this_product_,please_click_here.', 'If You Need More Choice Options For Customers Of This Product ,please Click Here.', 'Если вам нужно больше вариантов выбора для клиентов этого продукта ,пожалуйста, нажмите здесь.'),
(392, 'add_customer_input_options', 'Add Customer Input Options', 'Добавление Параметров Ввода Данных Для Клиентов'),
(393, 'next', 'Next', 'Следующий'),
(394, 'previous', 'Previous', 'Предыдущий'),
(395, 'reset', 'Reset', 'Сброс'),
(396, 'product_has_been_uploaded!', 'Product Has Been Uploaded!', 'Продукт Был Загружен!'),
(397, 'upload', 'Upload', 'Загрузка'),
(398, 'field_name', 'Field Name', 'Имя Поля'),
(399, 'customer_input_title', 'Customer Input Title', 'Название Входного Сигнала Клиента'),
(400, 'add_options_for_choice', 'Add Options For Choice', 'Добавить Параметры Для Выбора'),
(401, 'option_name', 'Option Name', 'Имя Опции'),
(402, 'details_of', 'Details Of', 'Подробности О'),
(403, 'tax', 'Tax', 'Налог'),
(404, 'tag', 'Tag', 'Метка'),
(405, 'colors', 'Colors', 'Цвет'),
(406, 'product_color_options', 'Product Color Options', 'Варианты Цвета Продукта'),
(407, 'add_colors', 'Add Colors', 'Добавить Цвета'),
(408, 'requirements', 'Requirements', 'Требования'),
(409, 'add_logo', 'Add Logo', 'Добавить Логотип'),
(410, 'choose_logo', 'Choose Logo', 'Выберите Логотип'),
(411, 'add_images', 'Add Images', 'Добавление Изображений'),
(412, 'if_you_need_to_add_video_for_your_product_,_please_click_here...', 'If You Need To Add Video For Your Product , Please Click Here...', 'Если Вам Нужно Добавить Видео Для Вашего Продукта , Пожалуйста, Нажмите Здесь... '),
(413, 'add_video', 'Add Video', 'Добавить Видео'),
(414, 'upload_video', 'Upload Video', 'Загрузить Видео'),
(415, 'choose_video_file', 'Choose Video File', 'Выберите Видеофайл'),
(416, 'choose_sharing_site', 'Choose Sharing Site', 'Выберите Общий Сайт'),
(417, 'choose_one', 'Choose One', 'Выберите один'),
(418, 'youtube', 'Youtube', ''),
(419, 'dailymotion', 'Dailymotion', ''),
(420, 'vimeo', 'Vimeo', 'Видео'),
(421, 'link', 'Link', 'Ссылка'),
(422, 'product_file', 'Product File', 'Файл Продукта'),
(423, 'compressed', 'Compressed', 'Сжатый'),
(424, 'maximum_size', 'Maximum Size', 'Максимальный Размер'),
(425, 'if_you_need_to_add_requirements_of_this_product_for_customers_,please_click_here.', 'If You Need To Add Requirements Of This Product For Customers ,please Click Here.', 'Если вам нужно добавить требования этого продукта для клиентов, Пожалуйста, нажмите здесь.'),
(426, 'add_product_requirements', 'Add Product Requirements', 'Добавить Требования К Продукту'),
(427, 'remove', 'Remove', 'Удалять'),
(428, 'video_options', 'Video Options', 'Параметры Видео'),
(429, 'choose_an_option', 'Choose An Option', 'Выберите Один Из Вариантов'),
(430, 'share_link', 'Share Link', 'Поделиться Ссылкой'),
(431, 'i_want_to_add_video_later', 'I Want To Add Video Later', 'Я Хочу Добавить Видео Позже'),
(432, 'update_product_file', 'Update Product File', 'Обновить Файл Продукта'),
(433, 'i_want_to_change_video_later', 'I Want To Change Video Later', 'Я Хочу Сменить Видео Позже'),
(434, 'i_want_to_remove_existing_video', 'I Want To Remove Existing Video', 'Я Хочу Удалить Существующее Видео'),
(435, 'invoice_for', 'Invoice For', 'Счет-Фактура Для'),
(436, 'invoice_no:', 'Invoice No:', 'Счет-Фактура Нет:'),
(437, 'date_:', 'Date :', 'Дата :'),
(438, 'client_information', 'Client Information', 'Информация О Клиенте'),
(439, 'first_name', 'First Name', 'Имя'),
(440, 'last_name', 'Last Name', 'Фамилия'),
(441, 'payment_detail', 'Payment Detail', 'Платежная Информация'),
(442, 'due', 'Due', 'Взнос'),
(443, 'payment_date', 'Payment Date', 'Дата Оплаты'),
(444, 'payment_invoice', 'Payment Invoice', 'Счет На Оплату'),
(445, 'item', 'Item', 'Предмет'),
(446, 'unit_cost', 'Unit Cost', 'Себестоимость единицы продукции'),
(447, 'sub_total_amount', 'Sub Total Amount', 'Итоговая сумма'),
(448, 'shipping', 'Shipping', 'Доставка'),
(449, 'grand_total', 'Grand Total', 'Общая сумма'),
(450, 'address_line_1', 'Address Line 1', 'Адресная Строка 1'),
(451, 'address_line_2', 'Address Line 2', 'Адресная Строка 2'),
(452, 'zipcode', 'Zipcode', 'Индекс'),
(453, 'print', 'Print', 'Печать'),
(454, 'marker_location', 'Marker Location', 'Расположение Маркера'),
(455, 'city', 'City', 'Город'),
(456, 'ZIP', 'ZIP', 'Индекс'),
(457, 'payment_details', 'Payment Details', 'Платежные Реквизиты'),
(458, 'coupon_title', 'Coupon Title', 'Название Купона'),
(459, 'valid_till', 'Valid Till', 'Действителен До Тех Пор, Пока'),
(460, 'coupon_discount_on', 'Coupon Discount On', 'Купон Скидка На'),
(461, 'coupon_code', 'Coupon Code', 'Код Купона'),
(462, 'discount_type', 'Discount Type', 'Тип Скидки'),
(463, 'discount_value', 'Discount Value', 'Значение Скидки'),
(464, 'user', 'User', 'Пользователь'),
(465, 'phone_number', 'Phone Number', 'Номер телефона'),
(466, 'creation_date', 'Creation Date', 'Дата создания'),
(467, 'ticket_from', 'Ticket From', 'Билет От'),
(468, 'date_&_time', 'Date & Time', 'Дата И Время'),
(469, 'reply_message', 'Reply Message', 'Ответное Сообщение'),
(470, 'successfully_replied!', 'Successfully Replied!', 'Успешно Ответил!'),
(471, 'reply', 'Reply', 'Ответить'),
(472, 'refresh', 'Refresh', 'Освежить'),
(473, 'company', 'Company', 'Компания'),
(474, 'postpone', 'Postpone', 'Откладывать'),
(475, 'approve', 'Approve', 'Одобрить'),
(476, 'total_sold', 'Total Sold', 'Всего Продано'),
(477, 'paid_by_customer', 'Paid By Customer', 'Оплачено Клиентом'),
(478, 'paid_to_vendor', 'Paid To Vendor', 'Оплачено Поставщику'),
(479, 'by_admin', 'By Admin', 'От админа'),
(480, 'cash_on_delivery', 'Cash On Delivery', 'Наложенный Платеж'),
(481, 'due_to_vendor', 'Due To Vendor', 'Должный К Поставщику'),
(482, 'select_payment_method', 'Select Payment Method', 'Выберите Способ Оплаты'),
(483, 'your_card_details_verified!', 'Your Card Details Verified!', 'Данные Вашей Карты Проверены!'),
(484, 'pay_with_stripe', 'Pay With Stripe', 'Оплата С Помощью Полосы'),
(485, 'datetime', 'Datetime', 'Дата-время'),
(486, 'membership_to_upgrade', 'Membership To Upgrade', 'Членство Для Обновления'),
(487, 'method', 'Method', 'Метод'),
(488, 'details', 'Details', 'Подробные сведения'),
(489, 'maximum_products', 'Maximum Products', 'Максимальные Продукты'),
(490, 'timespan', 'Timespan', 'Промежуток'),
(491, 'package_seal', 'Package Seal', 'Уплотнение Упаковки'),
(492, 'select_package_seal', 'Select Package Seal', 'Выберите Уплотнение Пакета'),
(493, 'manage_vendor_slides', 'Manage Vendor Slides', 'Управление Слайдами Поставщиков'),
(494, 'button', 'Button', 'Кнопка'),
(495, 'click_to_check_link', 'Click To Check Link', 'Нажмите, Чтобы Проверить Ссылку'),
(496, 'slides', 'Slides', 'Слайды'),
(497, 'manage_users', 'Manage Users', 'Управление Пользователями'),
(498, 'total_purchase', 'Total Purchase', 'Общая Сумма Покупки'),
(499, 'users', 'Users', 'Пользователи'),
(500, 'send_newsletter', 'Send Newsletter', 'Отправить Информационный Бюллетень'),
(501, 'e-mails_(users)', 'E-mails (users)', 'Электронная почта (пользователи)'),
(502, 'e-mails_(subscribers)', 'E-mails (subscribers)', 'Электронная почта (подписчики)'),
(503, 'from_:_email_address', 'From : Email Address', 'Откуда : Адрес Электронной Почты'),
(504, 'newsletter_subject', 'Newsletter Subject', 'Тема Информационного Бюллетеня'),
(505, 'newsletter_content', 'Newsletter Content', 'Содержание Информационного Бюллетеня'),
(506, 'sending', 'Sending', 'Отправка'),
(507, 'sent!', 'Sent!', 'Послано!'),
(508, 'send', 'Send', 'Отправить'),
(509, 'view_contact_message', 'View Contact Message', 'Просмотр Сообщения Контакта'),
(510, 'view_message', 'View Message', 'Просмотр Сообщения'),
(511, 'message', 'Message', 'Сообщение'),
(512, 'date_time', 'Date Time', 'Дата И Время'),
(513, 'message_from', 'Message From', 'Сообщение От'),
(514, 'reply_contact_message', 'Reply Contact Message', 'Ответ Контактное Сообщение'),
(515, 'view_original_message', 'View Original Message', 'Просмотр Исходного Сообщения'),
(516, 'manage_blog_categories', 'Manage Blog Categories', 'Управление Категориями Блогов'),
(517, 'add_blog_category', 'Add Blog Category', 'Добавить Категорию Блога'),
(518, 'create_blog_category', 'Create Blog Category', 'Создать Категорию Блога'),
(519, 'edit_blog_category', 'Edit Blog Category', 'Редактировать Категорию Блога'),
(520, 'blog_category', 'Blog Category', 'Категория Блога'),
(521, 'manage_blog', 'Manage Blog', 'Управление Блогом'),
(522, 'add_blog', 'Add Blog', 'Добавить Блог'),
(523, 'create_blog', 'Create Blog', 'Создать Блог'),
(524, 'back_to_blog_list', 'Back To Blog List', 'Вернуться К Списку Блогов'),
(525, 'edit_blog', 'Edit Blog', 'Редактировать Блог'),
(526, 'blog_title', 'Blog Title', 'Название Блога'),
(527, 'summery', 'Summery', 'Резюме'),
(528, 'author', 'Author', 'Автор'),
(529, 'manage_layer_slider', 'Manage Layer Slider', 'Управление Слайдером Слоя'),
(530, 'create_slider', 'Create Slider', 'Создать Слайдер'),
(531, 'slider_list', 'Slider List', 'Список Слайдеров'),
(532, 'slider_serial', 'Slider Serial', 'Ползунок Последовательный'),
(533, 'successfully_serialized!', 'Successfully Serialized!', 'Успешно Сериализован!'),
(534, 'slider_serial_saved!', 'Slider Serial Saved!', 'Серийный Номер Слайдера Сохранен!'),
(535, 'choose_your_slider_style', 'Choose Your Slider Style', 'Выберите Свой Стиль Слайдера'),
(536, 'play', 'Play', 'Воспроизвести'),
(537, 'choose', 'Choose', 'Выбирать'),
(538, 'enter_preview', 'Enter Preview', 'Введите Предварительный Просмотр'),
(539, 'creating_slider..', 'Creating Slider..', 'Создание Слайдера..'),
(540, 'slider_added!', 'Slider Added!', 'Слайдер Добавлен!'),
(541, 'select_background_image', 'Select Background Image', 'Выберите Фоновое Изображение'),
(542, 'select_image', 'Select Image', 'Выберите Изображение'),
(543, 'font-color', 'Font-color', 'Шрифт-цвет'),
(544, 'background_color', 'Background Color', 'Цвет Фона'),
(545, 'manage_top_carousal_slides', 'Manage Top Carousal Slides', 'Управление самыми популярными слайдами'),
(546, 'add_slides', 'Add Slides', 'Добавить Слайды'),
(547, 'create_slides', 'Create Slides', 'Создание Слайдов'),
(548, 'edit_slides', 'Edit Slides', 'Редактирование Слайдов'),
(549, 'slide_banner', 'Slide Banner', 'Слайд-Баннер'),
(550, 'select_slide_banner', 'Select Slide Banner', 'Выберите Слайд Баннер'),
(551, 'button_color:', 'Button Color:', 'Цвет Кнопки:'),
(552, 'button_text_color:', 'Button Text Color:', 'Цвет Текста Кнопки:'),
(553, 'button_text', 'Button Text', 'Текст Кнопки'),
(554, 'button_link', 'Button Link', 'Кнопка Ссылка'),
(555, 'slides_logo', 'Slides Logo', 'Слайды Логотип'),
(556, 'choose_home_page_style', 'Choose Home Page Style', 'Выберите Стиль Домашней Страницы'),
(557, 'updating..', 'Updating..', 'Обновление...'),
(558, 'home_page_updated!', 'Home Page Updated!', 'Домашняя страница обновлена!'),
(559, 'update_home_page', 'Update Home Page', 'Обновить Домашнюю Страницу'),
(560, 'change_home_page_items', 'Change Home Page Items', 'Изменение Элементов Домашней Страницы'),
(561, 'really_want_to_delete_this_logo?', 'Really Want To Delete This Logo?', 'Действительно Хотите Удалить Этот Логотип?'),
(562, 'top_slider', 'Top Slider', 'Верхний Слайдер'),
(563, 'home_banners', 'Home Banners', 'Домашние Баннеры'),
(564, 'search_section', 'Search Section', 'Раздел Поиска'),
(565, 'category_wise_products', 'Category Wise Products', 'Категория образов продукта'),
(566, 'special_products', 'Special Products', 'Специальные Продукты'),
(567, 'top_carousel_slider', 'Top Carousel Slider', 'Верхний Ползунок Карусели'),
(568, 'choose_categories_(max_10)', 'Choose Categories (max 10)', 'Выберите категории (максимум 10)'),
(569, 'number_of_todays_deal_(_to_show_)', 'Number Of Todays Deal ( To Show )', 'Количество Сегодняшних Сделок ( Чтобы Показать )'),
(570, 'updating', 'Updating', 'Обновление'),
(571, 'category_menu_updated!', 'Category Menu Updated!', 'Обновлено Меню Категорий!'),
(572, 'update', 'Update', 'Обновить'),
(573, 'after_slider', 'After Slider', 'После Слайдера'),
(574, 'select_banner_image', 'Select Banner Image', 'Выберите Изображение Баннера'),
(575, 'banner_updated!', 'Banner Updated!', 'Баннер Обновлен!'),
(576, 'parallax_title_for_search', 'Parallax Title For Search', 'Название Параллакса Для Поиска'),
(577, 'parallax_image_for_search_section', 'Parallax Image For Search Section', 'Параллаксное Изображение Для Раздела Поиска'),
(578, 'search_section_updated!', 'Search Section Updated!', 'Обновлен Раздел Поиска!'),
(579, 'featured_products_(_show_/_hide_)', 'Featured Products ( Show / Hide )', 'Рекомендуемые Продукты ( Показать / Скрыть )'),
(580, 'number_of_products_(_to_show_)', 'Number Of Products ( To Show )', 'Количество Продуктов ( Показать )'),
(581, 'choose_product_box_style', 'Choose Product Box Style', 'Выберите Стиль Коробки Продукта'),
(582, 'featured_section_updated!', 'Featured Section Updated!', 'Избранный Раздел Обновлен!'),
(583, 'vandor_(_show_/_hide_)', 'Vandor ( Show / Hide )', 'Продавец (Показать / Скрыть)'),
(584, 'parallax_title_for_vendors', 'Parallax Title For Vendors', 'Название Параллакса Для Поставщиков'),
(585, 'parallax_image_for_vendors', 'Parallax Image For Vendors', 'Параллаксное Изображение Для Поставщиков'),
(586, 'number_of_vendor_(_to_show_)', 'Number Of Vendor ( To Show )', 'Номер Поставщика ( Показать )'),
(587, 'vendor_section_updated!', 'Vendor Section Updated!', 'Обновлен Раздел Поставщиков!'),
(588, 'sub-categories_(promotional)', 'Sub-categories (promotional)', 'Подкатегории (рекламные)'),
(589, 'color_preference_:', 'Color Preference :', 'Цветовые Предпочтения :'),
(590, 'title_color:', 'Title Color:', 'Цвет Заголовка:'),
(591, 'add_new', 'Add New', 'Добавить Новое'),
(592, 'home_categories_updated!', 'Home Categories Updated!', 'Главная Категория Обновлена!'),
(593, 'blog_(_show_/_hide_)', 'Blog ( Show / Hide )', 'Блог ( Показать / Скрыть )'),
(594, 'parallax_title_for_blog', 'Parallax Title For Blog', 'Название Параллакса Для Блога'),
(595, 'parallax_image_for_blog', 'Parallax Image For Blog', 'Параллакс Изображение Для Блога'),
(596, 'number_of_latest_blog_(_to_show_)', 'Number Of Latest Blog ( To Show )', 'Номер Последнего Блога ( Чтобы Показать )'),
(597, 'blog_section_updated!', 'Blog Section Updated!', 'Обновлен Раздел Блога!'),
(598, 'special_products_(_show_/_hide_)', 'Special Products ( Show / Hide )', 'Специальные Продукты ( Показать / Скрыть )'),
(599, 'brand_(_show_/_hide_)', 'Brand ( Show / Hide )', 'Бренд ( Показать / Скрыть )'),
(600, 'number_of_brand_(_to_show_)', 'Number Of Brand ( To Show )', 'Количество Бренда (Показать )'),
(601, 'brand_section_updated!', 'Brand Section Updated!', 'Обновлен Раздел Бренда!'),
(602, 'banner_published!', 'Banner Published!', 'Баннер Опубликован!'),
(603, 'banner_unpublished!', 'Banner Unpublished!', 'Баннер Не опубликован!'),
(604, 'section_published!', 'Section Published!', 'Раздел Опубликован!'),
(605, 'section_unpublished!', 'Section Unpublished!', 'Раздел Неопубликованный!'),
(606, 'category_wise_banners', 'Category Wise Banners', 'Категория образов баннера'),
(607, 'title_for_vendor_section', 'Title For Vendor Section', 'Название Раздела Поставщика'),
(608, 'contact_address', 'Contact Address', 'Контактный Адрес'),
(609, 'contact_phone', 'Contact Phone', 'Контактный Телефон'),
(610, 'contact_email', 'Contact Email', 'Контактная Электронная Почта'),
(611, 'contact_website', 'Contact Website', 'Контактный Сайт'),
(612, 'contact_about', 'Contact About', 'Контакт О Компании'),
(613, 'footer_settings', 'Footer Settings', 'Настройки Нижнего Колонтитула'),
(614, 'footer_category', 'Footer Category', 'Категория Нижнего Колонтитула'),
(615, 'footer_text', 'Footer Text', 'Нижний Колонтитул Текста'),
(616, 'choose_theme', 'Choose Theme', 'Выберите Тему'),
(617, 'theme_updated!', 'Theme Updated!', 'Тема Обновлена!'),
(618, 'upload_logo', 'Upload Logo', 'Загрузить Логотип'),
(619, 'select_logo', 'Select Logo', 'Выберите Логотип'),
(620, 'all_logos', 'All Logos', 'Все Логотипы'),
(621, 'place', 'Place', 'Место'),
(622, 'admin_logo', 'Admin Logo', 'Логотип Администратора'),
(623, 'successfully_selected!', 'Successfully Selected!', 'Удачно Выбран!'),
(624, 'change', 'Change', 'Изменить'),
(625, 'homepage_header_logo', 'Homepage Header Logo', 'Логотип Заголовка Домашней Страницы'),
(626, 'homepage_footer_logo', 'Homepage Footer Logo', 'Логотип Нижнего Колонтитула Домашней Страницы'),
(627, 'successfully_logo_uploaded', 'Successfully Logo Uploaded', 'Успешно Загруженный Логотип'),
(628, 'select_favicon', 'Select Favicon', 'Выберите Favicon'),
(629, 'favicon_updated!', 'Favicon Updated!', 'Фавикон Обновлен!'),
(630, 'choose_font', 'Choose Font', 'Выберите Шрифт'),
(631, 'font_updated!', 'Font Updated!', 'Шрифт Обновлен!'),
(632, 'preloaders', 'Preloaders', 'Загрузчики'),
(633, 'preloader_color', 'Preloader Color', 'Цвет Прелоадера'),
(634, 'preloader_background', 'Preloader Background', 'Фон Прелоадера'),
(635, 'preloader_updated!', 'Preloader Updated!', 'Предварительный Загрузчик Обновлен!'),
(636, 'social_links', 'Social Links', 'Социальные Сети'),
(637, 'system_name', 'System Name', 'Имя Системы'),
(638, 'system_email', 'System Email', 'Системная Электронная Почта'),
(639, 'system_title', 'System Title', 'Название Системы'),
(640, 'homepage_cache_time', 'Homepage Cache Time', 'Время Кэширования Домашней Страницы'),
(641, 'minutes', 'Minutes', 'Минут'),
(642, 'downloadable_product_folder_name', 'Downloadable Product Folder Name', 'Имя Папки Загружаемого Продукта'),
(643, 'admin_notification_sound', 'Admin Notification Sound', 'Звук Уведомления Администратора'),
(644, 'admin_notification_volume', 'Admin Notification Volume', 'Громкость Уведомлений Администратора'),
(645, 'Volume_:_', 'Volume : ', 'Объем :'),
(646, 'homepage_notification_sound', 'Homepage Notification Sound', 'Звук Уведомления На Главной Странице'),
(647, 'homepage_notification_volume', 'Homepage Notification Volume', 'Громкость Уведомлений На Главной Странице'),
(648, 'captcha_settings', 'Captcha Settings', 'Настройки Капчи'),
(649, 'social_login_configuaration', 'Social Login Configuaration', 'Настройка Социального Входа В Систему'),
(650, 'product_comment_settings', 'Product Comment Settings', 'Настройки Комментариев К Продукту'),
(651, 'google_map', 'Google Map', 'Карта Google'),
(652, 'save_captcha_settings', 'Save Captcha Settings', 'Сохранение Настроек Капчи'),
(653, 'public_key', 'Public Key', 'Открытый Ключ'),
(654, 'private_key', 'Private Key', 'Закрытый Ключ'),
(655, 'facebook_login_settings', 'Facebook Login Settings', 'Настройки Входа В Facebook'),
(656, 'google+_login_settings', 'Google+ Login Settings', 'Настройки Входа В Систему Google+'),
(657, 'type', 'Type', 'Тип'),
(658, 'none', 'None', 'Нет'),
(659, 'facebook_comment', 'Facebook Comment', 'Комментарий В Facebook'),
(660, 'disqus_comment', 'Disqus Comment', 'Комментарий Disqus'),
(661, 'google_comment', 'Google Comment', 'Комментарий Google'),
(662, 'discus_ID', 'Discus ID', 'ID диска'),
(663, 'fb_comment_id', 'Fb Comment Id', 'Fb Идентификатор Комментария'),
(664, 'google_map_api_settings', 'Google Map Api Settings', 'Настройки Google Map Api'),
(665, 'api_key', 'Api Key', 'Ключ Api'),
(666, 'add_page', 'Add Page', 'Добавить Страницу'),
(667, 'create_page', 'Create Page', 'Создать Страницу'),
(668, 'back_to_page_list', 'Back To Page List', 'Вернуться К Списку Страниц'),
(669, 'page_name', 'Page Name', 'Имя Страницы'),
(670, 'preview', 'Preview', 'Предварительный просмотр'),
(671, 'edit_page', 'Edit Page', 'Изменить Страницу'),
(672, 'page_title', 'Page Title', 'Заголовок Страницы'),
(673, 'parmalink', 'Parmalink', 'Parmalink'),
(674, 'number_of_page_parts', 'Number Of Page Parts', 'Количество Частей Страницы'),
(675, 'lets_start_to_create_your_page', 'Lets Start To Create Your Page', 'Давайте Начнем Создавать Вашу Страницу'),
(676, 'parts', 'Parts', 'Части'),
(677, 'select_size', 'Select Size', 'Выберите Размер'),
(678, 'one-fourth', 'One-fourth', 'Одна четвертая'),
(679, 'one-third', 'One-third', 'Одна треть'),
(680, 'half', 'Half', 'Половина'),
(681, 'two-third', 'Two-third', 'Две трети'),
(682, 'three-fourth', 'Three-fourth', 'Полный'),
(683, 'full', 'Full', 'Полный'),
(684, 'select_type', 'Select Type', 'Выберите Тип'),
(685, 'content', 'Content', 'Содержание'),
(686, 'widget', 'Widget', 'Виджет'),
(687, 'product_categories', 'Product Categories', 'Категории Продуктов'),
(688, 'advance_search', 'Advance Search', 'Предварительный Поиск'),
(689, 'special_blogs', 'Special Blogs', 'Специальные Блоги'),
(690, 'not_more_than_4_columns!', 'Not More Than 4 Columns!', 'Не Более 4-Х Колонок!'),
(691, 'popular', 'Popular', 'Популярные'),
(692, 'deals', 'Deals', 'Акции'),
(693, 'page_code', 'Page Code', 'Код Страницы'),
(694, 'page_tags', 'Page Tags', 'Теги Страниц'),
(695, 'column', 'Column', 'Колонка'),
(696, '', '', ''),
(697, 'most_sold', 'Most Sold', 'Самое Продаваемое'),
(698, 'product_image', 'Product Image', 'Изображение Продукта'),
(699, 'digital_logo_image', 'Digital Logo Image', 'Изображение Логотипа Цифров'),
(700, 'category_image', 'Category Image', 'Изображение Категории'),
(701, 'sub_category_image', 'Sub Category Image', 'Изображение Подкатегории'),
(702, 'brand_image', 'Brand Image', 'Изображение Бренда'),
(703, 'blog_image', 'Blog Image', 'Изображение Блога'),
(704, 'banner_image', 'Banner Image', 'Изображение Баннера'),
(705, 'user_image', 'User Image', 'Изображение Пользователя'),
(706, 'vendor_logo_image', 'Vendor Logo Image', 'Изображение Логотипа Поставщика'),
(707, 'vendor_banner_image', 'Vendor Banner Image', 'Изображение Баннера Поставщика'),
(708, 'membership_image', 'Membership Image', 'Изображение членства'),
(709, 'slides_image', 'Slides Image', 'Слайды Изображения'),
(710, 'select_default_image', 'Select Default Image', 'Выберите Изображение По Умолчанию'),
(711, 'product_image_updated!', 'Product Image Updated!', 'Изображение Продукта Обновлено!'),
(712, 'digital_logo_image_updated!', 'Digital Logo Image Updated!', 'Цифровое Изображение Логотипа Обновлено!'),
(713, 'category_image_updated!', 'Category Image Updated!', 'Изображение Категории Обновлено!'),
(714, 'sub_category_image_updated!', 'Sub Category Image Updated!', 'Изображение Подкатегории Обновлено!'),
(715, 'brand_image_updated!', 'Brand Image Updated!', 'Обновлена картинка бренда!'),
(716, 'blog_image_updated!', 'Blog Image Updated!', 'Изображение Блога Обновлено!'),
(717, 'banner_image_updated!', 'Banner Image Updated!', 'Изображение Баннера Обновлено!'),
(718, 'user_image_updated!', 'User Image Updated!', 'Изображение Пользователя Обновлено!'),
(719, 'vendor_logo_image_updated!', 'Vendor Logo Image Updated!', 'Обновлено Изображение Логотипа Поставщика!'),
(720, 'vendor_banner_image_updated!', 'Vendor Banner Image Updated!', 'Обновлено Изображение Баннера Поставщика!'),
(721, 'membership_image_updated!', 'Membership Image Updated!', 'Обновлено Изображение Членства!'),
(722, 'slides_image_updated!', 'Slides Image Updated!', 'Слайды Изображения Обновлены!'),
(723, 'manage_activation', 'Manage Activation', 'Управление Активацией'),
(724, 'business_related', 'Business Related', 'Связанные С Бизнесом'),
(725, 'physical_product_activation', 'Physical Product Activation', 'Физическая Активация Продукта'),
(726, 'physical_product_enabled', 'Physical Product Enabled', 'Физический Продукт Включен'),
(727, 'physical_product_disabled', 'Physical Product Disabled', 'Физический Продукт Отключен'),
(728, 'digital_product_activation', 'Digital Product Activation', 'Активация Цифрового Продукта'),
(729, 'digital_product_enabled', 'Digital Product Enabled', 'Цифровой Продукт Включен'),
(730, 'digital_product_disabled', 'Digital Product Disabled', 'Цифровой Продукт Отключен'),
(731, 'vendor_system_activation', 'Vendor System Activation', 'Активация Системы Поставщика'),
(732, 'vendor_system_enabled', 'Vendor System Enabled', 'Система Поставщика Включена'),
(733, 'vendor_system_disabled', 'Vendor System Disabled', 'Система Поставщика Отключена'),
(734, 'payment_related', 'Payment Related', 'Связанные С Оплатой'),
(735, 'paypal_payment_activation', 'Paypal Payment Activation', 'Активация Оплаты Paypal'),
(736, 'paypal_payment_enabled', 'Paypal Payment Enabled', 'Оплата Paypal Включена'),
(737, 'paypal_payment_disabled', 'Paypal Payment Disabled', 'Оплата Paypal Отключена'),
(738, 'stripe_payment_activation', 'Stripe Payment Activation', 'Активация полосы оплаты'),
(739, 'stripe_payment_enabled', 'Stripe Payment Enabled', 'Полоса оплаты включена'),
(740, 'stripe_payment_disabled', 'Stripe Payment Disabled', 'Полоса оплаты отключена');
INSERT INTO `language` (`word_id`, `word`, `english`, `lang_0`) VALUES
(741, 'cash_payment_activation', 'Cash Payment Activation', 'Активация Наличного Платежа'),
(742, 'cash_payment_enabled', 'Cash Payment Enabled', 'Оплата Наличными Включена'),
(743, 'cash_payment_disabled', 'Cash Payment Disabled', 'Оплата Наличными Отключена'),
(744, 'manage_business_settings', 'Manage Business Settings', 'Управление Бизнес-Настройками'),
(745, 'cash_payment', 'Cash Payment', 'Оплата Наличными'),
(746, 'paypal_payment', 'Paypal Payment', 'Оплата Paypal'),
(747, 'paypal_email', 'Paypal Email', 'Электронная Почта Paypal'),
(748, 'paypal_account_type', 'Paypal Account Type', 'Тип счета Paypal'),
(749, 'stripe_payment', 'Stripe Payment', 'Полоса оплаты'),
(750, 'stripe_secret_key', 'Stripe Secret Key', 'Серуктный ключ'),
(751, 'stripe_publishable_key', 'Stripe Publishable Key', 'Публикуемый ключ с полосой'),
(752, 'currency_name', 'Currency Name', 'Название Валюты'),
(753, 'currency_symbol', 'Currency Symbol', 'Символ Валюты'),
(754, 'shipping_cost_type', 'Shipping Cost Type', 'Тип Стоимости Доставки'),
(755, 'product_wise', 'Product Wise', 'Продукт'),
(756, 'fixed', 'Fixed', 'Исправлено'),
(757, 'shipping_cost_(If_fixed)', 'Shipping Cost (If Fixed)', 'Стоимость Доставки (Если Она Фиксирована)'),
(758, 'shipment_info', 'Shipment Info', 'Информация Об Отгрузке'),
(759, 'question', 'Question', 'Вопрос'),
(760, 'answer', 'Answer', 'Ответ'),
(761, 'add_more_FAQs', 'Add More FAQs', 'Добавьте Больше Часто Задаваемых Вопросов'),
(762, 'manage_payment_methods_&_shipment', 'Manage Payment Methods & Shipment', 'Управление Способами Оплаты И Отгрузки'),
(763, 'payment_methods_settings', 'Payment Methods Settings', 'Настройки Способов Оплаты'),
(764, 'paypal_settings', 'Paypal Settings', 'Настройки Paypal'),
(765, 'stripe_settings', 'Stripe Settings', 'Настройки Полосы'),
(766, 'shipment_settings', 'Shipment Settings', 'Настройки Отгрузки'),
(767, 'currency_settings', 'Currency Settings', 'Настройки Валюты'),
(768, 'exchange_rate', 'Exchange Rate', 'обменный курс'),
(769, 'default', 'Default', 'По умолчанию'),
(770, 'exchange_rate_updated', 'Exchange Rate Updated', 'Обновление Обменного Курса'),
(771, 'currency_published', 'Currency Published', 'Валюта Опубликована'),
(772, 'currency_unpublished', 'Currency Unpublished', 'Валюта Неопубликованная'),
(773, 'syncing..', 'Syncing..', 'Синхронизация..'),
(774, '!', '!', '!'),
(775, 'sync', 'Sync', 'Синхронизация'),
(776, 'manage_faqs', 'Manage Faqs', 'Управление Часто Задаваемыми Вопросами'),
(777, 'manage_staffs', 'Manage Staffs', 'Управление Персоналом'),
(778, 'add_staff', 'Add Staff', 'Добавить Персонал'),
(779, 'create_admin', 'Create Admin', 'Создать Администратора'),
(780, 'role', 'Role', 'Роль'),
(781, 'edit_admin', 'Edit Admin', 'Правка Администратора'),
(782, 'sddress', 'Sddress', 'Адрес'),
(783, 'Manage_roles', 'Manage Roles', 'Управление Ролями'),
(784, 'add_role', 'Add Role', 'Добавить Роль'),
(785, 'create_role', 'Create Role', 'Создать Роль'),
(786, 'back_to_role_list', 'Back To Role List', 'Вернуться К Списку Ролей'),
(787, 'edit_role', 'Edit Role', 'Изменить Роль'),
(788, 'permissions', 'Permissions', 'Разрешения'),
(789, 'manage_SEO', 'Manage SEO', 'Управление SEO'),
(790, 'settings', 'Settings', 'Настройки'),
(791, 'social_network_reach', 'Social Network Reach', 'Охват Социальных Сетей'),
(792, 'alexa_traffic_metrics', 'Alexa Traffic Metrics', 'Показатели Трафика Alexa'),
(793, 'alexa_traffic_graphs', 'Alexa Traffic Graphs', 'Графики Трафика Alexa'),
(794, 'search_index', 'Search Index', 'Поисковый Индекс'),
(795, 'alexa_traffic_rank', 'Alexa Traffic Rank', 'Рейтинг трафика Alexa'),
(796, 'manage_search_engine_optimization', 'Manage Search Engine Optimization', 'Управление Поисковой Оптимизацией'),
(797, 'keywords', 'Keywords', 'Ключевые слова'),
(798, 'revisit_after', 'Revisit After', 'Вернуться Позже'),
(799, 'sitemap_link', 'Sitemap Link', 'Ссылка На Карту Сайта'),
(800, 'admin_login_logo', 'Admin Login Logo', 'Логин Администратора Логотип'),
(801, 'home_top_logo', 'Home Top Logo', 'Главный Топ Логотип'),
(802, 'home_bottom_logo', 'Home Bottom Logo', 'Главный Нижний Логотип'),
(803, 'manage_profile', 'Manage Profile', 'Управление Профилем'),
(804, 'manage_details', 'Manage Details', 'Управление Деталями'),
(805, 'profile_updated!', 'Profile Updated!', 'Профиль Обновлен!'),
(806, 'update_profile', 'Update Profile', 'Обновить Профиль'),
(807, 'change_password', 'Change Password', 'поменять пароль'),
(808, 'current_password', 'Current Password', 'текущий пароль'),
(809, 'new_password*', 'New Password*', 'Новый Пароль*'),
(810, 'confirm_password', 'Confirm Password', 'Подтвердите Пароль'),
(811, 'password_updated!', 'Password Updated!', 'Пароль Обновлен!'),
(812, 'update_password', 'Update Password', 'Обновить Пароль'),
(813, 'password_mismatched', 'Password Mismatched', 'Несоответствие Пароля'),
(814, 'incorrect_password!', 'Incorrect Password!', 'Неверный Пароль!'),
(815, 'language_name', 'Language Name', 'Название Языка'),
(816, 'language_icon', 'Language Icon', 'Языковая Иконка'),
(817, 'select_language_icon', 'Select Language Icon', 'Выберите Значок Языка'),
(818, 'secret', 'Secret', 'Секрет'),
(819, 'application_name', 'Application Name', 'Имя Приложения'),
(820, 'client', 'Client', 'Клиент'),
(821, 'client_secret', 'Client Secret', 'Секрет Клиента'),
(822, 'redirect', 'Redirect', 'Перенаправлять'),
(823, 'key', 'Key', 'Ключ'),
(824, 'visit_my_homepage', 'Visit My Homepage', 'Посетите Мою Домашнюю Страницу'),
(825, 'membership_type', 'Membership Type', 'Тип Членства'),
(826, 'membership_details', 'Membership Details', 'Детали Членства'),
(827, 'membership_expiration', 'Membership Expiration', 'Истечение Срока Действия Членства'),
(828, 'total_uploaded_products', 'Total Uploaded Products', 'Общее Количество Загруженных Продуктов'),
(829, 'uploaded_published_products', 'Uploaded Published Products', 'Загруженные Опубликованные Продукты'),
(830, 'vendorship_timespan', 'Vendorship Timespan', 'Срок службы продавца'),
(831, 'remaining', 'Remaining', 'Оставшийся'),
(832, 'paid_by_customers', 'Paid By Customers', 'Оплачивается Клиентами'),
(833, 'due_from_admin', 'Due From Admin', 'Срок от администратора'),
(834, 'payment_settings', 'Payment Settings', 'Настройки Оплаты'),
(835, 'upgrade_package', 'Upgrade Package', 'Пакет Обновления'),
(836, 'manage_your_product_stock', 'Manage Your Product Stock', 'Управление Запасом Вашей Продукции'),
(837, 'select_category', 'Select Category', 'Выберите Категорию'),
(838, 'choose_product', 'Choose Product', 'Выберите Продукт'),
(839, 'manage_public_profile_slider', 'Manage Public Profile Slider', 'Управление Ползунком Общего Профиля'),
(840, 'home_page_style', 'Home Page Style', 'Стиль Домашней Страницы'),
(841, 'manage_site', 'Manage Site', 'Управление Сайтом'),
(842, 'vendor_images', 'Vendor Images', 'Изображения Поставщиков'),
(843, 'social_media', 'Social Media', 'Социальные сети'),
(844, 'SEO', 'SEO', 'ОПТИМИЗАЦИЯ ПОИСКОВЫХ СИСТЕМ'),
(845, 'select_images', 'Select Images', 'Выбор Изображений'),
(846, 'suggested_width', 'Suggested Width', 'Рекомендуемая Ширина'),
(847, 'height', 'Height', 'Высота'),
(848, 'cover_photo', 'Cover Photo', 'Фото На Обложке'),
(849, 'select_photo', 'Select Photo', 'Выберите Фотографию'),
(850, 'manage_payment_receiving_settings', 'Manage Payment Receiving Settings', 'Управление Настройками Получения Платежей'),
(851, 'upgrade', 'Upgrade', 'Обновление'),
(852, 'maximum_product', 'Maximum Product', 'Максимальный Продукт'),
(853, 'about', 'About', 'О нас'),
(854, 'oops', 'Oops', 'Ой'),
(855, 'the_page_you_requested_was_not_found', 'The Page You Requested Was Not Found', 'Запрошенная Вами Страница Не Найдена'),
(856, 'back_to_home', 'Back To Home', 'Назад К Дому'),
(857, 'browse', 'Browse', 'Обзор'),
(858, 'sort_by', 'Sort By', 'Сортировать по'),
(859, 'price_low_to_high', 'Price Low To High', 'Цена От Низкой До Высокой'),
(860, 'price_high_to_low', 'Price High To Low', 'Цена От Высокой До Низкой'),
(861, 'oldest', 'Oldest', 'Старейший'),
(862, 'newest', 'Newest', 'Самые новые'),
(863, 'sold_by_:', 'Sold By :', 'Продано Компанией :'),
(864, 'price_:', 'Price :', 'Цена :'),
(865, 'discount:_', 'Discount: ', 'Скидка:'),
(866, '_available', ' Available', 'Доступно'),
(867, '_add_to_wishlist', ' Add To Wishlist', 'Добавить в пожелания'),
(868, '_compare', ' Compare', 'Сравнить'),
(869, 'sold_category_of_vendor', 'Sold Category Of Vendor', 'Продано Категория Поставщика'),
(870, 'recent', 'Recent', 'Недавние'),
(871, 'our_vendors_location', 'Our Vendors Location', 'Расположение Наших Поставщиков'),
(872, 'search_vendors', 'Search Vendors', 'Поиск Поставщиков'),
(873, 'go', 'Go', 'Вперед'),
(874, 'our_vendors', 'Our Vendors', 'Наши Поставщики'),
(875, 'message_sent!', 'Message Sent!', 'Сообщение Отправлено!'),
(876, 'incorrect_captcha!', 'Incorrect Captcha!', 'Неправильная Капча!'),
(877, 'about_us', 'About Us', 'О нас'),
(878, 'contact_form', 'Contact Form', 'Контактная Форма'),
(879, 'sending..', 'Sending..', 'Отправка..'),
(880, 'send_message', 'Send Message', 'Отправить сообщение'),
(881, 'enter_valid_email_address', 'Enter Valid Email Address', 'Введите Действительный Адрес Электронной Почты'),
(882, 'message_sent_successfully', 'Message Sent Successfully', 'Сообщение Отправлено Успешно'),
(883, 'incorrect_information!Check agian', 'Incorrect Information!Check Agian', 'Неверная информация!Проверьте Снова'),
(884, 'this_filed_is_required!', 'This Filed Is Required!', 'Это поле обязательно к заполнению!'),
(885, 'frequently_asked_questions', 'Frequently Asked Questions', 'Вопросы и ответы'),
(886, 'not_a_member_yet_?', 'Not A Member Yet ?', 'Еще Не Член Клуба ?'),
(887, 'sign_up_now!', 'Sign Up Now!', 'Запишитесь Прямо Сейчас!'),
(888, 'forget_your_password_?', 'Forget Your Password ?', 'Забыли Свой Пароль ?'),
(889, 'sign_in_with_facebook', 'Sign In With Facebook', 'Войти через Facebook'),
(890, 'sign_in_with_google', 'Sign In With Google', 'Войдите В Систему С Помощью Google'),
(891, 'submit', 'Submit', 'Отправить'),
(892, 'already_a_member_?_click_to_', 'Already A Member ? Click To ', 'Уже Член Клуба ? Нажмите, Чтобы'),
(893, 'as_customer', 'As Customer', 'Как Клиент'),
(894, '_or_', ' Or ', 'Или'),
(895, 'sign_up', 'Sign Up', 'Регистрация'),
(896, 'as_vendor', 'As Vendor', 'Как Поставщик'),
(897, 'registering..', 'Registering..', 'Регистрация..'),
(898, 'register', 'Register', 'Регистрация'),
(899, 'already_a_vendor_?_click_to_', 'Already A Vendor ? Click To ', 'Уже Продавец ? Нажмите, Чтобы'),
(900, 'not_a_member_yet_?_click_to_', 'Not A Member Yet ? Click To ', 'Еще Не Член Клуба ? Нажмите, Чтобы'),
(901, 'back_to_login', 'Back To Login', 'Вернуться К Логину'),
(902, 'reset_compare_list', 'Reset Compare List', 'Сброс Списка Сравнения'),
(903, 'choose_a_product', 'Choose A Product', 'Выберите Продукт'),
(904, 'my_cart', 'My Cart', 'Моя Тележка'),
(905, '1', '1', '1'),
(906, 'orders', 'Orders', 'Заказы'),
(907, '2', '2', '2'),
(908, 'delivery_address', 'Delivery Address', 'адрес доставки'),
(909, '3', '3', '3'),
(910, 'payments_options', 'Payments Options', 'Варианты Оплаты'),
(911, 'cancel_order', 'Cancel Order', 'Отменить Заказ'),
(912, 'place_order', 'Place Order', 'разместить заказ'),
(913, 'my_profile', 'My Profile', 'Мой профиль'),
(914, 'wishlist', 'Wishlist', 'Список желаний'),
(915, 'unit_price', 'Unit Price', 'цена за единицу'),
(916, 'change_choices', 'Change Choices', 'Изменить Выбор'),
(917, 'shopping_cart', 'Shopping Cart', 'Корзина'),
(918, 'coupon_discount', 'Coupon Discount', 'Скидка По Купону'),
(919, 'enter_your_coupon_code_if_you_have_one', 'Enter Your Coupon Code If You Have One', 'Введите Свой Код Купона, Если Он У Вас Есть'),
(920, 'apply_coupon', 'Apply Coupon', 'Применить Купон'),
(921, 'postcode/ZIP', 'Postcode/ZIP', 'Почтовый индекс/почтовый индекс'),
(922, 'ship_to_different_address_for_invoice', 'Ship To Different Address For Invoice', 'Доставка По Другому Адресу Для Выставления Счета'),
(923, 'paypal', 'Paypal', 'PayPal'),
(924, 'stripe', 'Stripe', 'Полоса'),
(925, 'invoice_paper', 'Invoice Paper', 'Накладная Бумага'),
(926, 'invoice_no', 'Invoice No', 'Счет-Фактура Нет'),
(927, 'client_information:', 'Client Information:', 'Информация О Клиенте:'),
(928, 'first_name:', 'First Name:', 'Имя:'),
(929, 'last_name:', 'Last Name:', 'Фамилия:'),
(930, 'peyment_details_:', 'Peyment Details :', 'Детали платежа'),
(931, 'payment_status_:', 'Payment Status :', 'Статус Платежа :'),
(932, 'payment_method_:', 'Payment Method :', 'Способ оплаты :'),
(933, 'invoice', 'Invoice', 'Счет-фактура'),
(934, 'billed_to', 'Billed To', 'Выставленный Счет'),
(935, 'shipped_to', 'Shipped To', 'Отправлено В'),
(936, 'order_date', 'Order Date', 'Дата Заказа'),
(937, 'order_history', 'Order History', 'История заказов'),
(938, 'downloads', 'Downloads', 'Загрузки'),
(939, 'edit_profile', 'Edit Profile', 'Изменить Профиль'),
(940, 'support_ticket', 'Support Ticket', 'Билет Поддержки'),
(941, 'change_profile_picture', 'Change Profile Picture', 'Изменить Фотографию Профиля'),
(942, 'profile_picture_saved_successfully!', 'Profile Picture Saved Successfully!', 'Фотография Профиля Успешно Сохранена!'),
(943, 'edit_failed!', 'Edit Failed!', 'Редактировать Не Удалось!'),
(944, 'try_again!', 'Try Again!', 'Попробуй Еще Раз!'),
(945, 'save_changes', 'Save Changes', 'сохранить изменения'),
(946, 'profile_information', 'Profile Information', 'Информация О Профиле'),
(947, 'last_7_days', 'Last 7 Days', 'Последние 7 Дней'),
(948, 'last_30_days', 'Last 30 Days', 'Последние 30 Дней'),
(949, 'wished_products', 'Wished Products', 'Желаемые Продукты'),
(950, 'user_since', 'User Since', 'Пользователь С Тех Пор'),
(951, 'last_login', 'Last Login', 'Последний Вход В Систему'),
(952, 'contact_no', 'Contact No', 'Контактов Нет'),
(953, 'your_wishlist', 'Your Wishlist', 'Ваш Список Желаний'),
(954, 'availability', 'Availability', 'Доступность'),
(955, 'purchase', 'Purchase', 'Покупка'),
(956, 'available', 'Available', 'Доступно'),
(957, 'your_order_history', 'Your Order History', 'История Ваших Заказов'),
(958, 'your_downloads', 'Your Downloads', 'Ваши Загрузки'),
(959, 'downloading..', 'Downloading..', 'Загрузка..'),
(960, 'download_permission_denied', 'Download Permission Denied', 'Разрешение На Загрузку Отказано'),
(961, 'personal_info', 'Personal Info', 'Личная Информация'),
(962, 'change_your_profile_information', 'Change Your Profile Information', 'Измените Информацию Своего Профиля'),
(963, 'address 1', 'Address 1', 'Адрес 1'),
(964, 'address 2', 'Address 2', 'Адрес 2'),
(965, 'skype', 'Skype', 'Скайп'),
(966, 'google_plus', 'Google Plus', 'Google Plus'),
(967, 'facebook', 'Facebook', 'Facebook'),
(968, 'info_update_unsuccessful!', 'Info Update Unsuccessful!', 'Обновление Информации Не Удалось!'),
(969, 'info_updated_successfully!', 'Info Updated Successfully!', 'Информация Успешно Обновлена!'),
(970, 'change_your_password', 'Change Your Password', 'Измените Свой Пароль'),
(971, 'old_password', 'Old Password', 'Старый Пароль'),
(972, 'new_password', 'New Password', 'Новый Пароль'),
(973, 'confirm_new_password', 'Confirm New Password', 'Подтвердите Новый Пароль'),
(974, 'password_change_unsuccessful!', 'Password Change Unsuccessful!', 'Смена Пароля Не Удалась!'),
(975, 'password_changed_successfully!', 'Password Changed Successfully!', 'Пароль Изменен Успешно!'),
(976, 'all_messages', 'All Messages', 'Все Сообщения'),
(977, 'create_ticket', 'Create Ticket', 'Создать Тикет'),
(978, 'ticket_subject', 'Ticket Subject', 'Тема Билета'),
(979, 'comment', 'Comment', 'Комментарий'),
(980, 'creating...', 'Creating...', 'Создание...'),
(981, 'ticket_created_successfully', 'Ticket Created Successfully', 'Билет Создан Успешно'),
(982, 'ticket_creation_unsuccessful', 'Ticket Creation Unsuccessful', 'Создание Билета Не Удалось'),
(983, 'create', 'Create', 'Создать'),
(984, 'your_message', 'Your Message', 'ваше сообщение'),
(985, 'replying...', 'Replying...', 'Отвечаю...'),
(986, 'reply_sent_successfully', 'Reply Sent Successfully', 'Ответ Отправлен Успешно'),
(987, 'unsuccessful', 'Unsuccessful', 'Неудачный'),
(988, 'vendor_public_home', 'Vendor Public Home', 'Поставщик Общественный Дом'),
(989, 'member_since', 'Member Since', 'Член С Тех Пор'),
(990, 'vendor_rating', 'Vendor Rating', 'Рейтинг Поставщиков'),
(991, 'about_vendor', 'About Vendor', 'О Поставщике'),
(992, 'find_location', 'Find Location', 'Найти Местоположение'),
(993, 'filters', 'Filters', 'Фильтры'),
(994, 'vendor_featured_product', 'Vendor Featured Product', 'Рекомендуемый Поставщиком Продукт'),
(995, 'added_to_wishlist', 'Added To Wishlist', 'Добавлено В Список Желаний'),
(996, 'all_category', 'All Category', 'Все категории'),
(997, 'by', 'By', 'Автор:'),
(998, 'sold_by', 'Sold By', 'Продано Компанией'),
(999, 'last_updated', 'Last Updated', 'Последнее Обновление'),
(1000, 'review(s)', 'Review(s)', 'Обзор(ы)'),
(1001, 'add_your_review', 'Add Your Review', 'Добавьте Свой Отзыв'),
(1002, 'view_details', 'View Details', 'Подробнее'),
(1003, 'related_products', 'Related Products', 'сопутствующие товары'),
(1004, 'full_description', 'Full Description', 'Полное Описание'),
(1005, 'additional_specification', 'Additional Specification', 'Дополнительная Спецификация'),
(1006, 'reviews', 'Reviews', 'Отзывы'),
(1007, 'color_:', 'Color :', 'Цвет :'),
(1008, 'add_to_list', 'Add To List', 'Добавить В Список'),
(1009, 'you_have_registered_successfully', 'You Have Registered Successfully', 'Вы Успешно Зарегистрировались'),
(1010, 'email_sending_failed!', 'Email Sending Failed!', 'Отправка Электронной Почты Не Удалась!'),
(1011, 'working', 'Working', 'Работающий'),
(1012, 'fill_all_fields_correctly', 'Fill All Fields Correctly', 'Заполните Все Поля Правильно'),
(1013, 'deposit_request_sent', 'Deposit Request Sent', 'Отправлен Запрос На Внесение Депозита'),
(1014, 'deposit_request_sending_failed', 'Deposit Request Sending Failed', 'Не Удалось Отправить Запрос На Депозит'),
(1015, 'payment_info_sent', 'Payment Info Sent', 'Отправленная Платежная Информация'),
(1016, 'payment_info_sending_failed', 'Payment Info Sending Failed', 'Не Удалось Отправить Платежную Информацию'),
(1017, 'wallet', 'Wallet', 'Бумажник'),
(1018, 'state', 'State', 'Государство'),
(1019, 'country', 'Country', 'Страна'),
(1020, 'deposit_to_wallet', 'Deposit To Wallet', 'Депозит На Кошелек'),
(1021, 'your_wallet_history', 'Your Wallet History', 'История Вашего Кошелька'),
(1022, 'time', 'Time', 'Время'),
(1023, 'payment_info', 'Payment Info', 'Информация Об Оплате'),
(1024, 'order_tracing', 'Order Tracing', 'Отслеживание Заказов'),
(1025, 'order_tracing_unsuccessful!', 'Order Tracing Unsuccessful!', 'Отслеживание Заказа Не Удалось!'),
(1026, 'order_traced_successfully!', 'Order Traced Successfully!', 'Заказ Прослежен Успешно!'),
(1027, 'checking..', 'Checking..', 'Проверка..'),
(1028, 'trace_my_order', 'Trace My Order', 'Отследите Мой Заказ'),
(1029, 'pay_to_vendor', 'Pay To Vendor', 'Оплата Поставщику'),
(1030, 'package_payments', 'Package Payments', 'Пакетные Платежи'),
(1031, 'wallet_loads', 'Wallet Loads', 'Кошелек Загружается'),
(1032, 'email_templates', 'Email Templates', 'Шаблоны Электронной Почты'),
(1033, 'twocheckout_payment_enabled!', 'Twocheckout Payment Enabled!', 'Оплата Twocheckout Включена!'),
(1034, 'twocheckout_payment_disabled!', 'Twocheckout Payment Disabled!', 'Оплата Twocheckout Отключена!'),
(1035, 'voguePay_payment_enabled!', 'VoguePay Payment Enabled!', 'Оплата VoguePay Включена!'),
(1036, 'voguePay_payment_disabled!', 'VoguePay Payment Disabled!', 'Оплата VoguePay Отключена!'),
(1037, 'successfully_enabled!', 'Successfully Enabled!', 'Успешно Включен!'),
(1038, 'successfully_disabled!', 'Successfully Disabled!', 'Успешно Отключен!'),
(1039, 'twocheckout_activation', 'Twocheckout Activation', 'Активация Twocheckout'),
(1040, 'twocheckout_payment_enabled', 'Twocheckout Payment Enabled', 'Включен Платеж Twocheckout'),
(1041, 'twocheckout_payment_disabled', 'Twocheckout Payment Disabled', 'Оплата Twocheckout Отключена'),
(1042, 'voguePay_activation', 'VoguePay Activation', 'Активация VoguePay'),
(1043, 'voguePay_payment_enabled', 'VoguePay Payment Enabled', 'Включен Платеж VoguePay'),
(1044, 'voguePay_payment_disabled', 'VoguePay Payment Disabled', 'Оплата VoguePay Отключена'),
(1045, 'twocheckout_settings', 'Twocheckout Settings', 'Настройки Twocheckout'),
(1046, 'user_id', 'User Id', 'Идентификатор Пользователя'),
(1047, 'secret_key', 'Secret Key', 'Секретный Ключ'),
(1048, 'account_type', 'Account Type', 'Тип Счета'),
(1049, 'voguePay_settings', 'VoguePay Settings', 'Настройки VoguePay'),
(1050, 'merchant_id', 'Merchant Id', 'Идентификатор Продавца'),
(1051, 'manage_wallet_loads', 'Manage Wallet Loads', 'Управление Нагрузками Кошелька'),
(1052, 'customer', 'Customer', 'Покупатель'),
(1053, 'i_agree_with', 'I Agree With', 'Я Согласен С Этим'),
(1054, 'terms_&_conditions', 'Terms & Conditions', 'Условия использования'),
(1055, 'you_must_agree_with_terms_&_conditions', 'You Must Agree With Terms & Conditions', 'Вы Должны Согласиться С Правилами И Условиями'),
(1056, 'deposit', 'Deposit', 'Пополнить'),
(1057, 'transaction_info', 'Transaction Info', 'Информация О Транзакции'),
(1058, 'fully_paid', 'Fully Paid', 'Полностью Оплачено'),
(1059, 'payment_from_admin', 'Payment From Admin', 'Оплата От Админа'),
(1060, 'package_upgrade_history', 'Package Upgrade History', 'История Обновления Пакета'),
(1061, 'wrong_order_id!', 'Wrong Order Id!', 'Неправильный Идентификатор Заказа!'),
(1062, 'order_from', 'Order From', 'Заказ От'),
(1063, 'pending', 'Pending', 'Ожидаемый'),
(1064, 'status_updated_on', 'Status Updated On', 'Информация Обновлена'),
(1065, 'twocheckcout_payment', 'Twocheckcout Payment', 'Оплата Twocheckcout'),
(1066, 'twocheckcout_user', 'Twocheckcout User', 'Пользователь Twocheckcout'),
(1067, 'twocheckout_secret', 'Twocheckout Secret', 'Секрет Twocheckout'),
(1068, 'voguePay_payment', 'VoguePay Payment', 'VoguePay Оплата'),
(1069, 'details_on_delivery_status', 'Details On Delivery Status', 'Подробности О Статусе Доставки'),
(1070, 'manage_Admin_payments', 'Manage Admin Payments', 'Управление Платежами Администратора'),
(1071, 'total_due', 'Total Due', 'Итого Причитается'),
(1072, 'paid_amount', 'Paid Amount', 'Оплаченная Сумма'),
(1073, 'admin_payments', 'Admin Payments', 'Административные Платежи'),
(1074, 'manage_package_upgrade_history', 'Manage Package Upgrade History', 'Управление Историей Обновления Пакетов'),
(1075, 'view_upgrade_details', 'View Upgrade Details', 'Просмотр Сведений Об Обновлении'),
(1076, 'free', 'Free', 'Бесплатно'),
(1077, 'sub-categories_(max 4)', 'Sub-categories (max 4)', 'Подкатегории (максимум 4)'),
(1078, 'smtp_settings', 'Smtp Settings', 'Настройки Smtp'),
(1079, 'smtp_status', 'Smtp Status', 'Состояние Smtp'),
(1080, 'smtp_host', 'Smtp Host', 'Smtp Хост'),
(1081, 'smtp_port', 'Smtp Port', 'Smtp-Порт'),
(1082, 'smtp_user', 'Smtp User', 'Пользователь Smtp'),
(1083, 'smtp_password', 'Smtp Password', 'Пароль Smtp'),
(1084, 'voguepay', 'Voguepay', 'Voguepay'),
(1085, 'please_fill_the_captcha', 'Please Fill The Captcha', 'Пожалуйста, Заполните Капчу'),
(1086, 'incorrect_information', 'Incorrect Information', 'Неверная Информация'),
(1087, 'check_again', 'Check Again', 'Проверьте Еще Раз'),
(1088, 'this_field_is_required!', 'This Field Is Required!', 'Это Поле Обязательно!'),
(1089, 'blog_details', 'Blog Details', 'Подробности Блога'),
(1090, 'blog_has_been_uploaded!', 'Blog Has Been Uploaded!', 'Блог Был Загружен!'),
(1091, 'provide_payment_info', 'Provide Payment Info', 'Предоставьте Платежную Информацию'),
(1092, 'view_status', 'View Status', 'Просмотр Состояния'),
(1093, 'successfully_saved!', 'Successfully Saved!', 'Успешно Спасен!'),
(1094, 'no_payment_info_provided', 'No Payment Info Provided', 'Информация Об Оплате Не Предоставляется'),
(1095, 'no_product_from_admin', 'No Product From Admin', 'Нет Продукта От Админа'),
(1096, 'wallet_balance', 'Wallet Balance', 'Баланс Кошелька'),
(1097, 'captcha_status', 'Captcha Status', 'Статус Капчи'),
(1098, 'manage_email_templates', 'Manage Email Templates', 'Управление Шаблонами Электронной Почты'),
(1099, 'Password Reset Email', 'Password Reset Email', 'Сброс Пароля Email'),
(1100, 'Account Approval Email', 'Account Approval Email', 'Электронная Почта Утверждения Учетной Записи'),
(1101, 'Membership Upgrade Email', 'Membership Upgrade Email', 'Электронная Почта Для Обновления Членства'),
(1102, 'Vendors Account Opening', 'Vendors Account Opening', 'Открытие Счета Поставщиков'),
(1103, 'Users Account Opening', 'Users Account Opening', 'Открытие Учетной Записи Пользователя'),
(1104, 'Admins Account Opening', 'Admins Account Opening', 'Открытие Счета Администраторов'),
(1105, 'email_body', 'Email Body', 'Тело Электронной Почты'),
(1106, 'N.B', 'N.B', 'P.S.'),
(1107, 'do_not_change_the_variables_like', 'Do Not Change The Variables Like', 'Не Меняйте Переменные Типа'),
(1108, 'choose_background_theme', 'Choose Background Theme', 'Выберите Фоновую Тему'),
(1109, 'home_default_currency', 'Home Default Currency', 'Главная Валюта По Умолчанию'),
(1110, 'system_default_currency', 'System Default Currency', 'Валюта Системы По Умолчанию'),
(1111, 'set_currency_format', 'Set Currency Format', 'Установить Формат Валюты'),
(1112, 'currency_format', 'Currency Format', 'Формат Валюты'),
(1113, 'symbol_format', 'Symbol Format', 'Формат Символа'),
(1114, 'no_of_decimals', 'No Of Decimals', 'Нет Десятичных Знаков'),
(1115, 'all_currencies', 'All Currencies', 'Все Валюты'),
(1116, 'product_bundle', 'Product Bundle', 'Пакет Продуктов'),
(1117, 'manage_product_bundle', 'Manage Product Bundle', 'Управление Пакетом Продуктов'),
(1118, 'add_product_bundle_entry_taken!', 'Add Product Bundle Entry Taken!', 'Добавить Взятую Запись Пакета продуктов'),
(1119, 'add_product_bundle', 'Add Product Bundle', 'Добавить Пакет Продуктов'),
(1120, 'create_product_bundle', 'Create Product Bundle', 'Создание Пакета Продуктов'),
(1121, 'back_to_product_bundle_list', 'Back To Product Bundle List', 'Вернуться К Списку Пакетов Продуктов'),
(1122, 'bundle_stock', 'Bundle Stock', 'Пакет Акций'),
(1123, 'bundle_details', 'Bundle Details', 'Детали Пакета'),
(1124, 'bundle_title', 'Bundle Title', 'Название Пакета'),
(1125, 'add_products', 'Add Products', 'Добавить Продукты'),
(1126, 'add_products_from_here', 'Add Products From Here', 'Добавить Продукты Отсюда'),
(1127, 'add', 'Add', 'Добавить'),
(1128, 'add_more_products', 'Add More Products', 'Добавьте Больше Продуктов'),
(1129, 'bundle_tax', 'Bundle Tax', 'Пакетный Налог'),
(1130, 'bundle_discount', 'Bundle Discount', 'Пакет Скидок'),
(1131, 'product_bundle_has_been_uploaded!', 'Product Bundle Has Been Uploaded!', 'Пакет Продуктов Уже Загружен!'),
(1132, 'No Products are available for this brand', 'No Products Are Available For This Brand', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1133, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1134, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1135, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1136, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1137, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1138, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1139, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1140, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1141, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1142, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1143, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1144, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1145, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1146, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1147, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1148, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1149, 'current_stock', 'Current Stock', 'Текущий Запас'),
(1150, 'edit_product_bundle', 'Edit Product Bundle', 'Редактирование Пакета Продуктов'),
(1151, 'No brands are available for this sub category', 'No Brands Are Available For This Sub Category', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1152, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1153, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1154, 'product_bundle_has_been_edited!', 'Product Bundle Has Been Edited!', 'Пакет Продуктов Был Отредактирован!'),
(1155, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1156, 'view_product_bundle', 'View Product Bundle', 'Просмотр Пакета Продуктов'),
(1157, 'product_name', 'Product Name', 'Название Продукта'),
(1158, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1159, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1160, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1161, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1162, 'add_bundle_quantity', 'Add Bundle Quantity', 'Добавить Количество Пакетов'),
(1163, 'reduce_bundle_quantity', 'Reduce Bundle Quantity', 'Уменьшите количество товаров'),
(1164, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1165, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1166, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1167, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1168, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1169, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1170, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1171, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1172, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1173, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1174, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1175, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1176, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1177, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1178, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1179, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1180, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1181, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1182, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1183, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1184, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1185, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1186, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1187, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1188, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1189, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1190, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1191, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1192, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1193, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1194, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1195, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1196, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1197, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1198, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1199, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1200, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1201, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1202, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1203, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1204, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1205, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1206, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1207, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1208, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1209, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1210, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1211, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1212, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1213, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1214, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1215, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1216, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1217, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1218, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1219, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1220, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1221, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1222, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1223, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1224, 'physical', 'Physical', 'Физический'),
(1225, 'digital', 'Digital', 'Цифровой'),
(1226, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1227, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1228, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1229, 'bundle', 'Bundle', 'Пакет'),
(1230, 'most', 'Most', 'Наиболее'),
(1231, 'viewed', 'Viewed', 'Рассматриваемый'),
(1232, 'Products_:', 'Products :', 'Продукты :'),
(1233, 'added_by:', 'Added By:', 'Добавлено Автором:'),
(1234, 'bundle_rated_successfully', 'Bundle Rated Successfully', 'Пакет Успешно Оценен'),
(1235, 'bundle_rating_failed', 'Bundle Rating Failed', 'Оценка Пакета Не Удалась'),
(1236, 'you_already_rated_this_bundle', 'You Already Rated This Bundle', 'Вы Уже Оценили Этот Пакет'),
(1237, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1238, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1239, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1240, 'google_analytics', 'Google Analytics', 'Google Analytics'),
(1241, 'tracking_id', 'Tracking Id', 'Идентификатор Отслеживания'),
(1242, 'google_analytics_settings', 'Google Analytics Settings', 'Настройки Google Analytics'),
(1243, 'manage_pay_to_vendor', 'Manage Pay To Vendor', 'Управление Оплатой Поставщику'),
(1244, 'google_analytics_enabled!', 'Google Analytics Enabled!', 'Google Analytics Включен!'),
(1245, 'google_analytics_disabled!', 'Google Analytics Disabled!', 'Google Analytics Отключена!'),
(1246, 'show_vendor_website', 'Show Vendor Website', 'Показать Веб-Сайт Поставщика'),
(1247, 'vendor_show_enabled', 'Vendor Show Enabled', 'Включено Отображение Поставщика'),
(1248, 'vendor_show_disabled', 'Vendor Show Disabled', 'Отображение Поставщика Отключено'),
(1249, 'show_vendors', 'Show Vendors', 'Показать Продавцов'),
(1250, 'product_bundle_(_show_/_hide_)', 'Product Bundle ( Show / Hide )', 'Пакет Продуктов ( Показать / Скрыть )'),
(1251, 'bundle_product_section_updated!', 'Bundle Product Section Updated!', 'Обновлен Раздел Продукта!'),
(1252, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1253, 'confirm_payment', 'Confirm Payment', 'Подтвердите Оплату'),
(1254, 'bundled_product', 'Bundled Product', 'Комплектный Продукт'),
(1255, 'available_brands', 'Available Brands', 'Доступные Бренды'),
(1256, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1257, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1258, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1259, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1260, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1261, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1262, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1263, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1264, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1265, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1266, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории');
INSERT INTO `language` (`word_id`, `word`, `english`, `lang_0`) VALUES
(1267, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1268, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1269, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1270, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1271, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1272, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1273, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1274, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1275, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1276, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1277, 'bundled_products', 'Bundled Products', 'Упакованные Продукты'),
(1278, 'purchase_summary', 'Purchase Summary', 'Сводка Покупок'),
(1279, 'others_info', 'Others Info', 'Другие Сведения'),
(1280, 'personal_information', 'Personal Information', 'Личная Информация'),
(1281, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1282, 'edit_coupon', 'Edit Coupon', 'Изменить Купон'),
(1283, 'coupon_discount_activated', 'Coupon Discount Activated', 'Купон Скидка Активирована'),
(1284, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1285, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1286, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', 'Никакие Бренды Не Доступны Для Этой Подкатегории'),
(1287, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1288, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1289, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1290, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1291, '_added_to_wishlist', ' Added To Wishlist', 'Добавлено В Список Желаний'),
(1292, 'thanks_for_registration', 'Thanks For Registration', 'Спасибо За Регистрацию'),
(1293, 'you_have_to_wait_for_admin_approval', 'You Have To Wait For Admin Approval', 'Вам Нужно Дождаться Одобрения Администратора'),
(1294, 'approval_confirmation_will_be_sent_to_your_email', 'Approval Confirmation Will Be Sent To Your Email', 'Проверьте Свою Электронную Почту'),
(1295, 'check_your_email', 'Check Your Email', 'Проверьте Свою Электронную Почту'),
(1296, 'after_confirmation_you_can_', 'After Confirmation You Can ', 'После Подтверждения Вы Можете'),
(1297, 'login_from_here', 'Login From Here', 'Войдите В Систему Отсюда'),
(1298, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1299, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1300, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1301, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1302, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1303, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1304, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1305, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1306, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1307, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1308, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1309, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1310, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1311, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1312, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1313, 'vendor_payment_status', 'Vendor Payment Status', 'Статус Оплаты Поставщика'),
(1314, 'cash', 'Cash', 'Наличными'),
(1315, 'post_product', 'Post Product', 'Пост Продукт'),
(1316, 'fill_the_form_to_post_the_product', 'Fill The Form To Post The Product', 'Заполните Форму Для Размещения Товара'),
(1317, 'processing..', 'Processing..', 'Обработка..'),
(1318, 'Apply', 'Apply', 'Применять'),
(1319, 'admin_payments_details', 'Admin Payments Details', 'Детали Платежей Администратора'),
(1320, 'choose_a_country_first', 'Choose A Country First', 'Сначала Выберите Страну'),
(1321, 'select_a_category', 'Select A Category', 'Выберите Категорию'),
(1322, 'select_a_category_first', 'Select A Category First', 'Сначала Выберите Категорию'),
(1323, 'new_message', 'New Message', 'Новое Сообщение'),
(1324, '_compared', ' Compared', 'Сверить'),
(1325, 'paid', 'Paid', 'Оплачено'),
(1326, 'loading...', 'Loading...', 'Загрузка...'),
(1327, 'condition', 'Condition', 'Состояние'),
(1328, 'select_a_condition', 'Select A Condition', 'Выберите Условие'),
(1329, 'used', 'Used', 'Используемый'),
(1330, 'unit(e.g_Kg,Pc etc)', 'Unit(e.g Kg,Pc Etc)', 'Единица измерения(например,кг, ПК и т. д)'),
(1331, 'unit_(e.g_Kg,_Pc_etc)', 'Unit (e.g Kg, Pc Etc)', 'Единица измерения (например, кг, ПК и т. д)'),
(1332, 'unit_(Kg,_Pc_etc)', 'Unit (Kg, Pc Etc)', 'Единица Измерения (Кг, Шт И Т. Д)'),
(1333, 'choose_files', 'Choose Files', 'Выберите Файлы'),
(1334, 'location', 'Location', 'Расположение'),
(1335, 'additional_information', 'Additional Information', 'дополнительная информация'),
(1336, 'product_uploaded_successfully!', 'Product Uploaded Successfully!', 'Товар Успешно Загружен!'),
(1337, 'product_upload_failed!', 'Product Upload Failed!', 'Загрузка Продукта Не Удалась!'),
(1338, 'your_remaining_product_upload_amount_is:', 'Your Remaining Product Upload Amount Is:', 'Ваша Оставшаяся Сумма Загрузки Продукта Составляет:'),
(1339, 'your_remaining_product_upload_amount_is:_', 'Your Remaining Product Upload Amount Is: ', 'Ваша Оставшаяся Сумма Загрузки Продукта Составляет:'),
(1340, 'please_purchase_a_package_to_upload_more', 'Please Purchase A Package To Upload More', 'Пожалуйста, Купите Пакет, Чтобы Загрузить Больше'),
(1341, 'purchase_package', 'Purchase Package', 'Пакет Покупки'),
(1342, 'please_purchase_a_package_to_upload_more_products.', 'Please Purchase A Package To Upload More Products.', 'Пожалуйста, Купите Пакет, Чтобы Загрузить Больше Продуктов.'),
(1343, 'your_remaining_product_upload_amount:_', 'Your Remaining Product Upload Amount: ', 'Оставшаяся Сумма Загрузки Вашего Продукта:'),
(1344, 'remaining_product_upload_amount:_', 'Remaining Product Upload Amount: ', 'Оставшаяся Сумма Загрузки Продукта:'),
(1345, 'confirm_your_upload', 'Confirm Your Upload', 'Подтвердите Свою Загрузку'),
(1346, 'confirm', 'Confirm', 'Подтверждать'),
(1347, 'uploading_a_product_will_cost_you_1_upload_amount', 'Uploading A Product Will Cost You 1 Upload Amount', 'Загрузка Продукта Обойдется Вам В 1 Сумму Загрузки'),
(1348, 'uploading_a_product_will_cost_you_1_upload_amount</br>after_uploading_a_product_you_can\'t_edit_it', 'Uploading A Product Will Cost You 1 Upload Amount</br>after Uploading A Product You Can\'t Edit It', 'Загрузка Продукта Обойдется Вам В 1 Сумму Загрузки после загрузки продукта вы не можете его редактировать'),
(1349, 'uploading_a_product_will_cost_you_1_upload_amount</br><span class=\"text-danger\">After_uploading_a_product_you_can\'t_edit_it</span>', 'Uploading A Product Will Cost You 1 Upload Amount</br><span Class=\"text-danger\">After Uploading A Product You Can\'t Edit It</span>', 'Загрузка Продукта Обойдется Вам В 1 Сумму Загрузки После загрузки продукта вы не можете его редактировать'),
(1350, 'uploading_a_product_will_cost_you_1_upload_amount</br><b class=\"text-danger\">After_uploading_a_product_you_can\'t_edit_it</b>', 'Uploading A Product Will Cost You 1 Upload Amount</br><b Class=\"text-danger\">After Uploading A Product You Can\'t Edit It</b>', 'Загрузка продукта обойдется вам в 1 сумму Загрузки после загрузки продукта вы не сможете его редактировать'),
(1351, 'uploading_a_product_will_cost_you_1_upload_amount</br><b class=\"text-danger\">After_uploading_a_product_you_can_not_edit_it_again</b>', 'Uploading A Product Will Cost You 1 Upload Amount</br><b Class=\"text-danger\">After Uploading A Product You Can Not Edit It Again</b>', 'Загрузка Продукта Обойдется Вам В 1 Сумму Загрузки После Загрузки Продукта Вы Не Сможете Отредактировать Его Снова'),
(1352, 'package_info', 'Package Info', 'Информация О Пакете'),
(1353, 'remaining_upload_amount', 'Remaining Upload Amount', 'Оставшаяся Сумма Загрузки'),
(1354, 'last_purchased_package', 'Last Purchased Package', 'Последний Купленный Пакет'),
(1355, 'current_package', 'Current Package', 'Текущий Пакет'),
(1356, 'purchase_time', 'Purchase Time', 'Время Покупки'),
(1357, 'customer\'s_uploaded_products', 'Customer\'s Uploaded Products', 'Загруженные продукты клиента'),
(1358, 'terms_conditions', 'Terms Conditions', 'Правила И Условия'),
(1359, 'premium_packeges', 'Premium Packeges', 'Премиум-Упаковка'),
(1360, 'product_by', 'Product By', 'Продукт'),
(1361, 'sold_by:', 'Sold By:', 'Продано Компанией:'),
(1362, 'seller:', 'Seller:', 'Продавец:'),
(1363, 'premium_packeges_for_customer', 'Premium Packeges For Customer', 'Наградные Packeges Для Клиента'),
(1364, 'product_upload_amount', 'Product Upload Amount', 'Сумма Загрузки Продукта'),
(1365, 'amount_of', 'Amount Of', 'Количество'),
(1366, 'product_upload', 'Product Upload', 'Загрузка Продукта'),
(1367, 'times', 'Times', 'Время'),
(1368, 'seller:_', 'Seller: ', 'Продавец:'),
(1369, 'seller_email:', 'Seller Email:', 'Электронная Почта Продавца:'),
(1370, 'seller_phone:', 'Seller Phone:', 'Телефон Продавца:'),
(1371, 'not_given', 'Not Given', 'Не Дано'),
(1372, 'phone_no.:', 'Phone No.:', 'Телефона Нет.:'),
(1373, 'express_interest:', 'Express Interest:', 'Выражать Заинтересованность:'),
(1374, 'direct_messages:', 'Direct Messages:', 'Прямые Сообщения:'),
(1375, 'photo_gallery:', 'Photo Gallery:', 'Фотогалерея:'),
(1376, 'select_a_payment_method', 'Select A Payment Method', 'Выберите Способ Оплаты'),
(1377, 'please_wait', 'Please Wait', 'пожалуйста подождите'),
(1378, 'confirm_purchase', 'Confirm Purchase', 'Подтвердите Покупку'),
(1379, 'selected', 'Selected', 'Выбранный'),
(1380, 'premium_packege', 'Premium Packege', 'Премиальный Пакет'),
(1381, 'packege', 'Packege', 'Пакет'),
(1382, 'back_to_packege_list', 'Back To Packege List', 'Вернуться К Списку Упаковщиков'),
(1383, 'edit_packege', 'Edit Packege', 'Редактировать Packege'),
(1384, 'location:', 'Location:', 'Расположение:'),
(1385, 'packege_name', 'Packege Name', 'Название Упаковки'),
(1386, 'amount_(USD)', 'Amount (USD)', 'Сумма (USD)'),
(1387, 'amount_of_product_upload', 'Amount Of Product Upload', 'Объем Загрузки Продукта'),
(1388, 'amount_($)', 'Amount ($)', 'Сумма ($)'),
(1389, 'packege_image', 'Packege Image', 'Изображение Упаковки'),
(1390, 'select_a_photo', 'Select A Photo', 'Выберите Фотографию'),
(1391, 'customer_products', 'Customer Products', 'Продукты Клиента'),
(1392, 'uploaded_products', 'Uploaded Products', 'Загруженные Продукты'),
(1393, 'your_uploaded_products', 'Your Uploaded Products', 'Ваши Загруженные Продукты'),
(1394, 'unvailable', 'Unvailable', 'Неприступный'),
(1395, 'publish/unpublish', 'Publish/unpublish', 'Опубликовать / не публиковать'),
(1396, 'publish/_unpublish', 'Publish/ Unpublish', 'Опубликовать/ Не Публиковать'),
(1397, 'product_published', 'Product Published', 'Продукт Опубликован'),
(1398, 'product_unpublished', 'Product Unpublished', 'Продукт Не опубликован'),
(1399, 'Unpublish', 'Unpublish', 'Не опубликовано'),
(1400, 'Published', 'Published', 'Опубликованный'),
(1401, 'Unpublished', 'Unpublished', 'Не опубликовано'),
(1402, 'packege_purchase_failed!', 'Packege Purchase Failed!', 'Пакеж Покупка Не Удалась!'),
(1403, 'packege_purchase_successfully!', 'Packege Purchase Successfully!', 'Удачная Покупка Packege!'),
(1404, 'purchasing..', 'Purchasing..', 'Совершение покупок..'),
(1405, 'premium_packages', 'Premium Packages', 'Премиальные Пакеты'),
(1406, 'premium_packages_for_customer', 'Premium Packages For Customer', 'Премиальные Пакеты Для Клиентов'),
(1407, 'premium_package', 'Premium Package', 'Премиальный Пакет'),
(1408, 'package', 'Package', 'Пакет'),
(1409, 'back_to_package_list', 'Back To Package List', 'Вернуться К Списку Пакетов'),
(1410, 'edit_package', 'Edit Package', 'Редактировать Пакет'),
(1411, 'package_name', 'Package Name', 'Имя Пакета'),
(1412, 'package_image', 'Package Image', 'Изображение Пакета'),
(1413, 'customer_uploaded_products', 'Customer Uploaded Products', 'Загруженные Клиентом Продукты'),
(1414, 'back_to_customer_product_list', 'Back To Customer Product List', 'Вернуться К Списку Продуктов Клиента'),
(1415, 'uploaded_by', 'Uploaded By', 'Загружено Компанией'),
(1416, 'customer_status', 'Customer Status', 'Статус Клиента'),
(1417, 'customer_package_payments', 'Customer Package Payments', 'Оплата Пакета Клиента'),
(1418, 'customer_package_payment', 'Customer Package Payment', 'Оплата Пакета Клиента'),
(1419, 'back_to_package_payment_list', 'Back To Package Payment List', 'Вернуться К Списку Оплаты Пакета'),
(1420, 'customer_name', 'Customer Name', 'Имя Клиента'),
(1421, 'payment_type', 'Payment Type', 'Тип Оплаты'),
(1422, 'view_package_payment', 'View Package Payment', 'Просмотр Оплаты Пакета'),
(1423, 'details_of_package_payment', 'Details Of Package Payment', 'Детали Оплаты Пакета'),
(1424, 'purchase_datetime', 'Purchase Datetime', 'Дата И Время Покупки'),
(1425, 'change_availability_status', 'Change Availability Status', 'Изменение Статуса Доступности'),
(1426, 'package_payment_info', 'Package Payment Info', 'Информация Об Оплате Пакета'),
(1427, 'purchase_date', 'Purchase Date', 'Дата Покупки'),
(1428, 'admin_status', 'Admin Status', 'Статус Администратора'),
(1429, 'not_available_payment_info', 'Not Available Payment Info', 'Нет Доступной Платежной Информации'),
(1430, 'availability_status', 'Availability Status', 'Статус Доступности'),
(1431, 'sold', 'Sold', 'Продано'),
(1432, 'detailed_information', 'Detailed Information', 'Подробная Информация'),
(1433, 'customer_product_(_show_/_hide_)', 'Customer Product ( Show / Hide )', 'Клиентский Продукт ( Показать / Скрыть )'),
(1434, 'number_of_product_(_to_show_)', 'Number Of Product ( To Show )', 'Количество Продукта (Показать )'),
(1435, 'customer_product_section_updated!', 'Customer Product Section Updated!', 'Обновлен Раздел Продукта Клиента!'),
(1436, 'customer_products_section_updated!', 'Customer Products Section Updated!', 'Обновлен Раздел Товаров Для Клиентов!'),
(1437, 'product_bundle_activation', 'Product Bundle Activation', 'Активация Пакета Продуктов'),
(1438, 'product_bundle_enabled', 'Product Bundle Enabled', 'Пакет Продуктов Включен'),
(1439, 'product_bundle_disabled', 'Product Bundle Disabled', 'Пакет Продуктов Отключен'),
(1440, 'customer_product_activation', 'Customer Product Activation', 'Активация Продукта Клиента'),
(1441, 'customer_product_enabled', 'Customer Product Enabled', 'Клиентский Продукт Включен'),
(1442, 'customer_product_disabled', 'Customer Product Disabled', 'Клиентский Продукт Отключен'),
(1443, 'seller_informations', 'Seller Informations', 'Информация О Продавце'),
(1444, 'classifieds', 'Classifieds', 'Доска объявлений'),
(1445, 'classifieds_products', 'Classifieds Products', 'Объявления Продукты'),
(1446, 'classified_products', 'Classified Products', 'Классифицированные Продукты'),
(1447, 'classified_product_activation', 'Classified Product Activation', 'Активация Классифицированного Продукта'),
(1448, 'Share', 'Share', 'Поделиться'),
(1449, 'share_links', 'Share Links', 'Поделиться Ссылками'),
(1450, 'price:', 'Price:', 'Цена:'),
(1451, 'condition:', 'Condition:', 'Состояние:'),
(1452, 'product_search', 'Product Search', 'Поиск Продукта'),
(1453, 'all_type', 'All Type', 'Все Типы'),
(1454, 'search_by_brand_name', 'Search By Brand Name', 'Поиск По Фирменному Наименованию'),
(1455, 'back_to_profile', 'Back To Profile', 'Вернуться К Профилю'),
(1456, 'wallet_', 'Wallet ', 'Бумажник'),
(1457, 'search_by_brand', 'Search By Brand', 'Поиск По Бренду'),
(1458, 'brand:_', 'Brand: ', 'Бренд:'),
(1459, '_seller:', ' Seller:', 'Продавец:'),
(1460, 'seller', 'Seller', 'Продавец'),
(1461, 'seller_email', 'Seller Email', 'Электронная Почта Продавца'),
(1462, 'phone_no', 'Phone No', 'Телефон Нет'),
(1463, 'no_specification_found!', 'No Specification Found!', 'Спецификация Не Найдена!'),
(1464, 'payumoney', 'Payumoney', 'Payumoney'),
(1465, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', 'Никакие Продукты Не Доступны Для Этого Бренда'),
(1466, 'pay_u_money_settings', 'Pay U Money Settings', 'Оплата U Денежные Настройки'),
(1467, 'merchant_key', 'Merchant Key', 'Ключ Торговца'),
(1468, 'merchant_salt', 'Merchant Salt', 'Продавец'),
(1469, 'pay_u_money_activation', 'Pay U Money Activation', 'Активация Pay U Money'),
(1470, 'pay_u_money_payment_enabled', 'Pay U Money Payment Enabled', 'Оплата U Денежный Платеж Включен'),
(1471, 'pay_u_money_payment_disabled', 'Pay U Money Payment Disabled', 'Оплата Pay U Money Отключена'),
(1472, 'payUmoney_payment', 'PayUmoney Payment', 'Оплата PayUmoney'),
(1473, 'payUmoney_merchant_key', 'PayUmoney Merchant Key', 'PayUmoney Merchant Key'),
(1474, 'payUmoney_merchant_salt', 'PayUmoney Merchant Salt', 'PayUmoney Merchant Salt'),
(1475, 'video', 'Video', 'Видео'),
(1476, 'if_you_need_to_change_this_video_for_your_product_,_please_click_here...', 'If You Need To Change This Video For Your Product , Please Click Here...', 'Если Вам Нужно Изменить Это Видео Для Вашего Продукта , Пожалуйста, Нажмите Здесь...'),
(1477, 'change_video', 'Change Video', 'Изменить Видео'),
(1478, 'wallet_system', 'Wallet System', 'Система Бумажника'),
(1479, 'wallet_system_enabled', 'Wallet System Enabled', 'Система Кошелька Включена'),
(1480, 'wallet_system_disabled', 'Wallet System Disabled', 'Система Кошелька Отключена'),
(1481, 'Vendor Registration Email To Admin', 'Vendor Registration Email To Admin', 'Регистрация Поставщика По Электронной Почте Администратору'),
(1482, 'Admin to Vendor Payment', 'Admin To Vendor Payment', 'Администрирование Для Оплаты Поставщику'),
(1483, 'Vendor Package Upgrade', 'Vendor Package Upgrade', 'Обновление Пакета Поставщика'),
(1484, 'Vendor Payment', 'Vendor Payment', 'Оплата Поставщику'),
(1485, 'your_email_address', 'Your Email Address', 'Ваш Адрес Электронной Почты'),
(1486, 'already_uploaded_maximum_products!', 'Already Uploaded Maximum Products!', 'Уже Загружено Максимальное Количество Продуктов!'),
(1487, 'upgrade_your_membership', 'Upgrade Your Membership', 'Обновите Свое Членство'),
(1488, 'upgrade_membership', 'Upgrade Membership', 'Обновление Членства'),
(1489, 'delete_contents', 'Delete Contents', 'Удалить Содержимое'),
(1490, 'delete_all_categories', 'Delete All Categories', 'Удалить Все Категории'),
(1491, 'delete_all_products', 'Delete All Products', 'Удалить Все Продукты'),
(1492, 'delete_all_brands', 'Delete All Brands', 'Удалить Все Бренды'),
(1493, 'delete_all_classified', 'Delete All Classified', 'Удалить Все Классифицированные'),
(1494, 'Are You Sure You Want to Delete All Products?', 'Are You Sure You Want To Delete All Products?', 'Вы Уверены, Что Хотите Удалить Все Продукты?'),
(1495, 'guest_checkout', 'Guest Checkout', 'Гостевой Выезд'),
(1496, 'guest_id', 'Guest Id', 'Идентификатор Гостя'),
(1497, 'invoice_link:', 'Invoice Link:', 'Ссылка На Счет-Фактуру:'),
(1498, 'guest_id:', 'Guest Id:', 'Идентификатор Гостя:'),
(1499, 'deleting_all_categories_will_also_result_in_deleting_all_sub-categories_under_it,_are_you_sure_you_want_to_delete_all_categories?', 'Deleting All Categories Will Also Result In Deleting All Sub-categories Under It, Are You Sure You Want To Delete All Categories?', 'Удаление всех категорий также приведет к удалению всех подкатегорий под ним, вы уверены, что хотите удалить все категории?'),
(1500, 'Are You Sure You Want to Delete All The Brands?', 'Are You Sure You Want To Delete All The Brands?', 'Вы Уверены, Что Хотите Удалить Все Бренды?'),
(1501, 'delete_all_classifieds', 'Delete All Classifieds', 'Удалить Все Объявления'),
(1502, 'invoice_link', 'Invoice Link', 'Ссылка На Счет-Фактуру'),
(1503, 'select_sub_category', 'Select Sub Category', 'Выберите Подкатегорию'),
(1504, 'select_product', 'Select Product', 'Выберите Продукт'),
(1505, 'guest_checkout_enabled', 'Guest Checkout Enabled', 'Включен Гостевой Выезд'),
(1506, 'guest_checkout_disabled', 'Guest Checkout Disabled', 'Гостевой Выезд Отключен'),
(1507, 'vendor_commission', 'Vendor Commission', 'Комиссия Поставщика'),
(1508, 'vendor_commission_enabled', 'Vendor Commission Enabled', 'Включена Комиссия Поставщика'),
(1509, 'vendor_commission_disabled', 'Vendor Commission Disabled', 'Комиссия Поставщика Отключена'),
(1510, 'vendor_package', 'Vendor Package', 'Пакет Поставщика'),
(1511, 'vendor_package_enabled', 'Vendor Package Enabled', 'Пакет Поставщика Включен'),
(1512, 'vendor_package_disabled', 'Vendor Package Disabled', 'Пакет Поставщика Отключен'),
(1513, 'vendor_commissions', 'Vendor Commissions', 'Комиссионные Поставщикам'),
(1514, 'set_vendor_commission', 'Set Vendor Commission', 'Установить Комиссию Поставщика'),
(1515, 'total_commission', 'Total Commission', 'Общая Комиссия'),
(1516, 'commission_on_paid', 'Commission On Paid', 'Комиссия По Оплате Труда'),
(1517, 'sslcommerz', 'Sslcommerz', 'Sslcommerz'),
(1518, 'commission_amount', 'Commission Amount', 'Сумма Комиссии'),
(1519, 'sslcommerz_activation', 'Sslcommerz Activation', 'Активация Sslcommerz'),
(1520, 'sslcommerz_payment_enabled', 'Sslcommerz Payment Enabled', 'Оплата Sslcommerz Включена'),
(1521, 'sslcommerz_payment_disabled', 'Sslcommerz Payment Disabled', 'Оплата Sslcommerz Отключена'),
(1522, 'SSLCommerz_settings', 'SSLCommerz Settings', 'Настройки SSLCommerz'),
(1523, 'ssl_store_id', 'Ssl Store Id', 'Идентификатор Хранилища Ssl'),
(1524, 'ssl_store_password', 'Ssl Store Password', 'Пароль Хранилища Ssl'),
(1525, 'commission', 'Commission', 'Комиссия'),
(1526, 'header_menu', 'Header Menu', 'Меню Заголовка'),
(1527, 'header', 'Header', 'Заголовок'),
(1528, 'todays_deal_(_show_/_hide_)', 'Todays Deal ( Show / Hide )', 'Сегодняшняя Сделка ( Показать / Скрыть )'),
(1529, 'flash_section_updated!', 'Flash Section Updated!', 'Обновлен Раздел Flash!'),
(1530, 'todays_deal_products', 'Todays Deal Products', 'Сегодняшние Продукты Сделки'),
(1531, 'latest_featured_products', 'Latest Featured Products', 'Последние Популярные Продукты'),
(1532, 'browse_all', 'Browse All', 'Просмотрите Все'),
(1533, 'Bulk upload', 'Bulk Upload', 'Массовая Загрузка'),
(1534, 'Product bulk upload', 'Product Bulk Upload', 'Массовая Загрузка Продукта'),
(1535, 'Physical product', 'Physical Product', 'Физический Продукт'),
(1536, 'Download product bulk upload skeleton file', 'Download Product Bulk Upload Skeleton File', 'Скачать Продукт Массовая Загрузка Файла Скелета'),
(1537, 'Download product bulk upload example file', 'Download Product Bulk Upload Example File', 'Скачать Файл Примера Массовой Загрузки Продукта'),
(1538, 'Sub Category', 'Sub Category', 'Подкатегория'),
(1539, 'Category Id', 'Category Id', 'Идентификатор Категории'),
(1540, 'Upload File', 'Upload File', 'Отправить файл'),
(1541, 'Digital product', 'Digital Product', 'Цифровой Продукт'),
(1542, 'Download digital product bulk upload skeleton file', 'Download Digital Product Bulk Upload Skeleton File', 'Скачать Цифровой Продукт Bulk Upload Skeleton File'),
(1543, 'Download digital produc _bulk upload example file', 'Download Digital Produc  Bulk Upload Example File', 'Скачать Пример Загрузки Цифрового Продукта Bulk Upload Example File'),
(1544, 'Products uploaded', 'Products Uploaded', 'Загруженные Продукты'),
(1545, 'Only this number of products will be uploaded from the xlsx file', 'Only This Number Of Products Will Be Uploaded From The Xlsx File', 'Только Это Количество Продуктов Будет Загружено Из Файла Xlsx'),
(1546, 'post_product_bulk', 'Post Product Bulk', 'Объем Постпродукта'),
(1547, 'File is not selected', 'File Is Not Selected', 'Файл Не Выбран'),
(1548, 'Upload your products', 'Upload Your Products', 'Загружайте Свои Продукты'),
(1549, 'Sub Category Id', 'Sub Category Id', 'Идентификатор Подкатегории'),
(1550, 'Category ID List', 'Category ID List', 'Список идентификаторов категорий'),
(1551, 'Sub Category ID List', 'Sub Category ID List', 'Список идентификаторов подкатегорий'),
(1552, 'Upload Products', 'Upload Products', 'Загрузка Продуктов'),
(1553, 'Brand ID List', 'Brand ID List', 'Список идентификаторов бренда'),
(1554, 'Category Name', 'Category Name', 'Название Категории'),
(1555, 'Sub Category IDs with Category ID', 'Sub Category IDs With Category ID', 'Идентификаторы подкатегорий с идентификатором категории'),
(1556, 'Sub Category Name', 'Sub Category Name', 'Название Подкатегории'),
(1557, 'Brand IDs', 'Brand IDs', 'Идентификаторы Брендов'),
(1558, 'Brand ID', 'Brand ID', 'Идентификатор бренда'),
(1559, 'Brand Name', 'Brand Name', 'торговая марка'),
(1560, 'Category IDs', 'Category IDs', 'Идентификаторы Категорий'),
(1561, 'Choose File', 'Choose File', 'Выберите файл'),
(1562, 'My Rating', 'My Rating', 'Мой Рейтинг'),
(1563, 'Log in to add/edit rating', 'Log In To Add/edit Rating', 'Войдите в систему, чтобы добавить/изменить рейтинг'),
(1564, 'You have to buy the product to give a review', 'You Have To Buy The Product To Give A Review', 'Вы Должны Купить Продукт, Чтобы Дать Отзыв'),
(1565, 'All Ratings', 'All Ratings', 'Все Рейтинги'),
(1566, 'No ratings yet', 'No Ratings Yet', 'Пока Никаких Рейтингов'),
(1567, 'All Category with ID', 'All Category With ID', 'Все категории с идентификатором'),
(1568, 'All Sub Category with ID and Category ID ', 'All Sub Category With ID And Category ID ', 'Все подкатегории с идентификатором и идентификатором категории'),
(1569, 'affiliation', 'Affiliation', 'Пункты Присоединения'),
(1570, 'affiliation_points', 'Affiliation Points', 'Пункты Присоединения'),
(1571, 'copied', 'Copied', 'Скопированный'),
(1572, 'Get Link', 'Get Link', 'Получить Ссылку'),
(1573, 'copy', 'Copy', 'Копировать'),
(1574, 'affiliate', 'Affiliate', 'Аффилиат'),
(1575, 'getting', 'Getting', 'Получение'),
(1576, 'getting link', 'Getting Link', 'Получение Ссылки'),
(1577, 'affiliation_settings', 'Affiliation Settings', 'Настройки Аффилированности'),
(1578, 'affiliation_validity', 'Affiliation Validity', 'Действительность Членства'),
(1579, 'After this many days the validation for affiliated code will expire', 'After This Many Days The Validation For Affiliated Code Will Expire', 'По Истечении Этого Количества Дней Срок Действия Валидации Аффилированного Кода Истечет'),
(1581, 'After this many days the validation for affiliated code will expire (default 30 days)', 'After This Many Days The Validation For Affiliated Code Will Expire (default 30 Days)', 'По истечении этого количества дней срок действия валидации аффилированного кода истекает (по умолчанию 30 дней) '),
(1582, 'ex: 15', 'Ex: 15', 'Пример: 15'),
(1583, 'Default 30 days', 'Default 30 Days', 'По Умолчанию 30 Дней'),
(1584, 'affiliation_point_to_currency_rate', 'Affiliation Point To Currency Rate', 'Точка Привязки К Курсу Валюты'),
(1585, 'ex: 2.56', 'Ex: 2.56', 'Пример: 2.56'),
(1586, '1 point = X mount of your currency', '1 Point = X Mount Of Your Currency', '1 Балл = X Монтирование Вашей Валюты'),
(1587, '1 point = X mount of your currency )', '1 Point = X Mount Of Your Currency )', '1 Балл = X Монтирование Вашей Валюты )'),
(1588, 'Putting 3.2 here means if you convert 10 affiliated points to wallet, you will get 10 x 3.2 = 32 of your currency', 'Putting 3.2 Here Means If You Convert 10 Affiliated Points To Wallet, You Will Get 10 X 3.2 = 32 Of Your Currency', 'Ставя 3.2 Здесь Означает, Что Если Вы Конвертируете 10 Аффилированных Баллов В Кошелек, Вы Получите 10 Х 3.2 = 32 Вашей Валюты'),
(1589, 'Default 1 A.P. = 1 Actual currency', 'Default 1 A.P. = 1 Actual Currency', 'По Умолчанию 1 A. P. = 1 Фактическая Валюта'),
(1590, 'affiliation_point_earnings', 'Affiliation Point Earnings', 'Доход От Точки Присоединения'),
(1591, 'affiliation_user', 'Affiliation User', 'Принадлежность Пользователя'),
(1592, 'points', 'Points', 'Очки'),
(1593, 'currency ', 'Currency ', 'Валюта'),
(1594, 'total earned points', 'Total Earned Points', 'Всего Заработанных Баллов'),
(1595, 'money converted to currency', 'Money Converted To Currency', 'Деньги Конвертируются В Валюту'),
(1596, 'You have no earnings from product affiliation', 'You Have No Earnings From Product Affiliation', 'У Вас Нет Дохода От Аффилированности С Продуктом'),
(1597, 'current_affiliation_link', 'Current Affiliation Link', 'Текущая Ссылка На Принадлежность'),
(1598, 'product_affiliation', 'Product Affiliation', 'Принадлежность продукта'),
(1599, 'product_affiliation_enabled', 'Product Affiliation Enabled', 'Включена Принадлежность к продукту'),
(1600, 'product_affiliation_disabled', 'Product Affiliation Disabled', 'Принадлежность к продукту Отключена'),
(1601, 'facebook_pixel_configuaration', 'Facebook Pixel Configuaration', 'Настройка пикселей Facebook'),
(1602, 'Facebook pixel settings', 'Facebook Pixel Settings', 'Настройка Пикселя Facebook'),
(1603, 'facebook_pixel_set', 'Facebook Pixel Set', 'Набор пикселей Facebook'),
(1604, 'Facebook pixel id', 'Facebook Pixel Id', 'Facebook Pixel Id'),
(1605, 'Write an seo friendly title within 60 characters', 'Write An Seo Friendly Title Within 60 Characters', 'Написать Заголовок Для SEO Не менее 60 Символов'),
(1606, 'Seo Friendly Title', 'Seo Friendly Title', 'Заголовок Для SEO'),
(1607, 'Write an seo friendly description within 160 characters', 'Write An Seo Friendly Description Within 160 Characters', 'Написать SEO Дружественное Описание В 160 Символов'),
(1609, 'Ex. Find best athletic shoes in North America and Europe', 'Ex. Find Best Athletic Shoes In North America And Europe', 'Например, Найти Лучшую Спортивную Обувь В Северной Америке И Европе'),
(1610, 'Seo Friendly Description', 'Seo Friendly Description', 'SEO Дружественное Описание'),
(1611, 'Ex. Find best products in London', 'Ex. Find Best Products In London', 'Например, Найти Лучшие Продукты В Лондоне'),
(1614, 'backup', 'Backup', 'Резервная копия'),
(1615, 'Get Backup of your script and data', 'Get Backup Of Your Script And Data', 'Получите Резервную Копию Вашего Скрипта И Данных'),
(1616, 'Get Backup', 'Get Backup', 'Получите Резервное Копирование'),
(1617, 'Backup completed', 'Backup Completed', 'Резервное копирование Завершено'),
(1618, 'Successful', 'Successful', 'Успешно'),
(1619, 'Update your script', 'Update Your Script', 'Обновите Свой Сценарий'),
(1620, 'Update your script, Current version', 'Update Your Script, Current Version', 'Обновите Свой Скрипт, Текущую Версию'),
(1621, 'Update your script, Current version is', 'Update Your Script, Current Version Is', 'Обновите Свой Скрипт, Текущая Версия'),
(1622, 'Update zip is uploaded', 'Update Zip Is Uploaded', 'Обновление индекса'),
(1623, 'Error', 'Error', 'Ошибка'),
(1624, 'This operation is disabled in demo', 'This Operation Is Disabled In Demo', 'Эта Операция Отключена В Демо-Версии'),
(1625, 'This operation is invalid for demo', 'This Operation Is Invalid For Demo', 'Эта Операция Недопустима Для Демо-Версии'),
(1626, 'facebook_pixel_configuration', 'Facebook Pixel Configuration', 'Настройка Пикселя Facebook'),
(1627, 'facebook_chat_configuration', 'Facebook Chat Configuration', 'Конфигурация чата Facebook'),
(1628, 'Facebook chat settings', 'Facebook Chat Settings', 'Настройки чата Facebook'),
(1629, 'Facebook page id', 'Facebook Page Id', 'Идентификатор страницы Facebook'),
(1630, 'Facebook chat logged in greeting', 'Facebook Chat Logged In Greeting', 'Чат Facebook Регистрируется В Поздравлении'),
(1631, 'Facebook chat logged out greeting', 'Facebook Chat Logged Out Greeting', 'Facebook Чат Вышел Из Системы Приветствие'),
(1632, 'Facebook chat theme color', 'Facebook Chat Theme Color', 'Цвет Темы Чата Facebook'),
(1633, 'Optional', 'Optional', 'Необязательный'),
(1674, 'Info/Comment', 'Info/Comment', 'Информация/Комментарий'),
(1675, 'delivery_or_payment', 'Delivery Or Payment', 'Доставка И Оплата'),
(1683, 'facebook_chat_set', 'Facebook Chat Set', 'Набор Чатов Facebook');

-- --------------------------------------------------------

--
-- Структура таблицы `language_list`
--

CREATE TABLE `language_list` (
  `language_list_id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `db_field` varchar(300) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `language_list`
--

INSERT INTO `language_list` (`language_list_id`, `name`, `db_field`, `status`) VALUES
(0, 'Русский', 'lang_0', 'ok'),
(1, 'English', 'english', 'ok');

-- --------------------------------------------------------

--
-- Структура таблицы `logo`
--

CREATE TABLE `logo` (
  `logo_id` int(11) NOT NULL,
  `name` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `logo`
--

INSERT INTO `logo` (`logo_id`, `name`) VALUES
(0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `membership`
--

CREATE TABLE `membership` (
  `membership_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `timespan` varchar(50) DEFAULT NULL,
  `pay_interval` varchar(50) DEFAULT NULL,
  `product_limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `membership`
--

INSERT INTO `membership` (`membership_id`, `title`, `price`, `timespan`, `pay_interval`, `product_limit`) VALUES
(1, 'Silver', '300', '30', '', 10),
(2, 'Platinum', '3500', '30', '', 50),
(7, 'Gold', '2000', '30', NULL, 25);

-- --------------------------------------------------------

--
-- Структура таблицы `membership_payment`
--

CREATE TABLE `membership_payment` (
  `membership_payment_id` int(11) NOT NULL,
  `vendor` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `membership` int(11) DEFAULT NULL,
  `method` varchar(30) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `membership_payment`
--

INSERT INTO `membership_payment` (`membership_payment_id`, `vendor`, `timestamp`, `amount`, `details`, `membership`, `method`, `status`) VALUES
(1, 16, 1555409541, 300, NULL, 1, 'paypal', 'due'),
(6, 3, 1474278958, 3500, '{\"mc_gross\":\"43.75\",\"protection_eligibility\":\"Ineligible\",\"address_status\":\"confirmed\",\"payer_id\":\"QXCY8C6X8J4VG\",\"tax\":\"0.00\",\"address_street\":\"1 Main St\",\"payment_date\":\"03:04:24 Sep 19, 2016 PDT\",\"payment_status\":\"Pending\",\"charset\":\"windows-1252\",\"address_zip\":\"95131\",\"first_name\":\"Active\",\"address_country_code\":\"US\",\"address_name\":\"Active IT\",\"notify_version\":\"3.8\",\"custom\":\"6\",\"payer_status\":\"verified\",\"business\":\"kadir_bm@yahoo.com\",\"address_country\":\"United States\",\"address_city\":\"San Jose\",\"quantity\":\"1\",\"verify_sign\":\"A6Fyo.RG2CmUHAdbJ1HeGZnSj3AWAuYRD2vHV92buB9WYMNNbxSvf6Un\",\"payer_email\":\"system@supershop.com\",\"txn_id\":\"6PN17817M0416733P\",\"payment_type\":\"instant\",\"last_name\":\"IT\",\"address_state\":\"CA\",\"receiver_email\":\"kadir_bm@yahoo.com\",\"pending_reason\":\"unilateral\",\"txn_type\":\"web_accept\",\"item_name\":\"\",\"mc_currency\":\"USD\",\"item_number\":\"\",\"residence_country\":\"US\",\"test_ipn\":\"1\",\"handling_amount\":\"0.00\",\"transaction_subject\":\"\",\"payment_gross\":\"43.75\",\"shipping\":\"0.00\",\"ipn_track_id\":\"26ff7ba5f0ef\"}', 2, 'paypal', 'paid'),
(7, 5, 1474568814, 300, '{\"mc_gross\":\"3.75\",\"protection_eligibility\":\"Ineligible\",\"address_status\":\"confirmed\",\"payer_id\":\"QXCY8C6X8J4VG\",\"tax\":\"0.00\",\"address_street\":\"1 Main St\",\"payment_date\":\"11:41:38 Sep 22, 2016 PDT\",\"payment_status\":\"Pending\",\"charset\":\"windows-1252\",\"address_zip\":\"95131\",\"first_name\":\"Active\",\"address_country_code\":\"US\",\"address_name\":\"Active IT\",\"notify_version\":\"3.8\",\"custom\":\"7\",\"payer_status\":\"verified\",\"business\":\"kadir_bm@yahoo.com\",\"address_country\":\"United States\",\"address_city\":\"San Jose\",\"quantity\":\"1\",\"verify_sign\":\"A.Z5yEeSJElINVLnLNYfrb750vgiAJdLRn38Ub6I-sD-cMvsd25mBIx-\",\"payer_email\":\"system@supershop.com\",\"txn_id\":\"1W646161MB662172C\",\"payment_type\":\"instant\",\"last_name\":\"IT\",\"address_state\":\"CA\",\"receiver_email\":\"kadir_bm@yahoo.com\",\"pending_reason\":\"unilateral\",\"txn_type\":\"web_accept\",\"item_name\":\"\",\"mc_currency\":\"USD\",\"item_number\":\"\",\"residence_country\":\"US\",\"test_ipn\":\"1\",\"handling_amount\":\"0.00\",\"transaction_subject\":\"\",\"payment_gross\":\"3.75\",\"shipping\":\"0.00\",\"ipn_track_id\":\"ef0d66381cdd0\"}', 1, 'paypal', 'paid'),
(8, 1, 1521619820, 300, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CX6D3Rh6VsMGvS\",\"object\":\"customer\",\"account_balance\":0,\"created\":1521619818,\"currency\":null,\"default_source\":\"card_1C821HKmGdRDZlHSwmXJ4Si8\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"bicyq@yahoo.com\",\"invoice_prefix\":\"0530537\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1C821YKmGdRDZlHSAV2SCPEB\",\"object\":\"charge\",\"amount\":30000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1C821YKmGdRDZlHSb3XnAy6N\",\"captured\":true,\"created\":1521619820,\"currency\":\"usd\",\"customer\":\"cus_CX6D3Rh6VsMGvS\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 1, 'stripe', 'paid'),
(9, 1, 1521620034, 300, NULL, 1, 'paypal', 'due'),
(10, 1, 1521620159, 300, NULL, 1, 'paypal', 'due'),
(11, 1, 1521620582, 300, NULL, 1, 'paypal', 'due'),
(12, 1, 1521620644, 300, '', 1, 'paypal', 'paid'),
(13, 10, 1525076695, 300, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_Cm5UQffha9h2YI\",\"object\":\"customer\",\"account_balance\":0,\"created\":1525076690,\"currency\":null,\"default_source\":\"card_1CMXJNKmGdRDZlHSzMKsk366\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"dixon@gmail.com\",\"invoice_prefix\":\"8BE2516\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CMXJYKmGdRDZlHSZyFpNHni\",\"object\":\"charge\",\"amount\":30000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CMXJZKmGdRDZlHSm1ufBbIk\",\"captured\":true,\"created\":1525076692,\"currency\":\"usd\",\"customer\":\"cus_Cm5UQffha9h2YI\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 1, 'stripe', 'paid'),
(14, 3, 1527065720, 300, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CuiBndcDg1uPoi\",\"object\":\"customer\",\"account_balance\":0,\"created\":1527065726,\"currency\":null,\"default_source\":\"card_1CUskZKmGdRDZlHS0C3mHdQf\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"demovendor.tom@gmail.com\",\"invoice_prefix\":\"2D329EB\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CUskmKmGdRDZlHS3hElyjCo\",\"object\":\"charge\",\"amount\":30000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CUsknKmGdRDZlHSklvk2Dlo\",\"captured\":true,\"created\":1527065728,\"currency\":\"usd\",\"customer\":\"cus_CuiBndcDg1uPoi\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 1, 'stripe', 'paid'),
(15, 16, 1530099145, 3500, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D7rc6ldZZFfVqC\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530099144,\"currency\":null,\"default_source\":\"card_1ChbseKmGdRDZlHSfJOumaUL\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"BC19F08\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChbssKmGdRDZlHSCsQxAX1q\",\"object\":\"charge\",\"amount\":350000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChbssKmGdRDZlHS1GntjkvY\",\"captured\":true,\"created\":1530099146,\"currency\":\"usd\",\"customer\":\"cus_D7rc6ldZZFfVqC\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 2, 'stripe', 'paid'),
(16, 16, 1530168298, 2000, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8ACvYDzZXIxFk\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530168298,\"currency\":null,\"default_source\":\"card_1Chts3KmGdRDZlHSFiZIHHEm\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"A938C83\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChtsEKmGdRDZlHS4JZBq5FO\",\"object\":\"charge\",\"amount\":200000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChtsFKmGdRDZlHSQ8v9io5D\",\"captured\":true,\"created\":1530168298,\"currency\":\"usd\",\"customer\":\"cus_D8ACvYDzZXIxFk\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 7, 'stripe', 'paid'),
(17, 16, 1530168373, 300, '{\"mc_gross\":\"300.00\",\"protection_eligibility\":\"Ineligible\",\"address_status\":\"confirmed\",\"payer_id\":\"RSS9FYUZWM7SC\",\"address_street\":\"99 White Fabien Court\",\"payment_date\":\"23:47:03 Jun 27, 2018 PDT\",\"payment_status\":\"Pending\",\"charset\":\"windows-1252\",\"address_zip\":\"37750\",\"first_name\":\"Hillary\",\"address_country_code\":\"US\",\"address_name\":\"Hillary Long\",\"notify_version\":\"3.9\",\"custom\":\"17\",\"payer_status\":\"unverified\",\"address_country\":\"United States\",\"address_city\":\"Voluptatem Omnis perspiciatis cum voluptatem qui beatae dolor duis\",\"quantity\":\"1\",\"verify_sign\":\"At7M.vjpvoOSoEuUejMvbAJc494kAx7kHh-1Y.52PvuWhoDgXxhsXz6a\",\"payer_email\":\"developer.activeitzone@gmail.com\",\"txn_id\":\"2Y8310662A433535N\",\"payment_type\":\"instant\",\"last_name\":\"Long\",\"address_state\":\"IN\",\"receiver_email\":\"alvi@gmail.com\",\"pending_reason\":\"unilateral\",\"txn_type\":\"web_accept\",\"item_name\":\"asdddddddddddd\",\"mc_currency\":\"USD\",\"item_number\":\"\",\"residence_country\":\"US\",\"test_ipn\":\"1\",\"transaction_subject\":\"\",\"payment_gross\":\"300.00\",\"ipn_track_id\":\"65414272c8c47\"}', 1, 'paypal', 'paid'),
(18, 16, 1530168775, 3500, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8AKObcFPP1vAV\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530168775,\"currency\":null,\"default_source\":\"card_1ChtzjKmGdRDZlHSbxWfgNJU\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"D1DE7D7\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChtzvKmGdRDZlHStJqXGEKC\",\"object\":\"charge\",\"amount\":350000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChtzwKmGdRDZlHSlohqyjOW\",\"captured\":true,\"created\":1530168775,\"currency\":\"usd\",\"customer\":\"cus_D8AKObcFPP1vAV\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 2, 'stripe', 'paid'),
(19, 16, 1530169135, 300, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8AQZCuS6xk8Hl\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530169134,\"currency\":null,\"default_source\":\"card_1Chu5YKmGdRDZlHSjo3NZYOX\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"C96D5D0\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Chu5jKmGdRDZlHSHmmPoSdN\",\"object\":\"charge\",\"amount\":30000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Chu5jKmGdRDZlHS4F0fMktr\",\"captured\":true,\"created\":1530169135,\"currency\":\"usd\",\"customer\":\"cus_D8AQZCuS6xk8Hl\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 1, 'stripe', 'paid'),
(20, 16, 1530169512, 3500, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8AWG4ROXH9sMs\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530169511,\"currency\":null,\"default_source\":\"card_1ChuBhKmGdRDZlHSGZRs8N4v\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"9184D2F\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChuBoKmGdRDZlHSLRuAsAcZ\",\"object\":\"charge\",\"amount\":350000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChuBoKmGdRDZlHSLVz78D7S\",\"captured\":true,\"created\":1530169512,\"currency\":\"usd\",\"customer\":\"cus_D8AWG4ROXH9sMs\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 2, 'stripe', 'paid'),
(21, 1, 1530439057, 2000, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D9Kz2ZUyQFOQQp\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530439057,\"currency\":null,\"default_source\":\"card_1Cj2J5KmGdRDZlHSvwNT3KqG\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"bicyq@yahoo.com\",\"invoice_prefix\":\"ADC7B23\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Cj2JKKmGdRDZlHSA2ZWo10C\",\"object\":\"charge\",\"amount\":200000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Cj2JKKmGdRDZlHSuWh2VsKJ\",\"captured\":true,\"created\":1530439058,\"currency\":\"usd\",\"customer\":\"cus_D9Kz2ZUyQFOQQp\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 7, 'stripe', 'paid'),
(22, 17, 1531638449, 3500, '', 2, 'cash', 'paid'),
(23, 17, 1531638483, 3500, '', 2, 'cash', 'paid'),
(24, 3, 1532428490, 3500, NULL, 2, 'PayUmoney', 'due'),
(25, 3, 1532428555, 3500, NULL, 2, 'PayUmoney', 'due'),
(28, 3, 1532430467, 2000, '{\"tran_id\":\"20180728\",\"val_id\":\"180724171133QXBFr94e14DEF7j\",\"amount\":\"2000\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"1960\",\"card_no\":\"\",\"bank_tran_id\":\"1807241711331wLRDkP38emj7r5\",\"status\":\"VALID\",\"tran_date\":\"2018-07-24 17:11:23\",\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"techr5affa68a7602c\",\"verify_sign\":\"33a9272de9c84e09dd866cfd2ff0d1f8\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_type,currency,currency_amount,currency_rate,currency_type,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"1139b0b541db8af03f4692dc5a95c78e5b34852e7dfca4151635eb9eb3101dd7\",\"currency_type\":\"BDT\",\"currency_amount\":\"2000.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"\",\"value_b\":\"\",\"value_c\":\"\",\"value_d\":\"\",\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 7, 'SSlcommerz', 'paid');

-- --------------------------------------------------------

--
-- Структура таблицы `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message_thread_id` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `view_status` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sender` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `reciever` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `package`
--

CREATE TABLE `package` (
  `package_id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `upload_amount` int(11) DEFAULT NULL,
  `image` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `package`
--

INSERT INTO `package` (`package_id`, `name`, `amount`, `upload_amount`, `image`) VALUES
(1, 'Default', '0', 2, '[{\"image\":\"plan_1.png\",\"thumb\":\"plan_1_thumb.png\"}]'),
(2, 'Bronze', '15', 10, '[{\"image\":\"plan_2.png\",\"thumb\":\"plan_2_thumb.png\"}]'),
(3, 'Silver', '25', 15, '[{\"image\":\"plan_3.png\",\"thumb\":\"plan_3_thumb.png\"}]'),
(4, 'Gold', '35', 20, '[{\"image\":\"plan_4.png\",\"thumb\":\"plan_4_thumb.png\"}]'),
(5, 'Platinum', '45', 25, '[{\"image\":\"plan_5.png\",\"thumb\":\"plan_5_thumb.png\"}]');

-- --------------------------------------------------------

--
-- Структура таблицы `package_payment`
--

CREATE TABLE `package_payment` (
  `package_payment_id` int(11) NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(30) DEFAULT NULL,
  `payment_status` varchar(30) DEFAULT NULL,
  `payment_details` longtext DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `purchase_datetime` int(11) DEFAULT NULL,
  `payment_code` varchar(50) DEFAULT NULL,
  `payment_timestamp` int(11) DEFAULT NULL,
  `expire` varchar(20) DEFAULT NULL,
  `expire_timestamp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `package_payment`
--

INSERT INTO `package_payment` (`package_payment_id`, `package_id`, `user_id`, `payment_type`, `payment_status`, `payment_details`, `amount`, `purchase_datetime`, `payment_code`, `payment_timestamp`, `expire`, `expire_timestamp`) VALUES
(0, NULL, 7, 'Wallet', 'paid', '', NULL, 1614684583, '2021030', 1614684583, 'no', NULL),
(1, 2, 7, 'Paypal', 'pending', 'testing', 15, 1526809102, '', 1527663094, '', 0),
(2, 2, 7, 'Paypal', 'pending', 'testing 1234', 15, 1526809416, '', 1527663451, '', 0),
(3, 2, 7, 'Paypal', 'due', 'none', 15, 1526809510, '', 1527663535, '', 0),
(4, 2, 7, 'Paypal', 'due', 'none', 15, 1526809641, '', 1527663565, '', 0),
(5, 2, 7, 'Paypal', 'due', 'none', 15, 1527054416, '', 1527663607, '', 0),
(6, 2, 7, 'Paypal', 'due', 'none', 15, 1527054430, '', 0, '', 0),
(7, 2, 7, 'Paypal', 'due', 'none', 15, 1527054448, '', 0, '', 0),
(8, 2, 7, 'Wallet', 'paid', '', 15, 1527505100, '2018058', 1527505100, 'no', 0),
(9, 2, 7, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CwcODJSgJ33IwX\",\"object\":\"customer\",\"account_balance\":0,\"created\":1527505467,\"currency\":null,\"default_source\":\"card_1CWj9EKmGdRDZlHSZ0dVOt0f\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"6C5D458\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CWj9LKmGdRDZlHSHxfgKBPm\",\"object\":\"charge\",\"amount\":1500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CWj9MKmGdRDZlHS0E0rSwAI\",\"captured\":true,\"created\":1527505467,\"currency\":\"usd\",\"customer\":\"cus_CwcODJSgJ33IwX\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 15, 1527505467, '2018059', 1527505467, 'no', 0),
(10, 2, 7, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CxLBf86vTofKeu\",\"object\":\"customer\",\"account_balance\":0,\"created\":1527672118,\"currency\":null,\"default_source\":\"card_1CXQV9KmGdRDZlHSkj2ffaQQ\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"81BD7F1\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CXQVIKmGdRDZlHSB9JHc7o6\",\"object\":\"charge\",\"amount\":1500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CXQVJKmGdRDZlHSKXNwZTUC\",\"captured\":true,\"created\":1527672120,\"currency\":\"usd\",\"customer\":\"cus_CxLBf86vTofKeu\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 15, 1527672108, '20180510', 1527672108, 'no', 0),
(11, 3, 7, 'Paypal', 'due', 'none', 25, 1527743164, '', 0, '', 0),
(12, 2, 13, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CypmvgOKdcuXS8\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528016564,\"currency\":null,\"default_source\":\"card_1CYs6gKmGdRDZlHSZnAhEeYN\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.shop@gmail.com\",\"invoice_prefix\":\"A2955CE\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CYs6sKmGdRDZlHSuw6LMZos\",\"object\":\"charge\",\"amount\":1500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CYs6sKmGdRDZlHSuLIyXJWG\",\"captured\":true,\"created\":1528016566,\"currency\":\"usd\",\"customer\":\"cus_CypmvgOKdcuXS8\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 15, 1528016552, '20180612', 1528016552, 'no', 0),
(13, 2, 15, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CzwzUsnuVldUTd\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528274022,\"currency\":null,\"default_source\":\"card_1CZx5HKmGdRDZlHS2t6FNVNa\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"georgiaray@gmail.com\",\"invoice_prefix\":\"3F6FB06\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CZx5QKmGdRDZlHSeqGVQWeW\",\"object\":\"charge\",\"amount\":1500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CZx5QKmGdRDZlHStPMP95rN\",\"captured\":true,\"created\":1528274024,\"currency\":\"usd\",\"customer\":\"cus_CzwzUsnuVldUTd\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 15, 1528274007, '20180613', 1528274007, 'no', 0),
(14, 3, 16, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_Czx9Z1ME9I52Oj\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528274615,\"currency\":null,\"default_source\":\"card_1CZxErKmGdRDZlHS2ryYMyAq\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"lee@gmail.com\",\"invoice_prefix\":\"845AF91\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CZxEzKmGdRDZlHSiZBBQbFq\",\"object\":\"charge\",\"amount\":2500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CZxEzKmGdRDZlHSXQWkv6Wi\",\"captured\":true,\"created\":1528274617,\"currency\":\"usd\",\"customer\":\"cus_Czx9Z1ME9I52Oj\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 25, 1528274599, '20180614', 1528274600, 'no', 0),
(15, 4, 17, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CzxyZtzTluDcVG\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528277707,\"currency\":null,\"default_source\":\"card_1CZy2jKmGdRDZlHSPEsoHOf8\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"larrypena@gmail.com\",\"invoice_prefix\":\"E034D67\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CZy2rKmGdRDZlHSC58ffXbO\",\"object\":\"charge\",\"amount\":3500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CZy2rKmGdRDZlHSUB0evIC0\",\"captured\":true,\"created\":1528277709,\"currency\":\"usd\",\"customer\":\"cus_CzxyZtzTluDcVG\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 35, 1528277691, '20180615', 1528277692, 'no', 0),
(16, 5, 18, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CzyDdeiAUUEPil\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528278604,\"currency\":null,\"default_source\":\"card_1CZyHCKmGdRDZlHS66s0Ctkk\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"noraharris@gmail.com\",\"invoice_prefix\":\"A0030FC\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CZyHJKmGdRDZlHSbdCk7oty\",\"object\":\"charge\",\"amount\":4500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CZyHKKmGdRDZlHSohojhb9q\",\"captured\":true,\"created\":1528278605,\"currency\":\"usd\",\"customer\":\"cus_CzyDdeiAUUEPil\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 45, 1528278588, '20180616', 1528278588, 'no', 0),
(17, 5, 3, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D9i6araPgmiPwn\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530525022,\"currency\":null,\"default_source\":\"card_1CjOflKmGdRDZlHS8xYwhpzq\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer3@shop.com\",\"invoice_prefix\":\"9DFF13D\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CjOfrKmGdRDZlHSnv4Lw7hi\",\"object\":\"charge\",\"amount\":4500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CjOfrKmGdRDZlHSIRkmP6N4\",\"captured\":true,\"created\":1530525023,\"currency\":\"usd\",\"customer\":\"cus_D9i6araPgmiPwn\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 45, 1530525023, '20180717', 1530525023, 'no', 0),
(19, 4, 7, 'PayUmoney', 'due', 'none', 35, 1530531560, '', 0, '', 0),
(20, 5, 22, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DAkrzbCEBlxP03\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530765971,\"currency\":null,\"default_source\":\"card_1CkPM2KmGdRDZlHSFfoyUbJ2\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"marketing.activeitzone@gmail.com\",\"invoice_prefix\":\"A5ED676\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CkPM8KmGdRDZlHSD2Fdrnvb\",\"object\":\"charge\",\"amount\":4500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CkPM8KmGdRDZlHSBFeIdVNn\",\"captured\":true,\"created\":1530765972,\"currency\":\"usd\",\"customer\":\"cus_DAkrzbCEBlxP03\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 45, 1530765972, '20180720', 1530765972, 'no', 0),
(21, 5, 23, 'Wallet', 'paid', '', 45, 1531634185, '20180721', 1531634185, 'no', 0),
(24, 4, 7, 'SSLcommerz', 'paid', '{\"tran_id\":\"20180724\",\"val_id\":\"1807241627541mUbsn0kqoeWVuq\",\"amount\":\"35\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"34.3\",\"card_no\":\"\",\"bank_tran_id\":\"180724162754Ii6p2KJnBH5jDlG\",\"status\":\"VALID\",\"tran_date\":\"2018-07-24 16:27:38\",\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"techr5affa68a7602c\",\"verify_sign\":\"37cb03693d014285a7cea9cca3f606ec\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_type,currency,currency_amount,currency_rate,currency_type,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"90cba376582ea23e1bc64274538eec2fc0b5da6b3fbed4c6529afb4406b476ac\",\"currency_type\":\"BDT\",\"currency_amount\":\"35.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"\",\"value_b\":\"\",\"value_c\":\"\",\"value_d\":\"\",\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 35, 1532427912, '20180724', 1532427912, 'no', 0),
(25, 4, 22, 'SSLcommerz', 'paid', '{\"tran_id\":\"20180725\",\"val_id\":\"1807251144111YNM4LsS30YofK9\",\"amount\":\"35\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"34.3\",\"card_no\":\"\",\"bank_tran_id\":\"1807251144110qo2y4fHI4aWTvE\",\"status\":\"VALID\",\"tran_date\":\"2018-07-25 11:43:52\",\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"techr5affa68a7602c\",\"verify_sign\":\"d5f200f705ea203b954f3cf50e72866e\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_type,currency,currency_amount,currency_rate,currency_type,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"0de0de16b0cc67cafdaa4aaedccc4a8be010bb0a827399a35f88e82d142af24d\",\"currency_type\":\"BDT\",\"currency_amount\":\"35.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"\",\"value_b\":\"\",\"value_c\":\"\",\"value_d\":\"\",\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 35, 1532497253, '20180725', 1532497253, 'no', 0),
(26, 5, 24, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_FEZRsMkhqAuzb7\",\"object\":\"customer\",\"account_balance\":0,\"address\":null,\"balance\":0,\"created\":1560245404,\"currency\":null,\"default_source\":\"card_1Ek6IjKmGdRDZlHSyVdol7jX\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"hm@gmail.com\",\"invoice_prefix\":\"51F53B47\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"name\":null,\"phone\":null,\"preferred_locales\":[],\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_exempt\":\"none\",\"tax_ids\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Ek6IrKmGdRDZlHSb1FskWjT\",\"object\":\"charge\",\"amount\":4500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1Ek6IsKmGdRDZlHSA8qHLo6h\",\"billing_details\":{},\"captured\":true,\"created\":1560245405,\"currency\":\"usd\",\"customer\":\"cus_FEZRsMkhqAuzb7\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1Ek6IjKmGdRDZlHSyVdol7jX\",\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1Ek6IrKmGdRDZlHSb1FskWjT\\/rcpt_FEZRpAv0xKpi1Pr63aOwReZeG4xOTfK\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 45, 1560245406, '20190626', 1560245406, 'no', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `page_name` varchar(100) DEFAULT NULL,
  `parmalink` varchar(100) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `parts` longtext DEFAULT NULL,
  `tag` longtext DEFAULT NULL,
  `fixed` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`page_id`, `status`, `page_name`, `parmalink`, `content`, `parts`, `tag`, `fixed`) VALUES
(12, 'ok', 'Documentation', 'Documentation', NULL, '[{\"size\":\"3\",\"type\":\"widget\",\"content\":\"<p><br><\\/p>\",\"widget\":\"product_categories\"},{\"size\":\"9\",\"type\":\"content\",\"content\":\"<h3><span style=\\\"background-color: transparent; color: rgb(0, 0, 0); font-family: Roboto; font-size: 14.6667px; font-weight: 700; text-decoration: underline; white-space: pre-wrap;\\\">Structure &amp; Information of Important Common Elements<\\/span><\\/h3><ol style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Header<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><\\/p><\\/li><\\/ol><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-indent: 36pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">We can divide the header into three major parts.<\\/span><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Top Header:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Top header contains the options for \\u201cLanguage Change\\u201d, \\u201cCurrency Change \\u201d, \\u201cFAQ\\u201d, \\u201cCustomer Login\\u201d, \\u201cCustomer Registration\\u201d &amp; \\u201cVendor Registration\\u201d.<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Middle Header:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Middle header contains admin uploaded &amp; selected \\u201chome page header logo\\u201d, \\u201csearch bar(product &amp; vendor based search)\\u201d, \\u201ccompare button (from where user can moved the all compared product list page)\\u201d &amp; \\u201ccart button(from where customer moved to checkout page.)\\u201d. &nbsp;<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Bottom Header:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Bottom Header contains the link for \\u201cHome page\\u201d, \\u201cAll categories(with all sub categories in dropdown)\\u201d, \\u201cFeatured product\\u201d, \\u201cToday\\u2019s deal\\u201d, \\u201cAll brands\\u201d, \\u201cAll vendors\\u201d, \\u201cStore locator\\u201d, \\u201ccontact\\u201d &amp; \\u201cMore(Admin created custom responsive page will be shown on dropdown)\\u201d. <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Your project\\/application\\/views\\/front\\/header\\/header1.php<\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Logo upload directory<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> :<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> admin &gt; frontend settings &gt; Display settings &gt; logo &gt; upload logo &gt; change home page item &gt; top slider<\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ol style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" start=\\\"2\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Box<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">We designed three different types of \\u201cproduct box\\u201d for the frontend design to the aspection of making anyone\\u2019s site eye catching and to make difference which will reduce the necessity of custom design. One\\u2019s don\\u2019t need to have any coding knowledge for changing the design and structure. All three designed product box contain the same informations and data for better understand. Please follow the step by step instructions : &nbsp;<\\/span><\\/p><\\/li><\\/ol><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Image:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> This part for product image.After hovering the image \\u201cquick view\\u201d button will appear(where customer can view the short description of the &nbsp;product). <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><\\/li><\\/ul><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Title:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Admin \\/ vendor uploaded product title has been shown is here. Click on product title ones can visit the product detail page.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Price:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> Admin \\/ vendor fixed product sale price will be shown in here &nbsp;(discounted amount should be deducted &amp; viewed in a smart graphics).<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Add to Cart:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> While customers \\/ users take a approach to purchase the chosen product they should click on \\u201cadd to cart\\u201d button for adding in the cart list.Cart list is available in the header(right top part) from where anyone can be moved to check out page with login. <\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Compare:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">For the same category wise product user can add the products in compare list by clicking on \\u201ccompare button\\u201d. Compared products showed in the top right part of the header.From here anyone can visit the compare page.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Wish:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Any user can wish their products while they are logged in.Wished product log has been listed into the user profile.The wishlist button is available in the top header(right) part from where user can look upon his\\/her wished product list.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Vendor Name:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Vendor &nbsp;name will be shown in here.By clicking on the name ones can visit the vendor\\u2019s public profile.<\\/span><\\/p><\\/li><\\/ul><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Out of Stock:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If any product crossed the stock limit the product will be unavailable and the \\u201cout of stock\\u201d sticker viewed on the product box.<\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Product Discount:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">&nbsp;Any discounted product will have the \\u201cDiscount sticker\\u201d with the limitation of discounted amount or discounted percentage.<\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Admin directory :<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> admin &gt; frontend settings &gt; Display settings &gt; home page &gt; select home page &gt; change home page item &gt; featured product\\/category wise product &gt; choose product box style.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;margin-left: 36pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#ff0000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">product box<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">.<\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><br><br><\\/b><\\/p><ol style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" start=\\\"3\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Sidebar section : <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Sidebar section contain the most advance search options like as category, sub category, brand and price range. Bottom of this section holds the special products such as popular, latest &amp; today\\u2019s deal products.<\\/span><\\/p><\\/li><\\/ol><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#ff0000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">product box<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">. <\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><ol style=\\\"margin-top:0pt;margin-bottom:0pt;\\\" start=\\\"4\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:decimal;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Footer<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><\\/p><\\/li><\\/ol><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><span class=\\\"Apple-tab-span\\\" style=\\\"white-space:pre;\\\">\\t<\\/span><\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">There are two parts of the footer.<\\/span><\\/p><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Footer Top<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Top footer contains some options such as footer logo,subscription box categories links, page links, contact details,social media links.All elements sorted in four columns.Category &amp; text in footer has been managed by admin.<\\/span><\\/p><\\/li><\\/ul><ul style=\\\"margin-top:0pt;margin-bottom:0pt;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type:disc;font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;margin-left: 48px;\\\"><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Footer Bottom <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">: <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">This portion contains the \\u201cdeveloper authority name\\u201d,\\u201dterms &amp; condition\\u201d,\\u201dprivacy policy\\u201d and \\u201cpayment gateway logo\\u201d<\\/span><\\/p><\\/li><\\/ul><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Admin directory :<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"> admin &gt; frontend settings &gt; Display settings &gt; footer.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#ff0000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">product box<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\"><br class=\\\"kix-line-break\\\"><br class=\\\"kix-line-break\\\"><\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Structure &amp; Information of Home page<\\/span><\\/p><p><b style=\\\"font-weight:normal;\\\"><br><\\/b><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Home page : <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">We designed two most conspicuous and absolutely customizable types of home with the utmost experience of qualified user interface perception for representing your eCommerce in a distinctive aspection.We splat the whole home page into several parts such as Layer slider , home top part , advance search area, featured product area, category wise products(for home page 1), category wise banner(for homepage 2), latest blogs (home page 1), special products (Latest products, Most sold, Most viewed product).All of these very specific portions is easily editable with having the options of enable\\/disable.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">Admin directory : <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">admin(login) &gt; frontend settings &gt; display settings &gt; home page &gt; choose homepage &gt; change home page items.<\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;text-align: justify;\\\"><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:700;font-style:italic;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\">Technical Directory:<\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;vertical-align:baseline;white-space:pre-wrap;\\\"> <\\/span><span style=\\\"font-size:14.666666666666666px;font-family:Roboto;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap;\\\">If anyone wants to change the structure or design he\\/she will need to follow the below directory and works on that directed files.<\\/span><\\/p><p><span style=\\\"font-size: 14.6667px; font-family: Roboto; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\\\">Your project\\/application\\/views\\/front\\/<\\/span><span style=\\\"font-size: 14.6667px; font-family: Roboto; color: rgb(255, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\\\">product box<\\/span><span style=\\\"font-size: 14.6667px; font-family: Roboto; color: rgb(0, 0, 0); background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\\\">.<\\/span><br><\\/p>\",\"widget\":\"\"}]', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `permission`
--

CREATE TABLE `permission` (
  `permission_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `codename` varchar(30) DEFAULT NULL,
  `parent_status` varchar(30) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `permission`
--

INSERT INTO `permission` (`permission_id`, `name`, `codename`, `parent_status`, `description`) VALUES
(1, 'staff', 'admin', 'parent', ''),
(2, 'edit', 'admin_edit', '1', ''),
(3, 'view', 'admin_view', '1', ''),
(4, 'delete', 'admin_delete', '1', ''),
(5, 'banner', 'banner', 'parent', ''),
(6, 'edit', 'banner_edit', '5', ''),
(7, 'view', 'banner_view', '5', ''),
(8, 'delete', 'banner_delete', '5', ''),
(9, 'brand', 'brand', 'parent', ''),
(10, 'edit', 'brand_edit', '9', ''),
(11, 'view', 'brand_view', '9', ''),
(12, 'delete', 'brand_delete', '9', ''),
(13, 'business settings', 'business_settings', 'parent', ''),
(14, 'edit', 'business_settings_edit', '13', ''),
(15, 'view', 'business_settings_view', '13', ''),
(16, 'delete', 'business_settings_delete', '13', ''),
(17, 'category', 'category', 'parent', ''),
(18, 'edit', 'category_edit', '17', ''),
(19, 'view', 'category_view', '17', ''),
(20, 'delete', 'category_delete', '17', ''),
(21, 'contact message', 'contact_message', 'parent', ''),
(22, 'edit', 'contact_message_edit', '21', ''),
(23, 'view', 'contact_message_view', '21', ''),
(24, 'delete', 'contact_message_delete', '21', ''),
(25, 'site settings', 'site_settings', 'parent', ''),
(26, 'edit', 'site_settings_edit', '25', ''),
(27, 'view', 'site_settings_view', '25', ''),
(28, 'delete', 'site_settings_delete', '25', ''),
(29, 'product', 'product', 'parent', ''),
(30, 'edit', 'product_edit', '29', ''),
(31, 'view', 'product_view', '29', ''),
(32, 'delete', 'product_delete', '29', ''),
(33, 'report', 'report', 'parent', ''),
(34, 'edit', 'report_edit', '33', ''),
(35, 'view', 'report_view', '33', ''),
(36, 'delete', 'report_delete', '33', ''),
(37, 'role', 'role', 'parent', ''),
(38, 'edit', 'role_edit', '37', ''),
(39, 'view', 'role_view', '37', ''),
(40, 'delete', 'role_delete', '37', ''),
(41, 'sale', 'sale', 'parent', ''),
(42, 'edit', 'sale_edit', '92', ''),
(43, 'view', 'sale_view', '92', ''),
(44, 'delete', 'sale_delete', '92', ''),
(45, 'slider', 'slider', 'parent', ''),
(46, 'edit', 'slider_edit', '45', ''),
(47, 'view', 'slider_view', '45', ''),
(48, 'delete', 'slider_delete', '45', ''),
(49, 'stock', 'stock', 'parent', ''),
(50, 'edit', 'stock_edit', '49', ''),
(51, 'view', 'stock_view', '49', ''),
(52, 'delete', 'stock_delete', '49', ''),
(53, 'sub category', 'sub_category', 'parent', ''),
(54, 'edit', 'sub_category_edit', '53', ''),
(55, 'view', 'sub_category_view', '53', ''),
(56, 'delete', 'sub_category_delete', '53', ''),
(57, 'user', 'user', 'parent', ''),
(58, 'edit', 'user_edit', '57', ''),
(59, 'view', 'user_view', '57', ''),
(60, 'delete', 'user_delete', '57', ''),
(61, 'newsletter', 'newsletter', 'parent', ''),
(62, 'language', 'language', 'parent', ''),
(63, 'page', 'page', 'parent', ''),
(64, 'Discount Coupon', 'coupon', 'parent', ''),
(65, 'vendor', 'vendor', 'parent', ''),
(66, 'membership', 'membership', 'parent', ''),
(67, 'SEO', 'seo', 'parent', ''),
(68, 'Membership Payments', 'membership_payment', 'parent', ''),
(69, 'blog', 'blog', 'parent', NULL),
(70, 'slides', 'slides', 'parent', NULL),
(71, 'digital category', 'category_digital', 'parent', NULL),
(72, 'edit', 'category_digital_edit', '71', NULL),
(73, 'delete', 'category_digital_delete', '71', NULL),
(74, 'view', 'category_digital_view', '71', NULL),
(75, 'sub-category', 'sub_category', 'parent', NULL),
(77, 'edit', 'sub_category_edit', '75', NULL),
(78, 'delete', 'sub_category_delete', '75', NULL),
(79, 'view', 'sub_category_view', '75', NULL),
(80, 'digital sub-category', 'sub_category_digital', 'parent', NULL),
(81, 'edit', 'sub_category_digital_edit', '80', NULL),
(82, 'delete', 'sub_category_digital_delete', '80', NULL),
(83, 'view', 'sub_category_digital_view', '80', NULL),
(84, 'digital', 'digital', 'parent', NULL),
(85, 'edit', 'digital_edit', '84', NULL),
(86, 'delete', 'digital_delete', '84', NULL),
(87, 'view', 'digital_view', '84', NULL),
(88, 'product', 'product', 'parent', NULL),
(89, 'edit', 'product_edit', '88', NULL),
(90, 'delete', 'product_delete', '88', NULL),
(91, 'view', 'product_view', '88', NULL),
(92, 'sale', 'sale', 'parent', NULL),
(93, 'email tracing', 'email_tracing', 'parent', NULL),
(94, 'widget', 'widget', 'parent', NULL),
(95, 'display settings', 'display_settings', 'parent', NULL),
(96, 'banner', 'banner', 'parent', NULL),
(97, 'captha & social settings', 'captha_n_social_settings', 'parent', NULL),
(98, 'business settings', 'business_settings', 'parent', NULL),
(99, 'ticket', 'ticket', 'parent', NULL),
(100, 'default images', 'default_images', 'parent', NULL),
(101, 'Pay to Vendor', 'pay_to_vendor', 'parent', NULL),
(102, 'email template', 'email_template', 'parent', NULL),
(103, 'product bundle', 'product_bundle', 'parent', NULL),
(104, 'edit', 'product_bundle_edit', '103', NULL),
(105, 'view', 'product_bundle_view', '103', NULL),
(106, 'delete', 'product_bundle_delete', '103', NULL),
(107, 'bundle_stock', 'bundle_stock', '103', NULL),
(108, 'customer package payment', 'package_payment', 'parent', NULL),
(109, 'classified products', 'customer_products', 'parent', NULL),
(110, 'customer premium package', 'package', 'parent', NULL),
(111, 'delete all', 'delete_all', 'parent', NULL),
(112, 'delete all categories', 'delete all categories', '111', NULL),
(113, 'delete all products', 'delete all products', '111', NULL),
(114, 'delete all brands', 'delete all brands', '111', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `rating_num` int(11) NOT NULL DEFAULT 0,
  `rating_total` decimal(20,2) NOT NULL DEFAULT 0.00,
  `rating_user` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `added_by` varchar(30) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `sub_category` int(11) DEFAULT NULL,
  `num_of_imgs` varchar(100) DEFAULT NULL,
  `sale_price` decimal(20,2) NOT NULL DEFAULT 0.00,
  `purchase_price` decimal(20,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` varchar(20) NOT NULL DEFAULT '0.00',
  `add_timestamp` longtext DEFAULT NULL,
  `featured` longtext DEFAULT NULL,
  `tag` longtext DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `front_image` longtext DEFAULT NULL,
  `brand` longtext DEFAULT NULL,
  `current_stock` int(11) DEFAULT 0,
  `unit` longtext DEFAULT NULL,
  `additional_fields` longtext DEFAULT NULL,
  `number_of_view` int(11) NOT NULL DEFAULT 0,
  `background` longtext DEFAULT NULL,
  `discount` varchar(20) NOT NULL DEFAULT '0.00',
  `discount_type` longtext DEFAULT NULL,
  `tax` varchar(20) NOT NULL DEFAULT '0.00',
  `tax_type` longtext DEFAULT NULL,
  `color` longtext DEFAULT NULL,
  `options` longtext DEFAULT NULL,
  `main_image` varchar(100) NOT NULL DEFAULT '0',
  `download` varchar(200) DEFAULT NULL,
  `download_name` varchar(200) DEFAULT NULL,
  `deal` varchar(10) DEFAULT NULL,
  `num_of_downloads` int(11) NOT NULL DEFAULT 0,
  `update_time` longtext DEFAULT NULL,
  `requirements` longtext DEFAULT NULL,
  `logo` longtext DEFAULT NULL,
  `video` longtext DEFAULT NULL,
  `last_viewed` int(200) DEFAULT NULL,
  `products` longtext DEFAULT NULL,
  `is_bundle` varchar(10) DEFAULT NULL,
  `vendor_featured` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`product_id`, `rating_num`, `rating_total`, `rating_user`, `title`, `added_by`, `category`, `description`, `sub_category`, `num_of_imgs`, `sale_price`, `purchase_price`, `shipping_cost`, `add_timestamp`, `featured`, `tag`, `seo_title`, `seo_description`, `status`, `front_image`, `brand`, `current_stock`, `unit`, `additional_fields`, `number_of_view`, `background`, `discount`, `discount_type`, `tax`, `tax_type`, `color`, `options`, `main_image`, `download`, `download_name`, `deal`, `num_of_downloads`, `update_time`, `requirements`, `logo`, `video`, `last_viewed`, `products`, `is_bundle`, `vendor_featured`) VALUES
(110, 0, '0.00', '[]', 'Samsung Galaxy S9', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '<p>simple text</p>', 81, '1', '719.99', '719.99', '99', '1522842221', 'no', 'mobile', NULL, NULL, 'ok', '0', NULL, 5, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'percent', '4', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', ''),
(111, 0, '0.00', '[]', 'Moto G PLUS (5th Gen.)', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '                                        <p>simple text</p>', 81, '1', '209.99', '209.99', '209.99', '1522842710', 'no', 'mobile', NULL, NULL, 'ok', '0', NULL, 3, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'percent', '4', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', ''),
(112, 0, '0.00', '[]', 'Samsung Galaxy S8', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '                                        <p>simple text</p>', 81, '1', '629.99', '629.99', '0', '1522842842', 'no', 'mobile', NULL, NULL, 'ok', '0', NULL, 2, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '0', 'percent', '4', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1522842968, NULL, 'no', ''),
(142, 0, '0.00', '[]', 'Apple iPhone-8-PLUS', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '                                                                                <p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Condition:</font></font><span style=\"white-space:pre\">  </span></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">New: A brand-new, unused, unopened, undamaged item in its original packaging (where packaging is ... Read more</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Brand:</font></font><span style=\"white-space:pre\"> </span></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Apple</font></font></font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Style:</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Touch Screen</font></font><span style=\"white-space:pre\"> </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Model:</font></font><span style=\"white-space:pre\"> </span></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">iPhone 8+ 64gb</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Camera Resolution:</font></font><span style=\"white-space:pre\"> </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">12mp</font></font><span style=\"white-space:pre\"> </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Network:</font></font><span style=\"white-space:pre\"> </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Unlocked</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Cellular Band:</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Celular Unlocked</font></font><span style=\"white-space:pre\"> </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">MPN:</font></font><span style=\"white-space:pre\"> </span></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">appleiPhone8plus</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Features:</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">3G Data Capable, 4G Data Capable, 4K Video Recording, Accelerometer, Bluetooth Enabled, Dual Rear Cameras, Fingerprint Sensor</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Color:</font></font><span style=\"white-space:pre\"> </span></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Red</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Lock Status:</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Unlocked</font></font><span style=\"white-space:pre\"> </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Storage Capacity:</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">64GB</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Screen Size:</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">5.5</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Model Number:</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">iPhone 8 Plus</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Memory Card Type:</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Not Applicable</font></font><span style=\"white-space:pre\"> </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Contract:</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Without Contract</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Processor:</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">A11 Bionic</font></font><span style=\"white-space:pre\"> </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Operating System:</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">iOS</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">RAM:</font></font><span style=\"white-space:pre\"> </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">3gb</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">UPC:</font></font><span style=\"white-space:pre\"> </span></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">1234567890999</font></font></p>', 81, '1', '794.00', '794.00', '200', '1523871010', 'ok', 'phone,iphone', NULL, NULL, 'ok', '0', '63', 100, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 5, NULL, '0', 'percent', '30', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1614697527, NULL, 'no', ''),
(143, 0, '0.00', '[]', 'LG V30 Plus (H930DS)', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '<p>4GB RAM / 128GB ROM</p><p>16MP + 13MP Dual Main Camera</p><p>5MP Selfie Camera</p><p>Qualcomm MSM8998 Snapdragon 835 Octa core Processor</p><p>6.0\" Quad HD OLED Display</p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Dual Nano-SIM (4G + 3G)</font></font></p><p>Fingerprint Sensor</p>', 81, '1', '625.00', '625.00', '20', '1523871342', 'no', 'phone,mobile,lg', NULL, NULL, 'ok', '0', NULL, 100, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'percent', '10', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', ''),
(144, 0, '0.00', '[]', 'NEW Asus Zenfone 5', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '                                        <p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Brand:Asus</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Model:zenfone5</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">MPN:Does Not Apply</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Contract:Without Contract</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Model Number:ZE620KL</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Operating System:Android</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Features:3G Data Capable,4G Data Capable,Accelerometer,Bluetooth Enabled,</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Screen Size:6.2</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Lock Status:Factory Unlocked</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Memory Card Type:MicroSD</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Processor:Octa Core</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">RAM:4GB</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Country/Region of Manufacture:China</font></font></p>', 81, '1', '409.00', '409.00', '28', '1523871767', 'no', 'mobile,cellphone,asus', NULL, NULL, 'ok', '0', NULL, 200, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '0', 'percent', '23', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1530089327, NULL, 'no', ''),
(145, 0, '0.00', '[]', 'Project Kit', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '<p>Includes 20V Lithium drill for a variety of home projects</p><p>Lithium Ion Battery - Always Ready, holds a charge up to 18 months</p><p>The 11 postion clutch prevents stripping and overdriving screws</p><p>Includes 68 hand tools and accessories. Cordless design offers easy use and portability</p><p>Includes carrying bag for easy portability and storage</p>', 83, '1', '70.72', '70.72', '34', '1523872566', 'no', 'tools', NULL, NULL, 'ok', '0', NULL, 50, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'percent', '4', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', ''),
(146, 0, '0.00', '[]', 'Hardware Multitools', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '                                        <p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Free use: can be used for storage such as: small blade, small hook, marking tool</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Strong features: a solid plastic shell even if it is put into the pocket will not squeeze deformation, the track will not automatically slide out of self-locking</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Deluxe Package:15 gadgets available for practice such as lock, computer, or phone screen</font></font></p>', 83, '1', '11.58', '11.58', '0', '1523872930', 'no', 'tools', NULL, NULL, 'ok', '0', NULL, 100, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 2, NULL, '0', 'percent', '3', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1527064007, NULL, 'no', ''),
(147, 0, '0.00', '[]', 'iFixit Pro Tech Toolkit', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '<p>Developed over 5 years using the data from thousands of repair manuals to have all the right tools.</p><p>All tools designed and manufactured by iFixit using the highest quality materials and methods.</p><p>Includes the 64 Bit Driver Kit, the highest quality most comprehensive CNC machined bit set.</p><p>Completely re-engineered to provide all the tools that you need, and none that you don\'t.</p><p>Covered by iFixit’s Lifetime Warranty</p>', 83, '1', '91.97', '91.97', '23', '1523873174', 'no', 'tools', NULL, NULL, 'ok', '0', NULL, 140, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '0', 'percent', '34', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1529991614, NULL, 'no', ''),
(148, 0, '0.00', '[]', 'Mechanics ToolSet', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '                                        <p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Updated version of the best selling CTK170CMP, this new set has a new &amp; sturdier blow mold case as well as new &amp; improved Crescent screwdrivers</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Contains a carefully selected assortment of hand tools needed for most industrial, mechanical, and consumer applications</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Set includes 1/4\", 3/8\" &amp; 1/2\" drive tools (SAE &amp; Metric). Drive Type-6 and 12 Point</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Tools meet stringent new ANSI and ASME specifications and come with a full satisfaction guarantee</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">All tools contained in a sturdy, folding plastic case for easy storage and transport</font></font></p>', 83, '1', '96.28', '96.28', '34', '1523873424', 'no', 'tool', NULL, NULL, 'ok', '0', NULL, 200, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '0', 'percent', '33.98', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1529991635, NULL, 'no', ''),
(149, 0, '0.00', '[]', 'Drive Socket Set', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '<p>DirectTorque Technology</p><p>Polished chrome vanadium finish</p><p>Knurled control ring</p><p>Hard stamped markings</p>', 83, '1', '105.97', '105.97', '34', '1523873834', 'no', 'tool', NULL, NULL, 'ok', '0', NULL, 50, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '0', 'percent', '4', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1523878403, NULL, 'no', ''),
(159, 0, '0.00', '[]', 'imac pro 27inch', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '<p><span style=\"text-align: justify;\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', 87, '4', '5000.00', '4500.00', '', '1524784496', 'no', 'apple,desktop,computer,imac,imac pro', NULL, NULL, 'ok', '0', '63', 500, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 3, NULL, '', 'percent', '', 'percent', '[\"rgba(51,51,51,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1580290589, NULL, 'no', ''),
(160, 0, '0.00', '[]', 'iPhone X', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '<p><span style=\"text-align: justify;\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', 85, '2', '1200.00', '1000.00', '', '1524784743', 'no', 'apple,iphone,mobile', NULL, NULL, 'ok', '0', '63', 500, 'pcs', '{\"name\":\"null\",\"value\":\"null\"}', 4, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\",\"rgba(51,51,51,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1530421539, NULL, 'no', ''),
(161, 0, '0.00', '[]', 'DSLR Camera', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '                                                                                <p><span xss=removed>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', 88, '2', '1000.00', '800.00', '', '1524784856', 'no', 'camera,dslr', 'New good dslr for 2020', 'Best dslr for 2020', 'ok', '0', '143', 499, 'pcs', '{\"name\":\"null\",\"value\":\"null\"}', 8, NULL, '', 'percent', '', 'percent', '[\"rgba(0,0,0,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1581339078, NULL, 'no', ''),
(162, 0, '0.00', '[]', 'Macbook Pro 2017', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '                                        <p><span [removed]=\"text-align: justify;\" style=\"transition: all 0.2s ease-in-out;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\" style=\"transition: all 0.2s ease-in-out;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\" style=\"transition: all 0.2s ease-in-out;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\" style=\"transition: all 0.2s ease-in-out;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\" style=\"transition: all 0.2s ease-in-out;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\" style=\"transition: all 0.2s ease-in-out;\">is simply dummy text of the printing and typesetting industry</span><br></p>', 86, '2', '1000.00', '900.00', '', '1524845643', 'ok', 'apple,macbook,macbook pro', NULL, NULL, 'ok', '0', '63', 500, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 4, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\",\"rgba(33,33,33,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1527064099, NULL, 'no', ''),
(180, 0, '0.00', '[]', 'Canon Digital SLR Camera', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '                                                                                <p>Hobbyist</p><p>• 18 megapixels</p><p>• Sensor type: APS-C / 22.3 x 14.9 mm CMOS sensor</p><p>• Standard ISO range: 100 – 6400</p><p>• Built-in WiFi / NFC</p>', 88, '1', '3500.00', '3500.00', '0', '1528787247', 'ok', 'Canon', NULL, NULL, 'ok', '0', '143', 509, 'Pc', '{\"name\":\"[\\\"Pixel\\\",\\\"Wifi\\\"]\",\"value\":\"[\\\"<p>18<\\\\\\/p>\\\",\\\"<p>Builtin<\\\\\\/p>\\\"]\"}', 8, NULL, '0', 'percent', '0', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1574833532, NULL, 'no', ''),
(186, 0, '0.00', '[]', 'ecobee4 Smart Thermostat', '{\"type\":\"vendor\",\"id\":\"16\"}', 16, '<p>Room sensors: they measure temperature and occupancy allowing you to achieve the comfort settings you want in the rooms that matter most. One room sensor included, 2-packs sold separately</p><p>Save money: ecobee uses Advance sensing, external weather data, and learns your HVAC system to save you up to 23% on your heating and cooling bills* compared to a hold of 72 degrees</p><p>Great compatibility &amp; reliability: Ecobee4 works with the vast majority of residential HVAC systems. Check your compatibility by using the compatibility checker on the ecobee Website. 3yr warranty provided</p><p>Easy install: installation takes approximately 30 min and we provide in-app Guided videos to make it easy. No c-wireno problem – use the power extender kit included in the box</p><p>Works with your smarthome ecosystem: Amazon Alexa, Google assistant, Apple homekit, microsoft cortana, Samsung SmartThings, wink, IFTTT – Ecobee4 works with them all</p><p>Alexa built-in with speakers and microphones: its like having an Amazon echo dot built right into your thermostat!* some Alexa functionality not supported – see Alexa section below</p>', 83, '1', '218.88', '249.00', '0', '1530428926', 'no', 'tools', NULL, NULL, 'ok', '0', '180', 300, 'Pc', '{\"name\":\"[\\\"Technical Details\\\"]\",\"value\":\"[\\\"<table id=\\\\\\\"productDetails_techSpec_section_1\\\\\\\" class=\\\\\\\"a-keyvalue prodDetTable\\\\\\\" role=\\\\\\\"presentation\\\\\\\" style=\\\\\\\"margin-bottom: 22px; width: 606px; border-bottom: 1px solid rgb(231, 231, 231); table-layout: fixed; padding: 0px; color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\\\\\\\"><tbody><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Part Number<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">EB-STATE4-01<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Item Weight<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">1 pounds<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Product Dimensions<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">4 x 1 x 4 inches<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Item model number<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">EB-STATE4-01<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Batteries<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">2 Lithium Metal batteries required. (included)<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Size<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">One Size<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Color<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Black<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Style<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">ecobee4<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Voltage<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">1 volts<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Item Package Quantity<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">1<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Type of Bulb<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">N\\\\\\/A<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Number Of Holes<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">1<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Display Style<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Touch screen<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Certification<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">(unset)<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Included Components<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">thermostat, Room Sensor, PEK, hardware pack, instructions, wire labels, mounting plate, trim plate<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Batteries Included?<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Yes<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Batteries Required?<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Yes<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Battery Cell Type<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Lithium Metal<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Warranty Description<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">3 year warranty<\\\\\\/td><\\\\\\/tr><\\\\\\/tbody><\\\\\\/table>\\\"]\"}', 0, NULL, '12', 'percent', '0', 'percent', '[\"rgba(15,13,13,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', 'ok'),
(187, 0, '0.00', '[]', 'Acer Predator Helios 300 Gaming Laptop', '{\"type\":\"vendor\",\"id\":\"16\"}', 16, '<p>Latest 7th Generation Intel Core i7-7700HQ Processor (Up to 3.8GHz) | Windows 10 Home 64-bit</p><p>Latest NVIDIA GeForce GTX 1060 with 6 GB of dedicated GDDR5 VRAM</p><p>15.6\" Full HD (1920 x 1080) widescreen IPS display, Red Backlit Keyboard</p><p>16GB DDR4 DRAM Memory &amp; 256GB SSD | Extra empty expandable hard drive slot for 2.5\" hard drives</p><p>Up to 7-hours of battery life</p>', 86, '1', '1049.00', '1049.00', '0', '1530429318', 'no', 'laptop', NULL, NULL, 'ok', '0', '64', 50, 'pc', '{\"name\":\"[\\\"Technical Details\\\"]\",\"value\":\"[\\\"<table id=\\\\\\\"productDetails_techSpec_section_1\\\\\\\" class=\\\\\\\"a-keyvalue prodDetTable\\\\\\\" role=\\\\\\\"presentation\\\\\\\" style=\\\\\\\"margin-bottom: 22px; width: 606px; border-bottom: 1px solid rgb(231, 231, 231); table-layout: fixed; padding: 0px; color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\\\\\\\"><tbody><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Screen Size<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">15.6 inches<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Max Screen Resolution<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">1920 x 1080<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Processor<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">3.8 GHz Intel Core i7<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">RAM<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">16 GB<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Hard Drive<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">256 GB Flash Memory Solid State<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Graphics Coprocessor<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">NVIDIA GeForce GTX 1060<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Chipset Brand<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">NVIDIA<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Card Description<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Dedicated<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Graphics Card Ram Size<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">6 GB<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Wireless Type<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">802.11.ac<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Number of USB 2.0 Ports<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">2<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Number of USB 3.0 Ports<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">2<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Average Battery Life (in hours)<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">7 hours<\\\\\\/td><\\\\\\/tr><\\\\\\/tbody><\\\\\\/table>\\\"]\"}', 1, NULL, '0', 'percent', '0', 'percent', '[\"rgba(13,12,12,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1530440005, NULL, 'no', 'ok'),
(201, 0, '0.00', '[]', 'Smart OLED TV', '{\"type\":\"vendor\",\"id\":\"7\"}', 16, '                                        <p>Dimensions (W x H x D): TV without stand: 57.2\" x 32.8\" x 1.8\", TV with stand: 57.2\" x 34.4\" x 8.5\"</p><p>Smart functionality gives you access to your favorite apps and content using webOS 3.5. CONNECTIVITY : Wi-Fi Built In 802.11ac</p><p>Pairs 4K Ultra HD picture clarity with the contrast, color, and detail of High Dynamic Range (HDR) for the most lifelike picture</p><p>Individually lit OLED pixels achieve the ultimate contrast for outstanding picture quality. Resolution: 3840 x 2160</p><p>OLED does not require a backlight giving it deep blacks and making it extremely thin.Other Features :Active HDR with Dolby Vision, Dolby Atmos, Perfect Black, Cinematic Color, Billion Rich Colors, Ultra Luminance, Pixel Level Dimming</p><p>Inputs: 4 HDMI, 3 USB, 1 RF, 1 Composite, Component Shared w/ Composite, 1 Ethernet, 1 Optical, 1 RS232C (Mini Jack). Smart TV Operating System-webOS 3.5</p><p>Power supply (voltage, Hz): 120 Vac 50-60Hz . Recommended sound bars: SJ7, SJ8, and SJ9</p>', 87, '1', '1049.00', '1049.00', '0', '1530440532', 'no', 'tv', NULL, NULL, 'ok', '0', '181', 50, 'Pc', '{\"name\":\"[\\\"Technical Details\\\"]\",\"value\":\"[\\\"<table id=\\\\\\\"productDetails_techSpec_section_1\\\\\\\" class=\\\\\\\"a-keyvalue prodDetTable\\\\\\\" role=\\\\\\\"presentation\\\\\\\" style=\\\\\\\"margin-bottom: 22px; width: 606px; border-bottom: 1px solid rgb(231, 231, 231); table-layout: fixed; padding: 0px; color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\\\\\\\"><tbody><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Brand Name<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">LG<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Item Weight<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">54.5 pounds<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Product Dimensions<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">57.2 x 8.5 x 34.4 inches<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Item model number<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">OLED65C7P<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Batteries<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">2 AA batteries required. (included)<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Color Name<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Black<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Special Features<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Active HDR with Dolby Vision; Dolby Atmos; Perfect Black; Cinematic Color, Full Web Browser; Billion Rich Colors; Ultra Luminance; Pixel Level Dimming<\\\\\\/td><\\\\\\/tr><\\\\\\/tbody><\\\\\\/table>\\\"]\"}', 0, NULL, '0', 'percent', '0', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', 'ok');
INSERT INTO `product` (`product_id`, `rating_num`, `rating_total`, `rating_user`, `title`, `added_by`, `category`, `description`, `sub_category`, `num_of_imgs`, `sale_price`, `purchase_price`, `shipping_cost`, `add_timestamp`, `featured`, `tag`, `seo_title`, `seo_description`, `status`, `front_image`, `brand`, `current_stock`, `unit`, `additional_fields`, `number_of_view`, `background`, `discount`, `discount_type`, `tax`, `tax_type`, `color`, `options`, `main_image`, `download`, `download_name`, `deal`, `num_of_downloads`, `update_time`, `requirements`, `logo`, `video`, `last_viewed`, `products`, `is_bundle`, `vendor_featured`) VALUES
(202, 0, '0.00', '[]', 'EG3 Gaming Headset', '{\"type\":\"vendor\",\"id\":\"7\"}', 16, '<p>MULTI-PLATFORM COMPATIBLE -- Support PC (Win7, Win8, Win10 ), PlayStation 4 Console, Laptop and devices with USB audio support. NOTE: When connecting to PS4, Please plug the USB port to the PS4 console. When connecting to Mac, the headset supports music and microphone, but does Not support customized sound effect</p><p>7.1 VIRTUAL SURROUND SOUND FOR IMMERSIVE GAMING EXPERIENCE -- Reflects the in-game environment, so you can hear and detect your enemies and incoming threats and loot all around you. Connect the included USB to your PC and download Mpow Gaming Software in order to fully customize the sound to your liking. You can even program different sound profiles for each game</p><p>ADVANCED 50MM DRIVERS -- Using 50 mm neodymium drivers, Mpow EG3 delivers high-quality stereo sound to keep you immersed in your game or music from start to finish. Perfect for various games like Fortnite, PLAYERUNKNOWN\'S BATTLEGROUNDS, Overwatch, League of Legend, Hearthstone etc.</p><p>LIGHTWEIGHT COMFORT DESIGN -- Crafted for long gaming sessions. With unique tension controls to adjust the tightness of the headset to your personal preference. Soft memory foam earpads block outside sounds and keep your ears cool for distraction-free play. The LED lights add cool atmosphere for your gaming experience</p><p>NOISE CANCELLING MIC &amp; FINGERTIP CONTROL -- Onmi-directional &amp; flexible microphone pick up sound with great sensitivity, which enables you clearly deliver or receive messages while you are in a game. Easy to adjust volume with a mute control housed on the mic shell and volume wheel on the ear cup</p>', 87, '1', '28.99', '28.99', '0', '1530440991', 'no', 'headphone', NULL, NULL, 'ok', '0', '61', 297, 'Pc', '{\"name\":\"[\\\"Additional\\\"]\",\"value\":\"[\\\"<p>Note:<\\\\\\/p><p>Mpow EG3 USB Gaming Headset Supports :<\\\\\\/p><p>Laptop, Win7, Win8, Win10 and devices with USB audio support<\\\\\\/p><p>PS4 (Connect the USB port to PS4 console)<\\\\\\/p><p>Mac (Support music and microphone, but does Not support customized sound effect)<\\\\\\/p><div><br><\\\\\\/div>\\\"]\"}', 0, NULL, '0', 'percent', '0', 'percent', '[\"rgba(23,19,19,1)\",\"rgba(130,46,66,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', 'ok'),
(203, 0, '0.00', '[]', 'Ультратонкий ноутбук ZenBook 13', '{\"type\":\"vendor\",\"id\":\"7\"}', 16, '                                                                                                                                                                <p>13,3-дюймовый дисплей FHD с антибликовым покрытием и разрешением 1920 x 1080, широкий угол обзора 170 градусов с предустановленной Windows 10</p><p><br></p><p>Новейший процессор Intel i5-8250U 8-го поколения с тактовой частотой 1,6 ГГц (6 МБ кэш-памяти, до 3,4 ГГц в режиме Turbo), быстрое хранилище и память с 256 ГБ SATA 3 M.2 SSD с 8 ГБ оперативной памяти LPDDR3</p><p><br></p><p>Широкие возможности подключения с помощью micro HDMI / USB 3.1 Type C, 802.11ac WiFi и устройства чтения SD-карт</p><p><br></p><p>Изящный и легкий алюминиевый корпус 2,6 фунта для удобной переноски</p><p><br></p><p>Встроенный сканер отпечатков пальцев с входом в одно касание с помощью функции Windows Hello</p>', 86, '1', '44500.00', '44500.00', '1500', '1530441757', 'no', 'laptop,asus', 'Ультратонкий ноутбук ZenBook 13', '                                                                                                                                                                                                        ', 'ok', '0', '59', 100, 'Pc', '{\"name\":\"[\\\"\\\\u0421\\\\u0432\\\\u043e\\\\u0434\\\\u043a\\\\u0430\\\",\\\"\\\\u0422\\\\u0435\\\\u0445\\\\u043d\\\\u0438\\\\u0447\\\\u0435\\\\u0441\\\\u043a\\\\u0438\\\\u0435 \\\\u0434\\\\u0435\\\\u0442\\\\u0430\\\\u043b\\\\u0438\\\"]\",\"value\":\"[\\\"<table id=\\\\\\\"productDetails_techSpec_section_1\\\\\\\" class=\\\\\\\"a-keyvalue prodDetTable\\\\\\\" role=\\\\\\\"presentation\\\\\\\" xss=\\\\\\\"removed\\\\\\\"><tbody><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\">\\\\u0420\\\\u0430\\\\u0437\\\\u043c\\\\u0435\\\\u0440 \\\\u044d\\\\u043a\\\\u0440\\\\u0430\\\\u043d\\\\u0430<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">13.3 inches<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\"><span xss=\\\\\\\"removed\\\\\\\">\\\\u041c\\\\u0430\\\\u043a\\\\u0441\\\\u0438\\\\u043c\\\\u0430\\\\u043b\\\\u044c\\\\u043d\\\\u043e\\\\u0435 \\\\u0420\\\\u0430\\\\u0437\\\\u0440\\\\u0435\\\\u0448\\\\u0435\\\\u043d\\\\u0438\\\\u0435 \\\\u042d\\\\u043a\\\\u0440\\\\u0430\\\\u043d\\\\u0430<\\\\\\/span><br><\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">1920 x 1080<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\">\\\\u041f\\\\u0440\\\\u043e\\\\u0446\\\\u0435\\\\u0441\\\\u0441\\\\u043e\\\\u0440<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">1.6 GHz Intel Core i5<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\">\\\\u041e\\\\u043f\\\\u0435\\\\u0440\\\\u0430\\\\u0442\\\\u0438\\\\u0432\\\\u043d\\\\u0430\\\\u044f \\\\u043f\\\\u0430\\\\u043c\\\\u044f\\\\u0442\\\\u044c<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">8 GB LPDDR3<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\"><span xss=\\\\\\\"removed\\\\\\\">\\\\u0416\\\\u0435\\\\u0441\\\\u0442\\\\u043a\\\\u0438\\\\u0439 \\\\u0434\\\\u0438\\\\u0441\\\\u043a<\\\\\\/span><br><\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">256 GB Flash Memory Solid State<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\">\\\\u0413\\\\u0440\\\\u0430\\\\u0444\\\\u0438\\\\u0447\\\\u0435\\\\u0441\\\\u043a\\\\u0438\\\\u0439 \\\\u043f\\\\u0440\\\\u043e\\\\u0446\\\\u0435\\\\u0441\\\\u0441\\\\u043e\\\\u0440<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">Integrated<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\"><span xss=\\\\\\\"removed\\\\\\\">\\\\u041e\\\\u043f\\\\u0438\\\\u0441\\\\u0430\\\\u043d\\\\u0438\\\\u0435 \\\\u043a\\\\u0430\\\\u0440\\\\u0442\\\\u044b<\\\\\\/span><br><\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">Integrated<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\"><span xss=\\\\\\\"removed\\\\\\\">\\\\u0411\\\\u0435\\\\u0441\\\\u043f\\\\u0440\\\\u043e\\\\u0432\\\\u043e\\\\u0434\\\\u043d\\\\u043e\\\\u0439 \\\\u0422\\\\u0438\\\\u043f<\\\\\\/span><br><\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">802.11.ac<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\"><span xss=\\\\\\\"removed\\\\\\\">\\\\u041a\\\\u043e\\\\u043b\\\\u0438\\\\u0447\\\\u0435\\\\u0441\\\\u0442\\\\u0432\\\\u043e \\\\u043f\\\\u043e\\\\u0440\\\\u0442\\\\u043e\\\\u0432 USB 3.0<\\\\\\/span><br><\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">2<\\\\\\/td><\\\\\\/tr><\\\\\\/tbody><\\\\\\/table>\\\",\\\"<table id=\\\\\\\"productDetails_techSpec_section_2\\\\\\\" class=\\\\\\\"a-keyvalue prodDetTable\\\\\\\" role=\\\\\\\"presentation\\\\\\\" xss=\\\\\\\"removed\\\\\\\"><tbody><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\">\\\\u0422\\\\u043e\\\\u0440\\\\u0433\\\\u043e\\\\u0432\\\\u0430\\\\u044f \\\\u043c\\\\u0430\\\\u0440\\\\u043a\\\\u0430<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">Asus<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\">\\\\u0421\\\\u0435\\\\u0440\\\\u0438\\\\u044f<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">UX330UA-AH55<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\"><span xss=\\\\\\\"removed\\\\\\\">\\\\u041d\\\\u043e\\\\u043c\\\\u0435\\\\u0440 \\\\u043c\\\\u043e\\\\u0434\\\\u0435\\\\u043b\\\\u0438 \\\\u0438\\\\u0437\\\\u0434\\\\u0435\\\\u043b\\\\u0438\\\\u044f<\\\\\\/span><br><\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">UX330UA-AH55<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\">\\\\u041e\\\\u043f\\\\u0435\\\\u0440\\\\u0430\\\\u0446\\\\u0438\\\\u043e\\\\u043d\\\\u043d\\\\u0430\\\\u044f \\\\u0441\\\\u0438\\\\u0441\\\\u0442\\\\u0435\\\\u043c\\\\u0430<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">Windows 10<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\"><span xss=\\\\\\\"removed\\\\\\\">\\\\u0412\\\\u0435\\\\u0441 \\\\u0438\\\\u0437\\\\u0434\\\\u0435\\\\u043b\\\\u0438\\\\u044f<\\\\\\/span><br><\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">2.6 pounds<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\"><span xss=\\\\\\\"removed\\\\\\\">\\\\u0420\\\\u0430\\\\u0437\\\\u043c\\\\u0435\\\\u0440\\\\u044b \\\\u0438\\\\u0437\\\\u0434\\\\u0435\\\\u043b\\\\u0438\\\\u044f<\\\\\\/span><br><\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">12.7 x 8.7 x 0.5 inches<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\"><span xss=\\\\\\\"removed\\\\\\\">\\\\u0420\\\\u0430\\\\u0437\\\\u043c\\\\u0435\\\\u0440\\\\u044b \\\\u0438\\\\u0437\\\\u0434\\\\u0435\\\\u043b\\\\u0438\\\\u044f \\\\u0414 \\\\u0445 \\\\u0428 \\\\u0445 \\\\u0412<\\\\\\/span><br><\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">12.7 x 8.7 x 0.5 inches<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\">\\\\u0426\\\\u0432\\\\u0435\\\\u0442<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">Gray Metal<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\"><span xss=\\\\\\\"removed\\\\\\\">\\\\u0411\\\\u0440\\\\u0435\\\\u043d\\\\u0434 \\\\u043f\\\\u0440\\\\u043e\\\\u0446\\\\u0435\\\\u0441\\\\u0441\\\\u043e\\\\u0440\\\\u0430<\\\\\\/span><br><\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">Intel<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\"><span xss=\\\\\\\"removed\\\\\\\">\\\\u041a\\\\u043e\\\\u043b\\\\u0438\\\\u0447\\\\u0435\\\\u0441\\\\u0442\\\\u0432\\\\u043e \\\\u043f\\\\u0440\\\\u043e\\\\u0446\\\\u0435\\\\u0441\\\\u0441\\\\u043e\\\\u0440\\\\u043e\\\\u0432<\\\\\\/span><br><\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">4<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\"><span xss=\\\\\\\"removed\\\\\\\">\\\\u0422\\\\u0438\\\\u043f \\\\u043f\\\\u0430\\\\u043c\\\\u044f\\\\u0442\\\\u0438 \\\\u043a\\\\u043e\\\\u043c\\\\u043f\\\\u044c\\\\u044e\\\\u0442\\\\u0435\\\\u0440\\\\u0430<\\\\\\/span><br><\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">DDR3 SDRAM<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\"><span xss=\\\\\\\"removed\\\\\\\">\\\\u0420\\\\u0430\\\\u0437\\\\u043c\\\\u0435\\\\u0440 \\\\u0444\\\\u043b\\\\u044d\\\\u0448-\\\\u043f\\\\u0430\\\\u043c\\\\u044f\\\\u0442\\\\u0438<\\\\\\/span><br><\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">256.0<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\"><span xss=\\\\\\\"removed\\\\\\\">\\\\u0422\\\\u0438\\\\u043f \\\\u043e\\\\u043f\\\\u0442\\\\u0438\\\\u0447\\\\u0435\\\\u0441\\\\u043a\\\\u043e\\\\u0433\\\\u043e \\\\u043f\\\\u0440\\\\u0438\\\\u0432\\\\u043e\\\\u0434\\\\u0430<\\\\\\/span><br><\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">None<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" xss=\\\\\\\"removed\\\\\\\"><span xss=\\\\\\\"removed\\\\\\\">\\\\u0411\\\\u0430\\\\u0442\\\\u0430\\\\u0440\\\\u0435\\\\u044f<\\\\\\/span><br><\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" xss=\\\\\\\"removed\\\\\\\">1 Lithium ion batteries required. (included)<\\\\\\/td><\\\\\\/tr><\\\\\\/tbody><\\\\\\/table>\\\"]\"}', 8, NULL, '5', 'percent', '0', 'percent', '[\"rgba(214,203,203,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1614697442, NULL, 'no', 'ok'),
(204, 0, '0.00', '[]', 'Huawei Mate SE Factory Unlocked', '{\"type\":\"vendor\",\"id\":\"7\"}', 16, '                                                                                                                        <p>Благодаря 5,93-дюймовому полноэкранному дизайну 18: 9, высокому соотношению экрана к корпусу и разрешению 2160 x 1080 FHD+ дисплей HUAWEI FullView на Huawei mate SE обеспечивает вам захватывающий визуальный опыт</p><p><br></p><p>Двухобъективная 16-мегапиксельная + 2-мегапиксельная задняя камера предлагает совершенно новый портретный режим, позволяющий делать профессиональные и художественные фотографии за один снимок со сверхбыстрым временем фокусировки</p><p><br></p><p>Операционная система : android N+EMUI 5.1 и сеть: LTE FDD/WCDMA/GSM. 4 ГБ оперативной памяти, 64 ГБ памяти + совместимость с microSD до 256 ГБ (не входит в комплект) + возможность двойной nano SIM-карты, окта-ядерный процессор 2,36 ГГц</p><p><br></p><p>Большая батарея емкостью 3340 мАч для тонны экранного времени на одной зарядке и ультра энергосберегающий режим, чтобы продлить заряд еще дольше, сохраняя вас на связи, когда вы больше всего в этом нуждаетесь</p><p><br></p><p>Гладкий металлический дизайн мальтийца просто восхитителен - стеклянная поверхность 2.5 D плавно перетекает в алюминиевое шасси, образуя идеально закругленные края</p>', 81, '1', '14092.91', '14092.91', '0', '1530442224', 'no', 'phone', 'Huawei Mate SE Factory Unlocked', '                                                                                                                                                      ', 'ok', '0', '170', 200, 'Pc', '{\"name\":\"[\\\"\\\\u041e\\\\u043f\\\\u0438\\\\u0441\\\\u0430\\\\u043d\\\\u0438\\\\u0435 \\\\u0442\\\\u043e\\\\u0432\\\\u0430\\\\u0440\\\\u0430\\\"]\",\"value\":\"[\\\"<p>\\\\u0411\\\\u043b\\\\u0430\\\\u0433\\\\u043e\\\\u0434\\\\u0430\\\\u0440\\\\u044f \\\\u0433\\\\u043b\\\\u0430\\\\u0434\\\\u043a\\\\u043e\\\\u043c\\\\u0443 \\\\u043c\\\\u0435\\\\u0442\\\\u0430\\\\u043b\\\\u043b\\\\u0438\\\\u0447\\\\u0435\\\\u0441\\\\u043a\\\\u043e\\\\u043c\\\\u0443 \\\\u0434\\\\u0438\\\\u0437\\\\u0430\\\\u0439\\\\u043d\\\\u0443, 4 \\\\u0413\\\\u0411 \\\\u043e\\\\u043f\\\\u0435\\\\u0440\\\\u0430\\\\u0442\\\\u0438\\\\u0432\\\\u043d\\\\u043e\\\\u0439 \\\\u043f\\\\u0430\\\\u043c\\\\u044f\\\\u0442\\\\u0438 + 64 \\\\u0413\\\\u0411 \\\\u0432\\\\u0441\\\\u0442\\\\u0440\\\\u043e\\\\u0435\\\\u043d\\\\u043d\\\\u043e\\\\u0439 \\\\u043f\\\\u0430\\\\u043c\\\\u044f\\\\u0442\\\\u0438, \\\\u0441\\\\u043b\\\\u043e\\\\u0442\\\\u0443 \\\\u0434\\\\u043b\\\\u044f \\\\u043a\\\\u0430\\\\u0440\\\\u0442 microSD \\\\u0434\\\\u043b\\\\u044f \\\\u0440\\\\u0430\\\\u0441\\\\u0448\\\\u0438\\\\u0440\\\\u0435\\\\u043d\\\\u0438\\\\u044f (\\\\u0434\\\\u043e 256 \\\\u0413\\\\u0411), \\\\u0437\\\\u0430\\\\u0432\\\\u043e\\\\u0434\\\\u0441\\\\u043a\\\\u0430\\\\u044f \\\\u0440\\\\u0430\\\\u0437\\\\u0431\\\\u043b\\\\u043e\\\\u043a\\\\u0438\\\\u0440\\\\u043e\\\\u0432\\\\u043a\\\\u0430 Huawei mate SE \\\\u044f\\\\u0432\\\\u043b\\\\u044f\\\\u0435\\\\u0442\\\\u0441\\\\u044f \\\\u043d\\\\u0435\\\\u0432\\\\u0435\\\\u0440\\\\u043e\\\\u044f\\\\u0442\\\\u043d\\\\u043e\\\\u0439 \\\\u0446\\\\u0435\\\\u043d\\\\u043d\\\\u043e\\\\u0441\\\\u0442\\\\u044c\\\\u044e \\\\u0432 \\\\u0441\\\\u043c\\\\u0430\\\\u0440\\\\u0442\\\\u0444\\\\u043e\\\\u043d\\\\u0430\\\\u0445. \\\\u0422\\\\u0435\\\\u043a\\\\u0441\\\\u0442, \\\\u0441\\\\u0435\\\\u0440\\\\u0444\\\\u0438\\\\u043d\\\\u0433 \\\\u0438 \\\\u043e\\\\u0441\\\\u0442\\\\u0430\\\\u0432\\\\u0430\\\\u0439\\\\u0442\\\\u0435\\\\u0441\\\\u044c \\\\u043d\\\\u0430 \\\\u0441\\\\u0432\\\\u044f\\\\u0437\\\\u0438 \\\\u0441 \\\\u0441\\\\u043e\\\\u0446\\\\u0438\\\\u0430\\\\u043b\\\\u044c\\\\u043d\\\\u044b\\\\u043c\\\\u0438 \\\\u0441\\\\u0435\\\\u0442\\\\u044f\\\\u043c\\\\u0438 \\\\u0434\\\\u043e\\\\u043b\\\\u044c\\\\u0448\\\\u0435 \\\\u0431\\\\u043b\\\\u0430\\\\u0433\\\\u043e\\\\u0434\\\\u0430\\\\u0440\\\\u044f \\\\u0441\\\\u0432\\\\u043e\\\\u0435\\\\u0439 \\\\u0431\\\\u0430\\\\u0442\\\\u0430\\\\u0440\\\\u0435\\\\u0435 \\\\u0435\\\\u043c\\\\u043a\\\\u043e\\\\u0441\\\\u0442\\\\u044c\\\\u044e 3340 \\\\u043c\\\\u0410\\\\u0447 \\\\u0438 \\\\u0432\\\\u0441\\\\u0442\\\\u0440\\\\u043e\\\\u0435\\\\u043d\\\\u043d\\\\u043e\\\\u0439 \\\\u0442\\\\u0435\\\\u0445\\\\u043d\\\\u043e\\\\u043b\\\\u043e\\\\u0433\\\\u0438\\\\u0438 \\\\u044d\\\\u043d\\\\u0435\\\\u0440\\\\u0433\\\\u043e\\\\u0441\\\\u0431\\\\u0435\\\\u0440\\\\u0435\\\\u0436\\\\u0435\\\\u043d\\\\u0438\\\\u044f. \\\\u0423\\\\u0441\\\\u043e\\\\u0432\\\\u0435\\\\u0440\\\\u0448\\\\u0435\\\\u043d\\\\u0441\\\\u0442\\\\u0432\\\\u043e\\\\u0432\\\\u0430\\\\u043d\\\\u043d\\\\u0430\\\\u044f \\\\u0441\\\\u0438\\\\u0441\\\\u0442\\\\u0435\\\\u043c\\\\u0430 \\\\u0438\\\\u0434\\\\u0435\\\\u043d\\\\u0442\\\\u0438\\\\u0444\\\\u0438\\\\u043a\\\\u0430\\\\u0446\\\\u0438\\\\u0438 \\\\u043e\\\\u0442\\\\u043f\\\\u0435\\\\u0447\\\\u0430\\\\u0442\\\\u043a\\\\u043e\\\\u0432 \\\\u043f\\\\u0430\\\\u043b\\\\u044c\\\\u0446\\\\u0435\\\\u0432 \\\\u0440\\\\u0430\\\\u0437\\\\u0431\\\\u043b\\\\u043e\\\\u043a\\\\u0438\\\\u0440\\\\u0443\\\\u0435\\\\u0442\\\\u0441\\\\u044f \\\\u0432 \\\\u043c\\\\u0433\\\\u043d\\\\u043e\\\\u0432\\\\u0435\\\\u043d\\\\u0438\\\\u0435 \\\\u043e\\\\u043a\\\\u0430 \\\\u0437\\\\u0430 0,2 \\\\u0441\\\\u0435\\\\u043a\\\\u0443\\\\u043d\\\\u0434\\\\u044b \\\\u0438 \\\\u0442\\\\u0430\\\\u043a\\\\u0436\\\\u0435 \\\\u043c\\\\u043e\\\\u0436\\\\u0435\\\\u0442 \\\\u0431\\\\u044b\\\\u0442\\\\u044c \\\\u0438\\\\u0441\\\\u043f\\\\u043e\\\\u043b\\\\u044c\\\\u0437\\\\u043e\\\\u0432\\\\u0430\\\\u043d\\\\u0430 \\\\u0434\\\\u043b\\\\u044f \\\\u0444\\\\u043e\\\\u0442\\\\u043e\\\\u0441\\\\u044a\\\\u0435\\\\u043c\\\\u043a\\\\u0438. MateSE \\\\u043e\\\\u0441\\\\u043d\\\\u0430\\\\u0449\\\\u0435\\\\u043d 5,93 - \\\\u0434\\\\u044e\\\\u0439\\\\u043c\\\\u043e\\\\u0432\\\\u044b\\\\u043c \\\\u0434\\\\u0438\\\\u0441\\\\u043f\\\\u043b\\\\u0435\\\\u0435\\\\u043c FHD+ HUAWEI Full View, \\\\u043f\\\\u0440\\\\u0435\\\\u0434\\\\u043b\\\\u0430\\\\u0433\\\\u0430\\\\u044e\\\\u0449\\\\u0438\\\\u043c \\\\u0440\\\\u0430\\\\u0441\\\\u0448\\\\u0438\\\\u0440\\\\u0435\\\\u043d\\\\u043d\\\\u044b\\\\u0439 \\\\u0438 \\\\u0437\\\\u0430\\\\u0445\\\\u0432\\\\u0430\\\\u0442\\\\u044b\\\\u0432\\\\u0430\\\\u044e\\\\u0449\\\\u0438\\\\u0439 \\\\u043e\\\\u043f\\\\u044b\\\\u0442 \\\\u043f\\\\u0440\\\\u043e\\\\u0441\\\\u043c\\\\u043e\\\\u0442\\\\u0440\\\\u0430. Huawei mate SE \\\\u0434\\\\u0430\\\\u0441\\\\u0442 \\\\u0432\\\\u0430\\\\u043c \\\\u0431\\\\u043e\\\\u043b\\\\u044c\\\\u0448\\\\u0435\\\\u0435 \\\\u043f\\\\u043e\\\\u043b\\\\u0435 \\\\u0437\\\\u0440\\\\u0435\\\\u043d\\\\u0438\\\\u044f \\\\u043f\\\\u0440\\\\u0438 \\\\u0438\\\\u0433\\\\u0440\\\\u0435 \\\\u0432 \\\\u0438\\\\u0433\\\\u0440\\\\u044b \\\\u0431\\\\u043b\\\\u0430\\\\u0433\\\\u043e\\\\u0434\\\\u0430\\\\u0440\\\\u044f \\\\u0441\\\\u0432\\\\u043e\\\\u0435\\\\u043c\\\\u0443 \\\\u0434\\\\u043b\\\\u0438\\\\u043d\\\\u043d\\\\u043e\\\\u043c\\\\u0443 \\\\u0441\\\\u043e\\\\u043e\\\\u0442\\\\u043d\\\\u043e\\\\u0448\\\\u0435\\\\u043d\\\\u0438\\\\u044e \\\\u0441\\\\u0442\\\\u043e\\\\u0440\\\\u043e\\\\u043d 18:9, \\\\u0441\\\\u043e\\\\u0441\\\\u0442\\\\u0430\\\\u0432\\\\u043b\\\\u044f\\\\u044e\\\\u0449\\\\u0435\\\\u043c\\\\u0443 82,9% \\\\u043e\\\\u0442\\\\u043d\\\\u043e\\\\u0448\\\\u0435\\\\u043d\\\\u0438\\\\u044f \\\\u044d\\\\u043a\\\\u0440\\\\u0430\\\\u043d\\\\u0430 \\\\u043a \\\\u043a\\\\u043e\\\\u0440\\\\u043f\\\\u0443\\\\u0441\\\\u0443. MateSE \\\\u043e\\\\u0441\\\\u043d\\\\u0430\\\\u0449\\\\u0435\\\\u043d 16-\\\\u043c\\\\u0435\\\\u0433\\\\u0430\\\\u043f\\\\u0438\\\\u043a\\\\u0441\\\\u0435\\\\u043b\\\\u044c\\\\u043d\\\\u043e\\\\u0439 + 2-\\\\u043c\\\\u0435\\\\u0433\\\\u0430\\\\u043f\\\\u0438\\\\u043a\\\\u0441\\\\u0435\\\\u043b\\\\u044c\\\\u043d\\\\u043e\\\\u0439 \\\\u0434\\\\u0432\\\\u0443\\\\u0445\\\\u043e\\\\u0431\\\\u044a\\\\u0435\\\\u043a\\\\u0442\\\\u0438\\\\u0432\\\\u043d\\\\u043e\\\\u0439 \\\\u0437\\\\u0430\\\\u0434\\\\u043d\\\\u0435\\\\u0439 \\\\u043a\\\\u0430\\\\u043c\\\\u0435\\\\u0440\\\\u043e\\\\u0439 \\\\u0438 8-\\\\u043c\\\\u0435\\\\u0433\\\\u0430\\\\u043f\\\\u0438\\\\u043a\\\\u0441\\\\u0435\\\\u043b\\\\u044c\\\\u043d\\\\u043e\\\\u0439 \\\\u0444\\\\u0440\\\\u043e\\\\u043d\\\\u0442\\\\u0430\\\\u043b\\\\u044c\\\\u043d\\\\u043e\\\\u0439 \\\\u043a\\\\u0430\\\\u043c\\\\u0435\\\\u0440\\\\u043e\\\\u0439. \\\\u041e\\\\u0431\\\\u0435 \\\\u043a\\\\u0430\\\\u043c\\\\u0435\\\\u0440\\\\u044b \\\\u0438\\\\u043c\\\\u0435\\\\u044e\\\\u0442 \\\\u043f\\\\u043e\\\\u0440\\\\u0442\\\\u0440\\\\u0435\\\\u0442\\\\u043d\\\\u044b\\\\u0439 \\\\u0440\\\\u0435\\\\u0436\\\\u0438\\\\u043c \\\\u0438 \\\\u0432\\\\u043a\\\\u043b\\\\u044e\\\\u0447\\\\u0430\\\\u044e\\\\u0442 \\\\u043f\\\\u043e\\\\u043f\\\\u0443\\\\u043b\\\\u044f\\\\u0440\\\\u043d\\\\u044b\\\\u0435 \\\\u044d\\\\u0444\\\\u0444\\\\u0435\\\\u043a\\\\u0442\\\\u044b \\\\u043d\\\\u0430\\\\u043a\\\\u043b\\\\u0435\\\\u0435\\\\u043a. \\\\u0414\\\\u0435\\\\u043b\\\\u0430\\\\u0439\\\\u0442\\\\u0435 \\\\u0441\\\\u0435\\\\u043b\\\\u0444\\\\u0438 \\\\u0441 \\\\u043b\\\\u0435\\\\u0433\\\\u043a\\\\u043e\\\\u0441\\\\u0442\\\\u044c\\\\u044e, \\\\u0438\\\\u0441\\\\u043f\\\\u043e\\\\u043b\\\\u044c\\\\u0437\\\\u0443\\\\u044f \\\\u0444\\\\u0443\\\\u043d\\\\u043a\\\\u0446\\\\u0438\\\\u044e \\\\u0443\\\\u043f\\\\u0440\\\\u0430\\\\u0432\\\\u043b\\\\u0435\\\\u043d\\\\u0438\\\\u044f \\\\u0436\\\\u0435\\\\u0441\\\\u0442\\\\u0430\\\\u043c\\\\u0438. Huawei mate SE \\\\u0441\\\\u043e\\\\u0447\\\\u0435\\\\u0442\\\\u0430\\\\u0435\\\\u0442 \\\\u0432 \\\\u0441\\\\u0435\\\\u0431\\\\u0435 \\\\u043e\\\\u0442\\\\u043b\\\\u0438\\\\u0447\\\\u043d\\\\u044b\\\\u0439 \\\\u0432\\\\u043d\\\\u0435\\\\u0448\\\\u043d\\\\u0438\\\\u0439 \\\\u0432\\\\u0438\\\\u0434, \\\\u043c\\\\u043e\\\\u0449\\\\u043d\\\\u043e\\\\u0441\\\\u0442\\\\u044c, \\\\u0441\\\\u043a\\\\u043e\\\\u0440\\\\u043e\\\\u0441\\\\u0442\\\\u044c \\\\u0438 \\\\u0444\\\\u0443\\\\u043d\\\\u043a\\\\u0446\\\\u0438\\\\u043e\\\\u043d\\\\u0430\\\\u043b\\\\u044c\\\\u043d\\\\u043e\\\\u0441\\\\u0442\\\\u044c, \\\\u043d\\\\u0435 \\\\u043d\\\\u0430\\\\u0440\\\\u0443\\\\u0448\\\\u0430\\\\u044f \\\\u0431\\\\u0430\\\\u043d\\\\u043a.<br><\\\\\\/p>\\\"]\"}', 3, NULL, '0', 'percent', '0', 'percent', '[\"rgba(133,131,131,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1614698758, NULL, 'no', 'ok'),
(205, 0, '0.00', '[]', 'ranya Спортивные Беспроводные Наушники', '{\"type\":\"vendor\",\"id\":\"7\"}', 16, '                                                                                                                                                                <ul class=\"a-unordered-list a-vertical a-spacing-none\" xss=\"removed\"><li xss=\"removed\"></li><li xss=\"removed\"><span xss=\"removed\">[HD SOUND With DEEP BASS] Благодаря Bluetooth 5.0 и технологии HD-рендеринга без потерь, которые обеспечивают невероятное качество звука с глубокими басами и кристально четкими высокими частотами. Беспроводные наушники Tanya true могут блокировать множество окружающих шумов и избегать шума ветра, создаваемого во время бега, езды на велосипеде, бега трусцой и т. Д.</span></li><li xss=\"removed\"><span xss=\"removed\">[СТАБИЛЬНОЕ ПОДКЛЮЧЕНИЕ] Обеспечьте стабильное и бесшовное подключение с помощью Bluetooth 5.0 и высокочувствительных антенных устройств на расстоянии до 33 футов, которые также обеспечивают низкую задержку и низкие энергетические характеристики во время передачи данных.</span></li><li xss=\"removed\"><span xss=\"removed\">[[ПРОСТОТА В ИСПОЛЬЗОВАНИИ] Наушники автоматически включаются и подключаются к смартфону, когда их вынимают из чехла; автоматически выключаются и заряжаются, когда их кладут обратно в чехол. Кроме того, наушники можно использовать для ответа/отклонения вызова, пропуска/воспроизведения/паузы песен и активации голосового помощника, такого как Siri.</span></li></ul>', 81, '1', '5460.00', '5460.00', '0', '1530442470', 'no', 'headphone', 'ranya Спортивные Беспроводные Наушники', '                                                                                                                                                                                                        ', 'ok', '0', '142', 500, 'Pc', '{\"name\":\"[\\\"\\\\u0414\\\\u043e\\\\u043f\\\\u043e\\\\u043b\\\\u043d\\\\u0438\\\\u0442\\\\u0435\\\\u043b\\\\u044c\\\\u043d\\\\u043e\\\"]\",\"value\":\"[\\\"<p>[\\\\u0411\\\\u0435\\\\u0437\\\\u043e\\\\u043f\\\\u0430\\\\u0441\\\\u043d\\\\u0430\\\\u044f \\\\u043f\\\\u043e\\\\u0441\\\\u0430\\\\u0434\\\\u043a\\\\u0430 \\\\u0438 \\\\u043c\\\\u0438\\\\u043d\\\\u0438\\\\u0430\\\\u0442\\\\u044e\\\\u0440\\\\u043d\\\\u044b\\\\u0439 \\\\u0434\\\\u0438\\\\u0437\\\\u0430\\\\u0439\\\\u043d] \\\\u0427\\\\u0440\\\\u0435\\\\u0437\\\\u0432\\\\u044b\\\\u0447\\\\u0430\\\\u0439\\\\u043d\\\\u043e \\\\u043b\\\\u0435\\\\u0433\\\\u043a\\\\u0438\\\\u0439 \\\\u0438 \\\\u043c\\\\u0438\\\\u043d\\\\u0438\\\\u0430\\\\u0442\\\\u044e\\\\u0440\\\\u043d\\\\u044b\\\\u0439 \\\\u0434\\\\u0438\\\\u0437\\\\u0430\\\\u0439\\\\u043d \\\\u0432\\\\u043a\\\\u043b\\\\u0430\\\\u0434\\\\u044b\\\\u0448\\\\u0435\\\\u0439 \\\\u0441 \\\\u0434\\\\u0432\\\\u0443\\\\u043c\\\\u044f \\\\u043f\\\\u0430\\\\u0440\\\\u0430\\\\u043c\\\\u0438 \\\\u0443\\\\u0448\\\\u043d\\\\u044b\\\\u0445 \\\\u0432\\\\u043a\\\\u043b\\\\u0430\\\\u0434\\\\u044b\\\\u0448\\\\u0435\\\\u0439, \\\\u043a\\\\u043e\\\\u0442\\\\u043e\\\\u0440\\\\u044b\\\\u0435 \\\\u043e\\\\u0431\\\\u0435\\\\u0441\\\\u043f\\\\u0435\\\\u0447\\\\u0438\\\\u0432\\\\u0430\\\\u044e\\\\u0442 \\\\u0443\\\\u0434\\\\u043e\\\\u0431\\\\u043d\\\\u0443\\\\u044e \\\\u0444\\\\u0438\\\\u043a\\\\u0441\\\\u0430\\\\u0446\\\\u0438\\\\u044e \\\\u043d\\\\u0430\\\\u0443\\\\u0448\\\\u043d\\\\u0438\\\\u043a\\\\u043e\\\\u0432 \\\\u0438 \\\\u0443\\\\u043b\\\\u0443\\\\u0447\\\\u0448\\\\u0430\\\\u044e\\\\u0442 \\\\u0432\\\\u043f\\\\u0435\\\\u0447\\\\u0430\\\\u0442\\\\u043b\\\\u0435\\\\u043d\\\\u0438\\\\u044f \\\\u043e\\\\u0442 \\\\u0437\\\\u0430\\\\u043d\\\\u044f\\\\u0442\\\\u0438\\\\u0439 \\\\u0441\\\\u043f\\\\u043e\\\\u0440\\\\u0442\\\\u043e\\\\u043c.<\\\\\\/p><p><br><\\\\\\/p><p>[\\\\u0411\\\\u041e\\\\u041b\\\\u0415\\\\u0415 \\\\u041f\\\\u0420\\\\u041e\\\\u0414\\\\u041e\\\\u041b\\\\u0416\\\\u0418\\\\u0422\\\\u0415\\\\u041b\\\\u042c\\\\u041d\\\\u042b\\\\u0419 \\\\u0421\\\\u0420\\\\u041e\\\\u041a \\\\u0421\\\\u041b\\\\u0423\\\\u0416\\\\u0411\\\\u042b \\\\u0411\\\\u0410\\\\u0422\\\\u0410\\\\u0420\\\\u0415\\\\u0418] \\\\u041f\\\\u0440\\\\u0438 \\\\u043f\\\\u043e\\\\u043b\\\\u043d\\\\u043e\\\\u0439 \\\\u0437\\\\u0430\\\\u0440\\\\u044f\\\\u0434\\\\u043a\\\\u0435 \\\\u043d\\\\u0430\\\\u0443\\\\u0448\\\\u043d\\\\u0438\\\\u043a\\\\u043e\\\\u0432 \\\\u0432\\\\u0440\\\\u0435\\\\u043c\\\\u044f \\\\u0432\\\\u043e\\\\u0441\\\\u043f\\\\u0440\\\\u043e\\\\u0438\\\\u0437\\\\u0432\\\\u0435\\\\u0434\\\\u0435\\\\u043d\\\\u0438\\\\u044f \\\\u0441\\\\u043e\\\\u0441\\\\u0442\\\\u0430\\\\u0432\\\\u043b\\\\u044f\\\\u0435\\\\u0442 \\\\u0434\\\\u043e 3-4 \\\\u0447\\\\u0430\\\\u0441\\\\u043e\\\\u0432. \\\\u0412 \\\\u043f\\\\u0440\\\\u043e\\\\u0442\\\\u0438\\\\u0432\\\\u043d\\\\u043e\\\\u043c \\\\u0441\\\\u043b\\\\u0443\\\\u0447\\\\u0430\\\\u0435 \\\\u043f\\\\u0435\\\\u0440\\\\u0435\\\\u043d\\\\u043e\\\\u0441\\\\u043d\\\\u043e\\\\u0439 \\\\u0437\\\\u0430\\\\u0440\\\\u044f\\\\u0434\\\\u043d\\\\u044b\\\\u0439 \\\\u0447\\\\u0435\\\\u0445\\\\u043e\\\\u043b \\\\u043c\\\\u043e\\\\u0436\\\\u043d\\\\u043e \\\\u0431\\\\u044b\\\\u043b\\\\u043e \\\\u0431\\\\u044b \\\\u0434\\\\u043e\\\\u043f\\\\u043e\\\\u043b\\\\u043d\\\\u0438\\\\u0442\\\\u0435\\\\u043b\\\\u044c\\\\u043d\\\\u043e \\\\u0437\\\\u0430\\\\u0440\\\\u044f\\\\u0434\\\\u0438\\\\u0442\\\\u044c \\\\u043d\\\\u0430\\\\u0443\\\\u0448\\\\u043d\\\\u0438\\\\u043a\\\\u0438 4 \\\\u0440\\\\u0430\\\\u0437\\\\u0430. \\\\u041e\\\\u0431\\\\u0449\\\\u0435\\\\u0435 \\\\u0432\\\\u0440\\\\u0435\\\\u043c\\\\u044f \\\\u0438\\\\u0433\\\\u0440\\\\u044b \\\\u043c\\\\u043e\\\\u0436\\\\u0435\\\\u0442 \\\\u0434\\\\u043e\\\\u0441\\\\u0442\\\\u0438\\\\u0433\\\\u0430\\\\u0442\\\\u044c 15 \\\\u0447\\\\u0430\\\\u0441\\\\u043e\\\\u0432. \\\\u0412\\\\u044b \\\\u043f\\\\u043e\\\\u043b\\\\u043d\\\\u043e\\\\u0441\\\\u0442\\\\u044c\\\\u044e \\\\u043f\\\\u043e\\\\u043a\\\\u0440\\\\u044b\\\\u0432\\\\u0430\\\\u0435\\\\u0442\\\\u0435\\\\u0441\\\\u044c \\\\u043d\\\\u0430\\\\u0448\\\\u0435\\\\u0439 \\\\u0413\\\\u0410\\\\u0420\\\\u0410\\\\u041d\\\\u0422\\\\u0418\\\\u0415\\\\u0419 1 \\\\u0413\\\\u041e\\\\u0414 \\\\u0438 \\\\u0413\\\\u0410\\\\u0420\\\\u0410\\\\u041d\\\\u0422\\\\u0418\\\\u0415\\\\u0419 \\\\u0412\\\\u041e\\\\u0417\\\\u0412\\\\u0420\\\\u0410\\\\u0422\\\\u0410 30 \\\\u0414\\\\u041d\\\\u0415\\\\u0419, \\\\u0432\\\\u0441\\\\u0435, \\\\u0447\\\\u0442\\\\u043e \\\\u0432\\\\u0430\\\\u043c \\\\u043d\\\\u0443\\\\u0436\\\\u043d\\\\u043e \\\\u0441\\\\u0434\\\\u0435\\\\u043b\\\\u0430\\\\u0442\\\\u044c, \\\\u044d\\\\u0442\\\\u043e \\\\u0441\\\\u0432\\\\u044f\\\\u0437\\\\u0430\\\\u0442\\\\u044c\\\\u0441\\\\u044f \\\\u0441 \\\\u043d\\\\u0430\\\\u043c\\\\u0438 \\\\u043d\\\\u0430\\\\u043f\\\\u0440\\\\u044f\\\\u043c\\\\u0443\\\\u044e \\\\u0432 \\\\u043d\\\\u0430\\\\u0448\\\\u0435\\\\u0439 \\\\u0441\\\\u043b\\\\u0443\\\\u0436\\\\u0431\\\\u0435 \\\\u043f\\\\u043e\\\\u0434\\\\u0434\\\\u0435\\\\u0440\\\\u0436\\\\u043a\\\\u0438 \\\\u043a\\\\u043b\\\\u0438\\\\u0435\\\\u043d\\\\u0442\\\\u043e\\\\u0432.<\\\\\\/p>\\\"]\"}', 2, NULL, '0', 'percent', '0', 'percent', '[\"rgba(204,204,204,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1614533202, NULL, 'no', 'ok'),
(206, 0, '0.00', '[]', 'Беспроводные Наушники Bluetooth С Микрофоном', '{\"type\":\"vendor\",\"id\":\"16\"}', 16, '                                                                                                                                                                                                                                                                                        <p><span xss=\"removed\">Запатентованный дизайн, с наушниками в ушах, обеспечивающими четкие, четкие мелодии, и чашечками над ушами, обеспечивающими басы, которые вы можете почувствовать.</span><br xss=\"removed\"><br xss=\"removed\"><span xss=\"removed\">CES 2018 Best of Innovation. Красная точка-2018 лучшим из лучших награды. Хороший Дизайн Лауреатом Премии 2018.</span><br xss=\"removed\"><br xss=\"removed\"><span xss=\"removed\">Беспроводная связь Bluetooth® с aptX-HD (плюс проводные опции). 20-часовое время автономной работы. 6 внутренних микрофонов для четких голосовых вызовов.</span><br xss=\"removed\"><br xss=\"removed\"><span xss=\"removed\">\"Одно можно сказать наверняка: в персонализированном режиме нурафоны звучат лучше, чем любые наушники, которые я когда-либо использовал.\" - Журнал ФАКТОВ</span><br></p>', 85, '1', '2390.00', '2390.00', '0', '1530444179', 'no', 'headphn', 'Беспроводные Наушники Bluetooth С Микрофоном', '                                                                                                                                                                                                                                                               ', 'ok', '0', '168', 249, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 2, NULL, '98', 'percent', '0', 'percent', '[\"rgba(13,12,12,1)\",\"rgba(191,207,94,1)\",\"rgba(204,204,204,1)\",\"rgba(46,31,222,1)\"]', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1615647132, NULL, 'no', 'ok');

-- --------------------------------------------------------

--
-- Структура таблицы `product_affiliation`
--

CREATE TABLE `product_affiliation` (
  `product_affiliation_id` bigint(20) NOT NULL,
  `product_affiliator_id` int(11) NOT NULL,
  `product_affiliator_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_affiliation_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `generated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_affiliation`
--

INSERT INTO `product_affiliation` (`product_affiliation_id`, `product_affiliator_id`, `product_affiliator_type`, `product_affiliation_code`, `product_id`, `generated_at`) VALUES
(1, 3, '', 'aff_633c966eb2f97153cdeb', 98, '2019-12-10 06:46:48'),
(2, 3, '', 'aff_62a7da485edb52b8808f', 218, '2019-12-10 06:47:50'),
(3, 3, '', 'aff_17725c5b92fc62ebc3f8', 212, '2019-12-12 10:05:34');

-- --------------------------------------------------------

--
-- Структура таблицы `product_affiliation_code_use`
--

CREATE TABLE `product_affiliation_code_use` (
  `product_affiliation_code_use_id` bigint(20) NOT NULL,
  `affiliator_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `affiliation_user_id` int(11) NOT NULL,
  `points` decimal(20,2) NOT NULL DEFAULT 0.00,
  `currency` decimal(20,2) NOT NULL DEFAULT 0.00,
  `used_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_affiliation_code_use`
--

INSERT INTO `product_affiliation_code_use` (`product_affiliation_code_use_id`, `affiliator_id`, `product_id`, `code`, `affiliation_user_id`, `points`, `currency`, `used_at`) VALUES
(1, 3, 218, 'aff_62a7da485edb52b8808f', 9, '100.00', '25.00', '2019-12-11 06:26:07'),
(2, 3, 98, 'aff_633c966eb2f97153cdeb', 9, '24.00', '6.00', '2019-12-12 01:41:41'),
(3, 3, 212, 'aff_17725c5b92fc62ebc3f8', 9, '100.00', '25.00', '2019-12-12 05:14:07');

-- --------------------------------------------------------

--
-- Структура таблицы `product_affiliation_points_total`
--

CREATE TABLE `product_affiliation_points_total` (
  `product_affiliation_points_total_id` bigint(20) NOT NULL,
  `affiliator_id` int(11) NOT NULL,
  `points` decimal(20,2) NOT NULL DEFAULT 0.00,
  `currency` decimal(20,2) NOT NULL DEFAULT 0.00,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_affiliation_points_total`
--

INSERT INTO `product_affiliation_points_total` (`product_affiliation_points_total_id`, `affiliator_id`, `points`, `currency`, `updated_at`) VALUES
(1, 3, '224.00', '56.00', '2019-12-12 05:14:07');

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `permission` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`role_id`, `name`, `permission`, `description`) VALUES
(1, 'master', '', 'Master Admin. Adds Admin. Provides account roles.'),
(5, 'Менеджер по продукту', '[\"13\",\"17\",\"21\",\"37\",\"41\",\"45\",\"49\"]', 'Управляет продуктами'),
(4, 'Бухгалтер ', '[\"9\",\"13\",\"17\",\"21\"]', 'Бухгалтерский учет и поддержка'),
(6, 'Менеджер', '[\"5\",\"13\",\"29\",\"33\",\"37\",\"41\",\"57\",\"63\",\"103\"]', 'Менеджер MobExpress');

-- --------------------------------------------------------

--
-- Структура таблицы `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_code` longtext DEFAULT NULL,
  `buyer` longtext DEFAULT NULL,
  `guest_id` varchar(100) DEFAULT NULL,
  `product_details` longtext DEFAULT NULL,
  `shipping_address` longtext DEFAULT NULL,
  `vat` longtext DEFAULT NULL,
  `vat_percent` varchar(10) DEFAULT NULL,
  `shipping` longtext DEFAULT NULL,
  `payment_type` varchar(100) DEFAULT NULL,
  `payment_status` longtext DEFAULT NULL,
  `payment_details` longtext DEFAULT NULL,
  `payment_timestamp` longtext DEFAULT NULL,
  `grand_total` longtext DEFAULT NULL,
  `sale_datetime` longtext DEFAULT NULL,
  `delivary_datetime` longtext DEFAULT NULL,
  `delivery_status` longtext DEFAULT NULL,
  `viewed` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sale`
--

INSERT INTO `sale` (`sale_id`, `sale_code`, `buyer`, `guest_id`, `product_details`, `shipping_address`, `vat`, `vat_percent`, `shipping`, `payment_type`, `payment_status`, `payment_details`, `payment_timestamp`, `grand_total`, `sale_datetime`, `delivary_datetime`, `delivery_status`, `viewed`) VALUES
(1, '2021030', '7', NULL, '{\"854d6fae5ee42911677c739ee1734486\":{\"id\":\"202\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":28.99,\"name\":\"EG3 Gaming Headset\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/mobexpress\\/uploads\\/product_image\\/product_202_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"854d6fae5ee42911677c739ee1734486\",\"subtotal\":28.99}}', '{\"firstname\":\"\\u0410\\u0439\\u043d\\u0443\\u0440\",\"lastname\":\"\\u0413\\u0438\\u0437\\u0430\\u0442\\u0443\\u043b\\u043b\\u0438\\u043d\",\"address1\":\"\\u0411\\u0443\\u0433\\u0443\\u043b\\u044c\\u043c\\u0430\",\"address2\":\"\\u0420\\u0422\",\"zip\":\"423230\",\"email\":\"customer@shop.com\",\"phone\":\"07894561234\",\"langlat\":\"\",\"payment_type\":\"wallet\"}', '0', '', '0', 'wallet', '[]', 'hfgh', NULL, '28.99', '1614683133', '', '[]', 'ok'),
(2, '2021032', '7', NULL, '{\"854d6fae5ee42911677c739ee1734486\":{\"id\":\"202\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":28.99,\"name\":\"EG3 Gaming Headset\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/mobexpress\\/uploads\\/product_image\\/product_202_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"854d6fae5ee42911677c739ee1734486\",\"subtotal\":28.99}}', '{\"firstname\":\"\\u0410\\u0439\\u043d\\u0443\\u0440\",\"lastname\":\"\\u0413\\u0438\\u0437\\u0430\\u0442\\u0443\\u043b\\u043b\\u0438\\u043d\",\"address1\":\"\\u0411\\u0443\\u0433\\u0443\\u043b\\u044c\\u043c\\u0430\",\"address2\":\"\\u0420\\u0422\",\"zip\":\"423230\",\"email\":\"customer@shop.com\",\"phone\":\"07894561234\",\"langlat\":\"\",\"payment_type\":\"wallet\"}', '0', '', '0', 'wallet', '[{\"vendor\":\"7\",\"status\":\"paid\"}]', '', NULL, '28.99', '1615649069', '', '[{\"vendor\":\"7\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok');

-- --------------------------------------------------------

--
-- Структура таблицы `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `elements` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `style` varchar(20) DEFAULT NULL,
  `serial` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `slider_style`
--

CREATE TABLE `slider_style` (
  `slider_style_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `slider_style`
--

INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(1, 'WELCOME TYPE 1', '{\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:6500;transition2d:all;transition3d:15;\\\"\",\n   \"background\":\"bg\",\n   \"images\":[\n\n   ],\n   \"texts\":[\n      {\n         \"element\":\"h1\",\n         \"show_name\":\"WELCOME\",\n         \"name\":\"text_1\",\n         \"style\":\"top:30%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:50px;\",\n         \"data_ls\":\"offsetxin:0; durationin:2500; offsetxout:0; durationout:2500; showuntil:1;\",\n         \"color\":\"#ffffff\",\n         \"background\":\"rgba(0,0,0,0)\"\n      },\n      {\n         \"element\":\"h1\",\n         \"show_name\":\"YOUR SHOP NAME\",\n         \"name\":\"text_2\",\n         \"style\":\"top:50%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:100px;  white-space: nowrap;\",\n         \"data_ls\":\"offsetxin:0; durationin:2500; delayin:500; offsetxout:0; durationout:2500; showuntil:1;\",\n         \"color\":\"#ffffff\",\n         \"background\":\"rgba(0,0,0,0)\"\n      },\n      {\n         \"element\":\"h1\",\n         \"show_name\":\"SHOP TITLE\",\n         \"name\":\"text_3\",\n         \"style\":\"top:70%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:40px; white-space: nowrap;\",\n         \"data_ls\":\"offsetxin:0; durationin:2500; delayin:1200; offsetxout:0; durationout:2500; showuntil:1;\",\n         \"color\":\"#ffffff\",\n         \"background\":\"rgba(0,0,0,0)\"\n      }\n   ]\n}'),
(2, 'WELCOME TYPE 2', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:4500;transition2d:24,25,27,28,34,35,37,38,110,113;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"show_name\":\"Image 1\",\r\n         \"name\":\"ase\",\r\n         \"style\":\"top:20px; left:50%;width:220px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:top; durationin:4600; easingin:easeOutQuad; fadein:false; rotatein:-10; offsetxout:0; durationout:1500;\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"WELCOME TO\",\r\n         \"name\":\"text_1\",\r\n         \"style\":\"top:260px; left:50%; text-align: center;  font-weight: 300; width:300px; height:60px; font-size:30px; line-height:60px; border-radius:5px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; scalexin:0; scaleyin:0; offsetxout:0; offsetyout:top; durationout:750; durationin:1000; fadeout:false;\",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"YOUR SHOP NAME\",\r\n         \"name\":\"text_2\",\r\n         \"style\":\"top:340px; left:50%; text-align: center; font-weight: 300; width:500px; height:100px; font-size:40px; line-height:100px; border-radius:5px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; scalexin:0; scaleyin:0; offsetxout:0; offsetyout:bottom; durationin:1000; durationout:750; fadeout:false;\",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#8D00B0\"\r\n      }\r\n   ]\r\n}'),
(3, 'SLIDER TYPE 1', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7000;transition2d:76,77,78,79;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"show_name\":\"Product Image 1\",\r\n         \"name\":\"circle_1\",\r\n         \"style\":\"top:35%; left:60%;width:200px; white-space: nowrap; \",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:top; durationin:750; delayin:1500; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; showuntil:1; easingout:easeInQuart; fadeout:false; \"\r\n      },\r\n      {\r\n         \"show_name\":\"Product Image 2\",\r\n         \"name\":\"circle_2\",\r\n         \"style\":\"top:35%; left:60%;width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:top; durationin:750; delayin:3000; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; showuntil:1; easingout:easeInQuart; fadeout:false; \"\r\n      },\r\n      {\r\n         \"show_name\":\"Product Image 3\",\r\n         \"name\":\"circle_3\",\r\n         \"style\":\"top:35%; left:60%;width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:top; durationin:750; delayin:4500; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; easingout:easeInQuart; fadeout:false; \"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_1\",\r\n         \"style\":\"top:105px; left:30px; text-align: center; font-weight: 300; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:750; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5;\",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\",\r\n         \"other\":\"fixed\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 1\",\r\n         \"name\":\"product_feature_1\",\r\n         \"style\":\"top:100px; left:85px; font-weight: 300; font-size:25px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:left; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_2\",\r\n         \"style\":\"top:155px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:750; delayin:500; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\",\r\n         \"other\":\"fixed\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 2\",\r\n         \"name\":\"product_feature_2\",\r\n         \"style\":\"top:150px; left:85px; font-weight: 300; font-size:25px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:left; delayin:500; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_3\",\r\n         \"style\":\"top:205px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:750; delayin:1000; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\",\r\n         \"other\":\"fixed\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 3\",\r\n         \"name\":\"product_feature_3\",\r\n         \"style\":\"top:200px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap; \",\r\n         \"data_ls\":\"offsetxin:left; delayin:1000; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_4\",\r\n         \"style\":\"top:255px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX;  border-radius:100px; white-space: nowrap; \",\r\n         \"data_ls\":\"offsetxin:0; durationin:750; delayin:1500; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5;\",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\",\r\n         \"other\":\"fixed\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 4\",\r\n         \"name\":\"product_feature_4\",\r\n         \"style\":\"top:250px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:left; delayin:1500; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_5\",\r\n         \"style\":\"top:305px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:750; delayin:2000; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\",\r\n         \"other\":\"fixed\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 5\",\r\n         \"name\":\"product_feature_5\",\r\n         \"style\":\"top:300px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:left; delayin:2000; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT TITLE 1\",\r\n         \"name\":\"product_title_1\",\r\n         \"style\":\"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:450; delayin:1750; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; showuntil:51; easingout:easeInQuart; scalexout:3; scaleyout:3;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT TITLE 2\",\r\n         \"name\":\"product_title_2\",\r\n         \"style\":\"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap; \",\r\n         \"data_ls\":\"offsetxin:0; durationin:450; delayin:3250; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; showuntil:51; easingout:easeInQuart; scalexout:3; scaleyout:3;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT TITLE 3\",\r\n         \"name\":\"product_title_3\",\r\n         \"style\":\"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:450; delayin:4750; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; easingout:easeInQuart; scalexout:3; scaleyout:3;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}'),
(4, 'SLIDER TYPE 2', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:4500;transition2d:105,106;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"style\":\"top:100px;left:80px; white-space:nowrap; width:220px;\",\r\n         \"data_ls\":\"offsetxin:left;durationin:1500; delayin:1400; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_1\",\r\n         \"show_name\":\"PRODUCT IMAGE 1\"\r\n      },\r\n      {\r\n         \"style\":\"top:100px;left:180px; white-space:nowrap;width:220px; \",\r\n         \"data_ls\":\"offsetxin:left;durationin:1500; delayin:1200; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_2\",\r\n         \"show_name\":\"PRODUCT IMAGE 2\"\r\n      },\r\n      {\r\n         \"style\":\"top:100px;left:280px; white-space:nowrap; width:220px;\",\r\n         \"data_ls\":\"offsetxin:left;durationin:1500; delayin:1000; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_3\",\r\n         \"show_name\":\"PRODUCT IMAGE 3\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"top:20px;left:700px; font-weight:300; font-size:40px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:1000; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 1\",\r\n         \"name\":\"product_feature_1\",\r\n         \"style\":\"top:100px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 2\",\r\n         \"name\":\"product_feature_2\",\r\n         \"style\":\"top:150px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:1300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURe 3\",\r\n         \"name\":\"product_feature_3\",\r\n         \"style\":\"top:200px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:1800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 4\",\r\n         \"name\":\"product_feature_4\",\r\n         \"style\":\"top:250px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:2300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 5\",\r\n         \"name\":\"product_feature_5\",\r\n         \"style\":\"top:300px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:2800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 6\",\r\n         \"name\":\"product_feature_6\",\r\n         \"style\":\"top:350px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:3300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_1\",\r\n         \"style\":\"top:107px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_2\",\r\n         \"style\":\"top:157px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:1000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_3\",\r\n         \"style\":\"top:207px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:1500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_4\",\r\n         \"style\":\"top:257px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:2000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_5\",\r\n         \"style\":\"top:307px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:2500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_6\",\r\n         \"style\":\"top:357px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:3000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      }\r\n   ]\r\n}'),
(5, 'SLIDER TYPE 3', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7500;transition2d:105,106;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"style\":\"top:100px;left:580px;width:220px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:right;durationin:1500; delayin:1400; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_1\",\r\n         \"show_name\":\"PRODUCT IMAGE 1\"\r\n      },\r\n      {\r\n         \"style\":\"top:100px;left:680px;width:220px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:right;durationin:1500; delayin:1200; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_2\",\r\n         \"show_name\":\"PRODUCT IMAGE 2\"\r\n      },\r\n      {\r\n         \"style\":\"top:100px;left:780px;width:220px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:right;durationin:1500; delayin:1000; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_3\",\r\n         \"show_name\":\"PRODUCT IMAGE 3\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"top:20px;left:80px; font-weight:300; font-size:40px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:1000; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_1\",\r\n         \"style\":\"top:107px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 1\",\r\n         \"name\":\"product_feature_1\",\r\n         \"style\":\"top:100px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_2\",\r\n         \"style\":\"top:157px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:1000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 2\",\r\n         \"name\":\"product_feature_2\",\r\n         \"style\":\"top:150px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:1300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_3\",\r\n         \"style\":\"top:207px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:1500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 3\",\r\n         \"name\":\"product_feature_3\",\r\n         \"style\":\"top:200px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:1800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_4\",\r\n         \"style\":\"top:257px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:2000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 4\",\r\n         \"name\":\"product_feature_4\",\r\n         \"style\":\"top:250px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:2300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_5\",\r\n         \"style\":\"top:307px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:2500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 5\",\r\n         \"name\":\"product_feature_5\",\r\n         \"style\":\"top:300px;left:116px; font-weight:300; font-size:30px; white-space:nowrap;\",\r\n         \"data_ls\":\"offsetxin:0;delayin:2800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_6\",\r\n         \"style\":\"top:357px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:3000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 6\",\r\n         \"name\":\"product_feature_6\",\r\n         \"style\":\"top:350px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:3300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}'),
(6, 'SLIDER TYPE 4', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7500;transition2d:105,106;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"name\":\"long_1\",\r\n         \"style\":\"top:60px;left:578px;width:200px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; \",\r\n         \"show_name\":\"PRODUCT IMAGE 1\"\r\n      },\r\n      {\r\n         \"name\":\"semi_long_1\",\r\n         \"style\":\"top:170px;left:800px;width:200px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; \",\r\n         \"show_name\":\"PRODUCT IMAGE 2\"\r\n      },\r\n      {\r\n         \"name\":\"square_1\",\r\n         \"style\":\"top:265px;left:1020px;width:200px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; \",\r\n         \"show_name\":\"PRODUCT IMAGE 3\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h1\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"top:20px;left:50px; font-size:50px; font-weight:300; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:3000; delayin:500; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; bottom; 0; offsetxout:0; rotatexout:90; transformoriginout:50; \",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 1\",\r\n         \"name\":\"product_feature_1\",\r\n         \"style\":\"top:100px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 2\",\r\n         \"name\":\"product_feature_2\",\r\n         \"style\":\"top:150px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:1000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 3\",\r\n         \"name\":\"product_feature_3\",\r\n         \"style\":\"top:200px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:1500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 4\",\r\n         \"name\":\"product_feature_4\",\r\n         \"style\":\"top:250px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:2000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 5\",\r\n         \"name\":\"product_feature_5\",\r\n         \"style\":\"top:300px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:2500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 6\",\r\n         \"name\":\"product_feature_6\",\r\n         \"style\":\"top:350px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:3000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 7\",\r\n         \"name\":\"product_feature_7\",\r\n         \"style\":\"top:400px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:3500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}'),
(7, 'SLIDER TYPE 5', '{\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7500;transition2d:73,102;\\\"\",\n   \"background\":\"bg_apple\",\n   \"images\":[\n      {\n         \"name\":\"long_1\",\n         \"style\":\"top:50%; left:50%;width:200px; white-space:nowrap;\",\n         \"data_ls\" : \"\",\n         \"show_name\":\"IMAGE\"\n      }\n   ],\n   \"texts\":[\n      {\n         \"element\":\"h6\",\n         \"show_name\":\"PRICE\",\n         \"name\":\"price\",\n         \"style\":\"top:55%; left:39%; durationin:500; delayin:600; fadein:false; rotatein:30; durationout:500; fadeout:false; slidedirection:fade; slideoutdirection:fade; scalein:0.1; scaleout:0.1; font-weight:300; box-shadow:0px 2px 8px -2px black; padding-top:5px; padding-right:20px; padding-bottom:5px; padding-left:20px; font-size:30px; color:#ffffff; background:#B816B2; border-radius:5px; white-space:nowrap;\",\n         \"data_ls\" : \"\",\n         \"color\":\"#ffffff\",\n         \"background\":\"#b816b2\"\n      },\n      {\n         \"element\":\"h6\",\n         \"show_name\":\"PRODUCT TITLE\",\n         \"name\":\"product_title\",\n         \"style\":\"top:45%; left:36%; durationin:500; delayin:500; fadein:false; rotatein:-30; durationout:500; fadeout:false; slidedirection:fade; slideoutdirection:fade; scalein:0.1;scaleout:0.1; font-weight:300; box-shadow:0px 2px 8px -2px black; padding-top:5px; padding-right:20px; padding-bottom:5px; padding-left:20px; font-size:30px; color:#ffffff; background:#760093;border-radius:5px; white-space:nowrap;\",\n         \"data_ls\" : \"\",\n         \"color\":\"#ffffff\",\n         \"background\":\"#760093\"\n      }\n   ]\n}'),
(8, 'SLIDER TYPE 6', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7500;transition2d:73,102;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"style\":\"top:100px;left:100px; width:250px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:3000; delayin:1500; rotateyin:90; transformoriginin:left; 0; offsetxout:0; durationout:750; rotateyout:90; transformoriginout:left; \",\r\n         \"name\":\"semi_long_1\",\r\n         \"show_name\":\"PRODUCT IMAGE 1\"\r\n      },\r\n      {\r\n         \"style\":\"top:100px;left:400px; width:250px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:3000; delayin:1500; rotateyin:-90; transformoriginin:right; 0; offsetxout:0; durationout:750; rotateyout:90; transformoriginout:right; \",\r\n         \"name\":\"semi_long_2\",\r\n         \"show_name\":\"PRODUCT IMAGE 2\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h1\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"font-family:Roboto;top:25px; left:192px; font-weight:100; text-align:center; width:340px; font-size:40px; border-radius:5px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:2500; delayin:2000; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; bottom; 0; offsetxout:0; rotateout:-90; transformoriginout:left; \",\r\n         \"color\":\"#34009d\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\" DUMMY TEXT 1\",\r\n         \"name\":\"dummy_text_1\",\r\n         \"style\":\"top:50px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;delayin:2300; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#740091\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 2\",\r\n         \"name\":\"dummy_text_2\",\r\n         \"style\":\"top:90px;left:800px; font-weight:300; font-size:24px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:1500; delayin:2700; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; \",\r\n         \"color\":\"#ff00f6\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 3\",\r\n         \"name\":\"dummy_text_3\",\r\n         \"style\":\"top:150px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;delayin:3000; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#740091\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 4\",\r\n         \"name\":\"dummy_text_4\",\r\n         \"style\":\"top:190px;left:800px; font-weight:300; font-size:24px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:1500; delayin:3400; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; \",\r\n         \"color\":\"#ff00f6\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 5\",\r\n         \"name\":\"dummy_text_5\",\r\n         \"style\":\"top:250px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;delayin:3700; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#740091\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 6\",\r\n         \"name\":\"dummy_text_6\",\r\n         \"style\":\"top:290px;left:799px; font-weight:300; font-size:24px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:1500; delayin:4100; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; \",\r\n         \"color\":\"#ff00f6\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 7\",\r\n         \"name\":\"dummy_text_7\",\r\n         \"style\":\"top:360px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;delayin:4400; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#740091\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 8\",\r\n         \"name\":\"dummy_text_8\",\r\n         \"style\":\"top:400px;left:799px; font-weight:300; font-size:24px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:1500; delayin:4800; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; \",\r\n         \"color\":\"#ff00f6\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}'),
(9, 'SLIDER TYPE 7', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7500;transition2d:73,102;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"style\":\"top:50px; left:50%;width:278px; white-space:nowrap;\",\r\n         \"data_ls\":\"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; \",\r\n         \"name\":\"semi_long_1\",\r\n         \"show_name\":\"IMAGE\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 1\",\r\n         \"name\":\"dummy_text_1\",\r\n         \"style\":\"top:80px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:1000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 2\",\r\n         \"name\":\"dummy_text_2\",\r\n         \"style\":\"top:140px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:1500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 3\",\r\n         \"name\":\"dummy_text_3\",\r\n         \"style\":\"top:200px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:2000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 4\",\r\n         \"name\":\"dummy_text_4\",\r\n         \"style\":\"top:260px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:2500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 5\",\r\n         \"name\":\"dummy_text_5\",\r\n         \"style\":\"top:320px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:3000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 6\",\r\n         \"name\":\"dummy_text_6\",\r\n         \"style\":\"top:380px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:3500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"top:50%;left:900px; font-weight:100; text-align:right; padding:15px; font-size:40px; line-height:37px; font-family:roboto; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:2500; delayin:3250; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; top; 0; offsetxout:0; durationout:1000; rotatexout:90; transformoriginout:50; bottom; \",\r\n         \"color\":\"#fff\",\r\n         \"background\":\"#11008b\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 6\",\r\n         \"name\":\"dummy_text_6\",\r\n         \"style\":\"top:505px;left:983px; font-family:; flower; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;delayin:3500; skewxin:60; scalexin:1.5; offsetxout:-50; durationout:1000; skewxout:60; scalexout:1.5; \",\r\n         \"color\":\"#d9482b\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}');
INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(10, 'SLIDER TYPE 8', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7000;transition2d:76,77,78,79;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"style\":\"top:120px; left:42%;width:180px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; \",\r\n         \"name\":\"semi_long_1\",\r\n         \"show_name\":\"PRODUCT IMAGE 1\"\r\n      },\r\n      {\r\n         \"style\":\"top:120px; left:58%;width:180px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; \",\r\n         \"name\":\"semi_long_2\",\r\n         \"show_name\":\"PRODUCT IMAGE 2\"\r\n      },\r\n      {\r\n         \"style\":\"top:50px; left:50%;width:200px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; \",\r\n         \"name\":\"long_1\",\r\n         \"show_name\":\"PRODUCT IMAGE 3\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 1\",\r\n         \"name\":\"dummy_text_1\",\r\n         \"style\":\"top:80px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:1000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 2\",\r\n         \"name\":\"dummy_text_2\",\r\n         \"style\":\"top:140px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:1500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 3\",\r\n         \"name\":\"dummy_text_3\",\r\n         \"style\":\"top:200px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:2000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 4\",\r\n         \"name\":\"dummy_text_4\",\r\n         \"style\":\"top:260px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:2500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 5\",\r\n         \"name\":\"dummy_text_5\",\r\n         \"style\":\"top:320px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:3000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 6\",\r\n         \"name\":\"dummy_text_6\",\r\n         \"style\":\"top:380px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:3500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"top:50%;left:900px; font-weight:100; text-align:right; padding:15px; font-size:40px; line-height:37px; font-family:roboto; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:2500; delayin:3250; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; top; 0; offsetxout:0; durationout:1000; rotatexout:90; transformoriginout:50; bottom; \",\r\n         \"color\":\"#fff\",\r\n         \"background\":\"#11008b\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 7\",\r\n         \"name\":\"dummy_text_7\",\r\n         \"style\":\"top:505px;left:983px; font-family:; flower; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;delayin:3500; skewxin:60; scalexin:1.5; offsetxout:-50; durationout:1000; skewxout:60; scalexout:1.5; \",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}'),
(11, 'WELCOME TYPE 3', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:8000;transition2d:4;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"show_name\":\"Image 1\",\r\n         \"name\":\"ase\",\r\n         \"style\":\"top:45%; left:45%;width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:1500; delayin:3000; rotateyin:90; transformoriginin:right 50% 0; offsetxout:0; durationout:1500; showuntil:1000; rotateyout:-90; transformoriginout:right 50% 0;\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"Introducing\",\r\n         \"name\":\"text_1\",\r\n         \"style\":\"top:40%; left:50%; font-weight: 300; font-size:30px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:50; durationin:750; easingin:easeOutBack; skewxin:-50; offsetxout:-50; durationout:600; showuntil:1500; easingout:easeInBack; skewxout:50;\",\r\n         \"color\":\"#C505BD\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"Your Shop Name\",\r\n         \"name\":\"text_2\",\r\n         \"style\":\"top:50%; left:50%; font-weight: 300; font-size:50px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:-100; durationin:750; delayin:250; easingin:easeOutBack; skewxin:-50; offsetxout:100; durationout:600; showuntil:1500; easingout:easeInBack; skewxout:50;\",\r\n         \"color\":\"#8D00AF\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"your Shop Slogan\",\r\n         \"name\":\"text_3\",\r\n         \"style\":\"top:47%; left:690px; font-weight: 300; font-size:35px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:1500; delayin:3000; rotateyin:90; transformoriginin:left 50% 0; offsetxout:0; durationout:1500; showuntil:1500; rotateyout:-90; transformoriginout:left 50% 0;\",\r\n         \"color\":\"#8D00AF\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      }\r\n   ]\r\n}'),
(12, 'SLIDER TYPE 9', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:9500;transition2d:5;timeshift:-3000;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"show_name\":\"Image 1\",\r\n         \"name\":\"semi_long_1\",\r\n         \"style\":\"top:120px; left:300px; width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:100; durationin:2000; delayin:1000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;\"\r\n      },\r\n      {\r\n         \"show_name\":\"Image 2\",\r\n         \"name\":\"semi_long_2\",\r\n         \"style\":\"top:120px; left:200px; width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:100; durationin:2000; delayin:2000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;\"\r\n      },\r\n      {\r\n         \"show_name\":\"Image 3\",\r\n         \"name\":\"semi_long_3\",\r\n         \"style\":\"top:120px; left:100px; width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:100; durationin:2000; delayin:3000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h1\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"text_1\",\r\n         \"style\":\"top:60px; left:800px; font-weight: 300; font-size:50px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:50; durationin:3000; rotateyin:60; transformoriginin:right 50% 0; offsetxout:-50; durationout:3000; rotateyout:-60; transformoriginout:left 50% 0;\",\r\n         \"color\":\"#730091\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h2\",\r\n         \"show_name\":\"BIG SALE\",\r\n         \"name\":\"text_2\",\r\n         \"style\":\"top:120px; left:801px; font-weight: 300; font-size:30px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:-50; durationin:3000; delayin:500; rotateyin:-60; transformoriginin:left 50% 0; offsetxout:50; durationout:3000; rotateyout:60; transformoriginout:right 50% 0;\",\r\n         \"color\":\"#FA6BF3\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h3\",\r\n         \"show_name\":\"$99\",\r\n         \"name\":\"text_3\",\r\n         \"style\":\"top:200px; left:850px; font-weight: 300; font-size:120px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:4000; delayin:2000; rotateyin:450; transformoriginin:left 50% 0; offsetxout:0; durationout:500; easingout:easeInBack; rotateyout:90; transformoriginout:left 50% 0;\",\r\n         \"color\":\"#730091\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      }\r\n   ]\r\n}');

-- --------------------------------------------------------

--
-- Структура таблицы `slides`
--

CREATE TABLE `slides` (
  `slides_id` int(11) NOT NULL,
  `button_color` longtext DEFAULT NULL,
  `text_color` longtext DEFAULT NULL,
  `button_text` varchar(300) DEFAULT NULL,
  `button_link` varchar(500) DEFAULT NULL,
  `uploaded_by` longtext DEFAULT NULL,
  `added_by` longtext DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `slides`
--

INSERT INTO `slides` (`slides_id`, `button_color`, `text_color`, `button_text`, `button_link`, `uploaded_by`, `added_by`, `status`) VALUES
(15, '', '', '', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"3\"}', 'ok'),
(16, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"3\"}', 'ok'),
(22, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', 'ok'),
(23, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', 'ok'),
(24, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', 'ok'),
(25, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"3\"}', 'ok'),
(26, 'rgba(255,0,0,1)', 'rgba(255,255,255,1)', 'Demo', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"12\"}', '0'),
(27, 'rgba(134,217,29,1)', 'rgba(29,92,214,1)', 'link', 'www.google.com', 'vendor', '{\"type\":\"vendor\",\"id\":\"13\"}', 'ok'),
(28, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', 'ok'),
(29, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', 'ok'),
(30, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"5\"}', 'ok'),
(31, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"5\"}', 'ok'),
(32, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"5\"}', 'ok'),
(33, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"5\"}', 'ok'),
(34, 'rgba(245,233,233,1)', 'rgba(18,17,17,1)', 'Demo', 'https://www.google.com', 'vendor', '{\"type\":\"vendor\",\"id\":\"17\"}', 'ok');

-- --------------------------------------------------------

--
-- Структура таблицы `social_links`
--

CREATE TABLE `social_links` (
  `social_links_id` int(11) NOT NULL,
  `type` longtext DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `social_links`
--

INSERT INTO `social_links` (`social_links_id`, `type`, `value`) VALUES
(1, 'facebook', 'http://facebook.com/'),
(2, 'google-plus', 'http://google.com/'),
(3, 'twitter', 'http://twitter.com/'),
(4, 'skype', 'http://skype.com/'),
(5, 'pinterest', 'http://pinterest.com/'),
(6, 'youtube', 'http://youtube.com/');

-- --------------------------------------------------------

--
-- Структура таблицы `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `type` longtext DEFAULT NULL,
  `category` longtext DEFAULT NULL,
  `sub_category` longtext DEFAULT NULL,
  `product` longtext DEFAULT NULL,
  `quantity` longtext DEFAULT NULL,
  `rate` longtext DEFAULT NULL,
  `total` longtext DEFAULT NULL,
  `reason_note` longtext DEFAULT NULL,
  `datetime` longtext DEFAULT NULL,
  `sale_id` varchar(30) DEFAULT NULL,
  `added_by` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `stock`
--

INSERT INTO `stock` (`stock_id`, `type`, `category`, `sub_category`, `product`, `quantity`, `rate`, `total`, `reason_note`, `datetime`, `sale_id`, `added_by`) VALUES
(1, 'add', '6', '15', '42', '50', '140.00', '7000', '', '1474202947', NULL, NULL),
(2, 'add', '6', '13', '41', '80', '220.00', '17600', '', '1474205403', NULL, NULL),
(3, 'add', '3', '19', '45', '10', '400.00', '4000', '', '1474273237', NULL, '{\"type\":\"vendor\",\"id\":\"2\"}'),
(4, 'destroy', '3', '19', '45', '3', NULL, '3', '', '1474273259', NULL, '{\"type\":\"vendor\",\"id\":\"2\"}'),
(5, 'add', '7', '24', '46', '50', '170.00', '8500', '', '1474279907', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(6, 'add', '7', '23', '47', '25', '8.00', '200', '', '1474283137', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(7, 'add', '7', '25', '48', '35', '6.00', '210', '', '1474284193', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(8, 'add', '5', '29', '50', '50', '15.25', '762.5', '', '1474485138', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(9, 'add', '5', '29', '49', '45', '34.35', '1545.75', '', '1474485156', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(10, 'add', '5', '29', '51', '25', '11.11', '277.75', '', '1474485808', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(11, 'add', '5', '29', '52', '18', '9.56', '172.08', '', '1474487386', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(12, 'add', '5', '27', '53', '10', '85.00', '850', '', '1474488421', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(13, 'add', '5', '27', '55', '15', '101.00', '1515', '', '1474489704', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(14, 'add', '5', '27', '54', '15', '100.00', '1500', '', '1474489715', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(15, 'add', '5', '27', '56', '25', '85.00', '2125', '', '1474490017', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(16, 'add', '5', '28', '57', '20', '65.00', '1300', '', '1474490674', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(17, 'add', '5', '28', '58', '25', '60.00', '1500', '', '1474491530', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(18, 'add', '5', '28', '59', '20', '65.00', '1300', '', '1474492165', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(19, 'add', '5', '30', '61', '100', '41.00', '4100', '', '1474493210', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(20, 'add', '5', '28', '60', '20', '75.00', '1500', '', '1474493219', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(21, 'add', '5', '30', '62', '80', '620.00', '49600', '', '1474493510', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(22, 'add', '5', '30', '63', '50', '650.00', '32500', '', '1474493879', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(23, 'add', '4', '9', '65', '30', '11.26', '337.8', '', '1474572304', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(24, 'add', '4', '9', '66', '35', '15.35', '537.25', '', '1474572782', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(25, 'add', '4', '9', '67', '30', '13.20', '396', '', '1474574151', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(26, 'add', '4', '10', '68', '20', '12.36', '247.2', '', '1474575119', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(27, 'add', '4', '10', '69', '30', '8.20', '245.99999999999997', '', '1474575712', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(28, 'add', '4', '11', '70', '25', '3.35', '83.75', '', '1474576989', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(29, 'add', '4', '11', '71', '50', '2.88', '144', '', '1474577860', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(30, 'add', '4', '11', '72', '10', '8.90', '89', '', '1474578795', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(31, 'add', '4', '36', '73', '15', '38.32', '574.8', '', '1474580033', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(32, 'add', '4', '36', '74', '20', '41.38', '827.6', '', '1474580235', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(33, 'add', '4', '36', '75', '20', '39.63', '792.6', '', '1474580993', NULL, NULL),
(34, 'add', '1', '3', '76', '10', '43567.00', '435670', '', '1474721288', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(35, 'add', '1', '3', '77', '15', '58378.00', '875670', '', '1474722264', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(36, 'add', '1', '3', '78', '20', '131772.00', '2635440', '', '1474722788', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(37, 'add', '1', '63', '79', '5', '1734589.00', '8672945', '', '1474790400', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(38, 'add', '1', '63', '80', '10', '558900.00', '5589000', '', '1474792233', NULL, NULL),
(39, 'add', '1', '63', '81', '5', '3234690.00', '16173450', '', '1474792382', NULL, NULL),
(40, 'add', '1', '63', '82', '8', '4467490.00', '35739920', '', '1474792879', NULL, NULL),
(41, 'add', '1', '5', '83', '12', '11670.00', '140040', '', '1474793757', NULL, NULL),
(42, 'add', '1', '5', '84', '25', '42879.00', '1071975', '', '1474796354', NULL, NULL),
(43, 'add', '1', '5', '85', '18', '74590.00', '1342620', '', '1474796688', NULL, NULL),
(44, 'add', '1', '2', '86', '16', '45000.00', '720000', '', '1474799085', NULL, NULL),
(45, 'add', '1', '6', '87', '10', '41000.00', '410000', '', '1474800049', NULL, NULL),
(46, 'add', '1', '6', '88', '25', '33890.00', '847250', '', '1474800332', NULL, NULL),
(47, 'add', '1', '6', '89', '10', '42000.00', '420000', '', '1474801376', NULL, NULL),
(48, 'add', '2', '62', '90', '45', '61897.00', '2785365', '', '1474802601', NULL, NULL),
(49, 'add', '2', '17', '92', '55', '42000.00', '2310000', '', '1474803009', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(50, 'add', '2', '62', '91', '10', '65000.00', '650000', '', '1474889590', NULL, NULL),
(52, 'add', '4', '10', '69', '0', '8.20', '0', '', '1475390469', NULL, NULL),
(53, 'add', '2', '18', '93', '10', '350.00', '3500', '', '1475483558', NULL, NULL),
(54, 'add', '2', '18', '94', '10', '350.00', '3500', '', '1475485603', NULL, NULL),
(56, 'add', '2', '18', '96', '100', '350.00', '35000', '', '1475498670', NULL, NULL),
(59, 'add', '1', '3', '4', '100', '88000.00', '8800000', '', '1476007723', NULL, NULL),
(60, 'add', '1', '2', '1', '50', '120000.00', '6000000', '', '1476007803', NULL, NULL),
(61, 'destroy', '4', '36', '74', '2', NULL, '0', 'sale', '1517725191', '5', NULL),
(62, 'destroy', '4', '36', '73', '1', NULL, '0', 'sale', '1517732450', '6', NULL),
(63, 'destroy', '4', '36', '73', '1', NULL, '0', 'sale', '1517732639', '7', NULL),
(64, 'add', '4', '10', '37', '100', '150.00', '15000', '', '1517942532', NULL, NULL),
(65, 'add', '4', '8', '36', '100', '210.00', '0', '', '1517942542', NULL, NULL),
(66, 'add', '4', '35', '35', '100', '240.00', '24000', '', '1517942553', NULL, NULL),
(67, 'add', '4', '9', '26', '100', '10.00', '1000', '', '1517942563', NULL, NULL),
(68, 'add', '4', '37', '25', '100', '250.00', '25000', '', '1517942574', NULL, NULL),
(69, 'add', '4', '37', '24', '100', '400.00', '40000', '', '1517942585', NULL, NULL),
(70, 'add', '4', '37', '23', '100', '210.00', '21000', '', '1517942598', NULL, NULL),
(71, 'add', '4', '40', '18', '200', '100.00', '20000', '', '1517942609', NULL, NULL),
(72, 'add', '4', '35', '17', '150', '120.00', '18000', '', '1517942624', NULL, NULL),
(73, 'add', '4', '39', '16', '200', '110.00', '22000', '', '1517942637', NULL, NULL),
(74, 'add', '4', '37', '15', '200', '130.00', '0', '', '1517942647', NULL, NULL),
(75, 'add', '4', '34', '14', '100', '320.00', '32000', '', '1517942656', NULL, NULL),
(76, 'add', '4', '8', '12', '200', '180.00', '36000', '', '1517942666', NULL, NULL),
(77, 'add', '4', '11', '11', '100', '6500.00', '650000', '', '1517942677', NULL, NULL),
(78, 'add', '1', '5', '2', '100', '18000.00', '1800000', '', '1517942691', NULL, NULL),
(79, 'add', '4', '10', '7', '500', '35.00', '17500', '', '1517942704', NULL, NULL),
(80, 'add', '5', '30', '8', '300', '650.00', '195000', '', '1517942726', NULL, NULL),
(81, 'add', '5', '28', '9', '500', '120.00', '60000', '', '1517942751', NULL, NULL),
(82, 'add', '16', '78', '101', '10', '95.00', '950', '', '1518078812', NULL, NULL),
(83, 'add', '16', '78', '103', '20', '125.00', '2500', '', '1518079324', NULL, NULL),
(84, 'add', '16', '78', '102', '15', '125.00', '1875', '', '1518079332', NULL, NULL),
(85, 'add', '16', '78', '104', '15', '125.00', '1875', '', '1518079423', NULL, NULL),
(86, 'add', '16', '78', '104', '100', '125.00', '12500', '', '1518079433', NULL, NULL),
(87, 'add', '16', '78', '103', '150', '125.00', '18750', '', '1518079443', NULL, NULL),
(88, 'add', '16', '78', '102', '90', '125.00', '11250', '', '1518079453', NULL, NULL),
(89, 'add', '16', '78', '101', '120', '95.00', '11400', '', '1518079464', NULL, NULL),
(90, 'add', '1', '6', '89', '50', '42000.00', '2100000', '', '1518079474', NULL, NULL),
(91, 'add', '1', '6', '88', '50', '33890.00', '1694500', '', '1518079483', NULL, NULL),
(92, 'add', '1', '6', '87', '80', '41000.00', '3280000', '', '1518079495', NULL, NULL),
(93, 'add', '1', '6', '86', '80', '45000.00', '3600000', '', '1518079507', NULL, NULL),
(94, 'add', '16', '78', '105', '120', '110.00', '13200', '', '1518079727', NULL, NULL),
(95, 'add', '16', '78', '106', '150', '122.00', '18300', '', '1518079898', NULL, NULL),
(96, 'add', '16', '79', '107', '120', '145.00', '17400', '', '1518080173', NULL, NULL),
(97, 'add', '16', '79', '108', '80', '144.00', '11520', '', '1518080359', NULL, NULL),
(98, 'add', '16', '79', '110', '50', '75.00', '3750', '', '1518081142', NULL, NULL),
(99, 'add', '16', '79', '109', '60', '140.00', '8400', '', '1518081151', NULL, NULL),
(100, 'add', '16', '79', '111', '100', '95.00', '9500', '', '1518081235', NULL, NULL),
(101, 'add', '16', '79', '112', '150', '50.00', '7500', '', '1518081346', NULL, NULL),
(102, 'add', '16', '80', '113', '150', '95.00', '14250', '', '1518081575', NULL, NULL),
(103, 'add', '16', '80', '114', '130', '98.00', '12740', '', '1518081650', NULL, NULL),
(104, 'add', '16', '80', '115', '200', '100.00', '20000', '', '1518081994', NULL, NULL),
(105, 'add', '5', '27', '117', '85', '45.00', '3825', '', '1518082666', NULL, NULL),
(106, 'add', '16', '80', '116', '100', '92.00', '9200', '', '1518082674', NULL, NULL),
(107, 'add', '5', '27', '118', '80', '56.00', '4480', '', '1518082825', NULL, NULL),
(108, 'add', '5', '27', '120', '80', '65.00', '5200', '', '1518083101', NULL, NULL),
(109, 'add', '5', '27', '119', '80', '65.00', '5200', '', '1518083110', NULL, NULL),
(110, 'add', '5', '28', '121', '50', '79.00', '3950', '', '1518083320', NULL, NULL),
(111, 'add', '5', '28', '122', '60', '55.00', '3300', '', '1518083433', NULL, NULL),
(112, 'add', '5', '28', '123', '60', '66.00', '3960', '', '1518083632', NULL, NULL),
(113, 'add', '5', '29', '124', '82', '45.00', '3690', '', '1518083830', NULL, NULL),
(114, 'add', '5', '29', '124', '56', '45.00', '2520', '', '1518084168', NULL, NULL),
(115, 'add', '5', '30', '126', '55', '90.00', '4950', '', '1518084178', NULL, NULL),
(116, 'add', '5', '30', '127', '80', '125.00', '10000', '', '1518084186', NULL, NULL),
(117, 'add', '5', '29', '125', '50', '56.00', '2800', '', '1518084194', NULL, NULL),
(118, 'add', '4', '37', '128', '80', '120.00', '9600', '', '1518086137', NULL, NULL),
(119, 'add', '4', '37', '129', '100', '145.00', '14500', '', '1518086245', NULL, NULL),
(120, 'add', '1', '2', '130', '50', '32000.00', '1600000', '', '1518091220', NULL, NULL),
(0, 'destroy', '16', '87', '202', '1', NULL, '0', 'sale', '1615649069', '2', NULL),
(0, 'destroy', '16', '87', '202', '1', NULL, '0', 'sale', '1614683133', '0', NULL),
(0, 'add', '16', '85', '206', '50', '2390.00', '119500', '', '1614684442', NULL, NULL),
(127, 'destroy', '0', '0', '101', '1', NULL, '0', 'sale', '1521374128', '15', NULL),
(133, 'add', '4', '10', '37', '500', '150.00', '75000', '', '1522827326', NULL, NULL),
(134, 'add', '1', '5', '2', '100', '18000.00', '1800000', '', '1522827360', NULL, NULL),
(135, 'add', '4', '10', '7', '1000', '35.00', '35000', '', '1522827390', NULL, NULL),
(136, 'add', '4', '34', '14', '150', '320.00', '0', '', '1522827433', NULL, NULL),
(137, 'add', '4', '37', '15', '200', '130.00', '0', '', '1522827463', NULL, NULL),
(138, 'add', '4', '39', '16', '200', '110.00', '0', '', '1522827488', NULL, NULL),
(139, 'add', '4', '35', '17', '100', '120.00', '12000', '', '1522827994', NULL, NULL),
(140, 'add', '4', '40', '18', '150', '100.00', '15000', '', '1522828021', NULL, NULL),
(141, 'add', '4', '35', '35', '200', '240.00', '0', '', '1522828073', NULL, NULL),
(142, 'add', '4', '9', '26', '200', '10.00', '0', '', '1522828105', NULL, NULL),
(143, 'add', '4', '37', '25', '200', '250.00', '50000', '', '1522828132', NULL, NULL),
(144, 'add', '4', '37', '24', '200', '400.00', '0', '', '1522828163', NULL, NULL),
(145, 'add', '4', '37', '23', '300', '210.00', '0', '', '1522828256', NULL, NULL),
(146, 'add', '4', '8', '36', '400', '210.00', '0', '', '1522828286', NULL, NULL),
(147, 'add', '4', '8', '12', '300', '180.00', '0', '', '1522828328', NULL, NULL),
(148, 'add', '4', '11', '11', '250', '6500.00', '0', '', '1522828413', NULL, NULL),
(149, 'add', '5', '28', '9', '250', '120.00', '0', '', '1522828467', NULL, NULL),
(150, 'add', '5', '30', '8', '300', '650.00', '195000', '', '1522828488', NULL, NULL),
(151, 'add', '17', '78', '103', '30', '4.40', '132', '', '1522837440', NULL, NULL),
(152, 'add', '17', '78', '104', '50', '4.72', '236', '', '1522837706', NULL, NULL),
(153, 'add', '17', '78', '105', '20', '5.50', '110', '', '1522837862', NULL, NULL),
(154, 'add', '18', '79', '106', '15', '18.30', '274.5', '', '1522838553', NULL, NULL),
(155, 'add', '18', '79', '107', '12', '22.63', '271.56', '', '1522838928', NULL, NULL),
(156, 'add', '21', '80', '108', '5', '57.53', '287.65', '', '1522841201', NULL, NULL),
(157, 'add', '21', '80', '109', '1', '58.77', '58.77', '', '1522841562', NULL, NULL),
(158, 'add', '16', '81', '110', '5', '719.99', '3599.95', '', '1522842237', NULL, NULL),
(159, 'add', '16', '81', '111', '3', '209.99', '629.97', '', '1522842721', NULL, NULL),
(160, 'add', '16', '81', '112', '2', '629.99', '1259.98', '', '1522842852', NULL, NULL),
(161, 'add', '1', '3', '124', '200', '54000.00', '10800000', '', '1522922112', NULL, NULL),
(162, 'add', '1', '3', '125', '300', '59000.00', '17700000', '', '1522922301', NULL, NULL),
(163, 'add', '5', '27', '127', '25', '169.99', '4249.75', '', '1522925860', NULL, NULL),
(164, 'add', '5', '27', '127', '75', '169.99', '12749.25', '', '1522925881', NULL, NULL),
(165, 'add', '5', '27', '128', '100', '372.06', '37206', '', '1522926055', NULL, NULL),
(166, 'add', '5', '27', '130', '500', '79.20', '0', '', '1522930929', NULL, NULL),
(167, 'add', '5', '28', '129', '500', '50.00', '0', '', '1522930942', NULL, NULL),
(174, 'add', '1', '6', '131', '25', '26999.00', '674975', '', '1523857079', NULL, NULL),
(175, 'add', '1', '6', '132', '10', '4999.00', '49990', '', '1523861112', NULL, NULL),
(176, 'add', '1', '63', '133', '5', '117139.33', '585696.65', '', '1523863280', NULL, NULL),
(177, 'add', '1', '63', '134', '10', '794782.29', '7947822.9', '', '1523863576', NULL, NULL),
(178, 'add', '5', '28', '135', '200', '63.75', '12750', '', '1523867199', NULL, NULL),
(179, 'add', '5', '28', '136', '150', '44.99', '6748.5', '', '1523867819', NULL, NULL),
(180, 'add', '5', '29', '137', '500', '52.99', '26495', '', '1523868841', NULL, NULL),
(181, 'add', '5', '29', '138', '300', '31.80', '9540', '', '1523869110', NULL, NULL),
(182, 'add', '5', '29', '139', '300', '45.99', '13797', '', '1523869336', NULL, NULL),
(183, 'add', '5', '30', '140', '50', '26724.99', '1336249.5', '', '1523870296', NULL, NULL),
(184, 'add', '5', '30', '141', '100', '664.99', '66499', '', '1523870578', NULL, NULL),
(185, 'add', '16', '81', '142', '100', '794.00', '79400', '', '1523871020', NULL, NULL),
(186, 'add', '16', '81', '143', '100', '625.00', '62500', '', '1523871351', NULL, NULL),
(187, 'add', '16', '81', '144', '200', '409.00', '81800', '', '1523871782', NULL, NULL),
(188, 'add', '16', '83', '145', '50', '70.72', '3536', '', '1523872591', NULL, NULL),
(189, 'add', '16', '83', '146', '100', '11.58', '1158', '', '1523872944', NULL, NULL),
(190, 'add', '16', '83', '147', '140', '91.97', '12875.8', '', '1523873194', NULL, NULL),
(191, 'add', '16', '83', '148', '200', '96.28', '19256', '', '1523873449', NULL, NULL),
(192, 'add', '16', '83', '149', '50', '105.97', '5298.5', '', '1523873845', NULL, NULL),
(193, 'add', '16', '83', '150', '200', '36.43', '7286', '', '1523874195', NULL, NULL),
(194, 'add', '4', '9', '151', '300', '43.98', '13193.999999999998', '', '1523874895', NULL, NULL),
(195, 'add', '4', '10', '152', '250', '13.59', '3397.5', '', '1523875175', NULL, NULL),
(196, 'add', '4', '9', '153', '300', '19.99', '5996.999999999999', '', '1523875678', NULL, NULL),
(197, 'add', '4', '10', '154', '200', '16.29', '3258', '', '1523875974', NULL, NULL),
(198, 'add', '4', '11', '155', '50', '18.99', '949.4999999999999', '', '1523876663', NULL, NULL),
(199, 'add', '4', '11', '156', '10', '4530.00', '45300', '', '1523876990', NULL, NULL),
(200, 'add', '4', '37', '157', '100', '51.00', '5100', '', '1523877983', NULL, NULL),
(201, 'add', '4', '37', '158', '120', '158.99', '19078.800000000003', '', '1523878181', NULL, NULL),
(203, 'add', '16', '87', '159', '500', '4500.00', '2250000', '', '1524784507', NULL, NULL),
(204, 'add', '16', '85', '160', '500', '1000.00', '0', '', '1524784752', NULL, NULL),
(205, 'add', '16', '88', '161', '500', '800.00', '0', '', '1524784866', NULL, NULL),
(206, 'add', '16', '86', '162', '500', '900.00', '450000', '', '1524845655', NULL, NULL),
(207, 'add', '16', '81', '166', '12', '125.00', '1500', '', '1524911159', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(208, 'add', '16', '81', '168', '5', '1190.00', '5950', '', '1524984498', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(209, 'add', '16', '83', '169', '5', '800.00', '4000', '', '1524984850', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(210, 'add', '16', '81', '170', '25', '1195.00', '29875', '', '1524984898', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(211, 'add', '16', '81', '171', '25', '1190.00', '29750', '', '1524985905', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(216, 'add', '4', '11', '172', '50', '40.00', '2000', '', '1528779289', NULL, NULL),
(217, 'add', '4', '11', '173', '50', '62.00', '3100', '', '1528779815', NULL, NULL),
(218, 'add', '4', '11', '174', '50', '30.00', '1500', '', '1528780266', NULL, NULL),
(219, 'add', '5', '89', '175', '100', '68.00', '6800', '', '1528785307', NULL, NULL),
(220, 'add', '5', '89', '176', '120', '12.00', '1440', '', '1528785411', NULL, NULL),
(221, 'add', '5', '89', '177', '45', '10.00', '450', '', '1528785743', NULL, NULL),
(222, 'add', '5', '89', '178', '60', '74.80', '4488', '', '1528786064', NULL, NULL),
(223, 'add', '16', '88', '180', '10', '3500.00', '35000', '', '1528787255', NULL, NULL),
(226, 'add', '4', '8', '183', '25', '180.00', '4500', '', '1530166850', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(261, 'add', '21', '80', '184', '500', '189.99', '94995', '', '1530427971', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(262, 'add', '21', '80', '185', '50', '40.99', '2049.5', '', '1530428579', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(263, 'add', '16', '83', '186', '300', '249.00', '74700', '', '1530428936', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(264, 'add', '16', '86', '187', '50', '1049.00', '52450', '', '1530429328', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(265, 'add', '5', '90', '188', '100', '154.99', '15499', '', '1530429645', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(266, 'add', '5', '90', '189', '500', '38.98', '19490', '', '1530431736', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(267, 'add', '5', '30', '190', '500', '99.84', '49920', '', '1530434062', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(268, 'add', '5', '28', '191', '100', '56.99', '5699', '', '1530434437', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(269, 'add', '21', '80', '192', '200', '385.00', '77000', '', '1530435423', NULL, '{\"type\":\"vendor\",\"id\":\"12\"}'),
(270, 'add', '21', '80', '193', '300', '80.00', '24000', '', '1530435832', NULL, '{\"type\":\"vendor\",\"id\":\"12\"}'),
(271, 'add', '21', '80', '194', '50', '199.99', '9999.5', '', '1530436258', NULL, '{\"type\":\"vendor\",\"id\":\"12\"}'),
(272, 'add', '21', '80', '195', '400', '39.99', '15996', '', '1530436731', NULL, '{\"type\":\"vendor\",\"id\":\"12\"}'),
(273, 'add', '21', '80', '196', '100', '230.97', '23097', '', '1530437119', NULL, '{\"type\":\"vendor\",\"id\":\"12\"}'),
(274, 'add', '4', '40', '197', '200', '23.99', '4798', '', '1530437673', NULL, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(275, 'add', '4', '35', '198', '500', '34.99', '17495', '', '1530438201', NULL, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(276, 'add', '4', '36', '199', '140', '34.98', '4897.2', '', '1530438511', NULL, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(277, 'add', '4', '11', '200', '600', '12.97', '7782', '', '1530439263', NULL, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(278, 'add', '16', '87', '201', '50', '1049.00', '52450', '', '1530440570', NULL, '{\"type\":\"vendor\",\"id\":\"7\"}'),
(279, 'add', '16', '87', '202', '300', '28.99', '8697', '', '1530441002', NULL, '{\"type\":\"vendor\",\"id\":\"7\"}'),
(280, 'add', '16', '86', '203', '100', '49.34', '4934', '', '1530441771', NULL, '{\"type\":\"vendor\",\"id\":\"7\"}'),
(281, 'add', '16', '81', '204', '200', '249.99', '49998', '', '1530442235', NULL, '{\"type\":\"vendor\",\"id\":\"7\"}'),
(282, 'add', '16', '81', '205', '500', '49.99', '24995', '', '1530442480', NULL, '{\"type\":\"vendor\",\"id\":\"7\"}'),
(283, 'add', '16', '85', '206', '100', '399.00', '39900', '', '1530444192', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(284, 'add', '17', '93', '207', '500', '39.00', '19500', '', '1530509804', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(285, 'add', '17', '78', '208', '500', '40.00', '20000', '', '1530511789', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(286, 'add', '17', '91', '209', '400', '28.50', '11400', '', '1530512382', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(287, 'add', '17', '96', '210', '100', '75.00', '7500', '', '1530512762', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(288, 'add', '17', '93', '211', '500', '28.00', '14000', '', '1530513333', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(289, 'add', '1', '1', '212', '50', '63750.00', '3187500', '', '1530514188', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(290, 'add', '1', '1', '213', '150', '39190.00', '5878500', '', '1530514879', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(291, 'add', '1', '2', '214', '1000', '535500.00', '535500000', '', '1530515357', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(292, 'add', '1', '1', '215', '100', '15350.00', '1535000', '', '1530523300', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(293, 'add', '1', '1', '216', '100', '44100.00', '4410000', '', '1530523869', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(301, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1530779882', '99', NULL),
(302, 'destroy', '0', '0', '179', '1', NULL, '0', 'sale', '1530780344', '100', NULL),
(303, 'destroy', '5', '30', '190', '1', NULL, '0', 'sale', '1530780876', '103', NULL),
(304, 'destroy', '0', '0', '122', '1', NULL, '0', 'sale', '1530781627', '104', NULL),
(314, 'add', '5', '28', '217', '200', '88.95', '17790', '', '1531637332', NULL, '{\"type\":\"vendor\",\"id\":\"17\"}'),
(315, 'add', '5', '28', '217', '100', '88.95', '8895', '', '1531637661', NULL, '{\"type\":\"vendor\",\"id\":\"17\"}'),
(327, 'add', '16', '88', '180', '500', '3500.00', '1750000', '', '1531642809', NULL, NULL),
(328, 'add', '4', '11', '200', '500', '12.97', '6485', '', '1531642840', NULL, NULL),
(329, 'add', '4', '11', '174', '500', '30.00', '15000', '', '1531642856', NULL, NULL),
(330, 'add', '4', '11', '172', '500', '40.00', '20000', '', '1531642878', NULL, NULL),
(331, 'add', '4', '11', '155', '500', '18.99', '9495', '', '1531642899', NULL, NULL),
(335, 'add', '5', '27', '220', '125', '110.00', '13750', '', '1554029932', NULL, '{\"type\":\"vendor\",\"id\":\"18\"}'),
(344, 'add', '24', '114', '226', '10', '20.00', '200', '', '1571652007', NULL, NULL),
(346, 'add', '24', '114', '227', '100', '117.00', '11700', '', '1571724012', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(347, 'add', '24', '114', '228', '100', '36.00', '3600', '', '1571724396', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(350, 'add', '4', '5', '225', '100', '19.00', '1900', '', '1574742818', NULL, NULL),
(351, 'add', '1', '1', '218', '100', '234', '23400', '', '1575877383', NULL, NULL),
(355, 'destroy', '12', '66', '98', '1', NULL, '0', 'sale', '1576064394', '211', NULL),
(356, 'destroy', '12', '66', '98', '1', NULL, '0', 'sale', '1576064677', '212', NULL),
(360, 'destroy', '16', '88', '161', '1', NULL, '0', 'sale', '1583400477', '218', NULL),
(361, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1583402656', '219', NULL),
(362, 'destroy', '1', '1', '213', '1', NULL, '0', 'sale', '1583406268', '220', NULL),
(0, 'add', '23', '105', '0', '5', '36.00', '180', '', '1614421426', NULL, NULL),
(0, 'add', '16', '85', '206', '99', '2390', '236610', '', '1614446375', NULL, NULL),
(0, 'add', '16', '85', '206', '1', '2390', '2390', '', '1614446458', NULL, NULL),
(0, 'destroy', '16', '85', '206', '1', NULL, '0', '', '1614446495', NULL, NULL),
(0, 'destroy', '16', '87', '202', '1', NULL, '0', 'sale', '1614628252', '0', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `subscribe`
--

CREATE TABLE `subscribe` (
  `subscribe_id` int(11) NOT NULL,
  `email` varchar(600) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `subscribe`
--

INSERT INTO `subscribe` (`subscribe_id`, `email`) VALUES
(1, 'sub1@mail.com'),
(2, 'sub2@mail.com'),
(3, 'sub3@mail.com'),
(4, 'sub4@mail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_category_id` int(11) NOT NULL,
  `sub_category_name` longtext DEFAULT NULL,
  `category` longtext DEFAULT NULL,
  `brand` varchar(2000) NOT NULL DEFAULT '[]',
  `digital` varchar(10) DEFAULT NULL,
  `banner` longtext DEFAULT NULL,
  `affiliation` tinyint(4) NOT NULL DEFAULT 0,
  `affiliation_points` decimal(10,0) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sub_category`
--

INSERT INTO `sub_category` (`sub_category_id`, `sub_category_name`, `category`, `brand`, `digital`, `banner`, `affiliation`, `affiliation_points`) VALUES
(81, 'Сотовые телефоны', '16', '[\"59\",\"60\",\"63\",\"142\",\"167\",\"168\",\"170\",\"172\"]', NULL, 'sub_category_81.', 0, '0'),
(83, 'инструментальные средства', '16', '[\"176\",\"178\"]', NULL, 'sub_category_83.', 0, '0'),
(85, 'Телефон', '16', '[\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"168\",\"169\",\"172\"]', NULL, 'sub_category_85.jpg', 0, '0'),
(86, 'Ноутбук', '16', '[\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"181\",\"182\"]', NULL, 'sub_category_86.jpg', 0, '0'),
(87, 'Настольный ПК', '16', '[\"59\",\"60\",\"61\",\"63\",\"64\",\"181\",\"182\"]', NULL, 'sub_category_87.jpg', 0, '0'),
(88, 'Зеркальная камера', '16', '[\"142\",\"143\",\"144\",\"183\",\"184\",\"185\"]', NULL, 'sub_category_88.jpg', 0, '0'),
(104, 'Горячие Категории', '23', '[\"63\",\"167\",\"169\",\"261\",\"262\",\"263\",\"264\"]', NULL, 'sub_category_104.', 0, '0'),
(105, 'Чехлы и обложки', '23', '[\"63\",\"169\",\"261\",\"262\",\"263\",\"264\"]', NULL, 'sub_category_105.', 0, '0');

-- --------------------------------------------------------

--
-- Структура таблицы `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `time` varchar(30) DEFAULT NULL,
  `from_where` varchar(100) DEFAULT NULL,
  `to_where` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `view_status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ticket_message`
--

CREATE TABLE `ticket_message` (
  `ticket_message_id` int(11) NOT NULL,
  `time` varchar(30) DEFAULT NULL,
  `from_where` varchar(100) DEFAULT NULL,
  `to_where` varchar(100) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `view_status` varchar(100) DEFAULT NULL,
  `message` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ticket_message`
--

INSERT INTO `ticket_message` (`ticket_message_id`, `time`, `from_where`, `to_where`, `ticket_id`, `subject`, `view_status`, `message`) VALUES
(1, '1475585594', '{\"type\":\"user\",\"id\":\"3\"}', '{\"type\":\"admin\",\"id\":\"\"}', 1, 'check', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'check ticket'),
(2, '1476180432', '{\"type\":\"user\",\"id\":\"3\"}', '{\"type\":\"admin\",\"id\":\"\"}', 1, 'check', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'example ticket'),
(3, '1476180432', '{\"type\":\"user\",\"id\":\"3\"}', '{\"type\":\"admin\",\"id\":\"\"}', 1, 'check', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'example ticket'),
(4, '1526117716', '{\"type\":\"user\",\"id\":\"11\"}', '{\"type\":\"admin\",\"id\":\"\"}', 2, 'Demo', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'dummy text'),
(5, '1526117806', '{\"type\":\"admin\",\"id\":\"\"}', '{\"type\":\"user\",\"id\":\"11\"}', 2, 'Demo', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'DEmo'),
(6, '1528018344', '{\"type\":\"user\",\"id\":\"13\"}', '{\"type\":\"admin\",\"id\":\"\"}', 3, 'demo', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'demo'),
(7, '1528095351', '{\"type\":\"user\",\"id\":\"7\"}', '{\"type\":\"admin\",\"id\":\"\"}', 4, 'Aut omnis quas in vero rerum vitae omnis accusantium', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'Excepturi aut repellendus Incidunt quia atque voluptatum quasi nihil dolore nihil anim corporis ut nulla delectus'),
(8, '1528095981', '{\"type\":\"user\",\"id\":\"7\"}', '{\"type\":\"admin\",\"id\":\"\"}', 4, 'Aut omnis quas in vero rerum vitae omnis accusantium', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'hi'),
(9, '1528095997', '{\"type\":\"user\",\"id\":\"7\"}', '{\"type\":\"admin\",\"id\":\"\"}', 4, 'Aut omnis quas in vero rerum vitae omnis accusantium', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'hjkhkj'),
(10, '1530002748', '{\"type\":\"user\",\"id\":\"17\"}', '{\"type\":\"admin\",\"id\":\"\"}', 5, 'Demo', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'Demo text'),
(11, '1531634451', '{\"type\":\"user\",\"id\":\"23\"}', '{\"type\":\"admin\",\"id\":\"\"}', 6, 'qwert', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'qwertyuiop'),
(12, '1531634471', '{\"type\":\"admin\",\"id\":\"\"}', '{\"type\":\"user\",\"id\":\"23\"}', 6, 'qwert', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'dfghjkl;\''),
(13, '1554012558', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 7, 'Hey Admin ', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'I have a problem'),
(14, '1554012639', '{\"type\":\"admin\",\"id\":\"\"}', '{\"type\":\"user\",\"id\":\"24\"}', 7, 'Hey Admin ', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'Here is the solution'),
(15, '1554012692', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 8, 'New', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'New Problem'),
(16, '1554012735', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 9, 'rr', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'rrtt'),
(17, '1554012767', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 10, 'Keu ', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'Jert'),
(18, '1554013847', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 11, 'sdfdsf', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'dsfds'),
(19, '1554014267', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 12, 'sdfds sf sdf', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'sd fdsf'),
(20, '1554014514', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 13, 'ddfg ', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'g dfgdg'),
(21, '1554014780', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 14, 'dfgd', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'dfgdfg'),
(22, '1554015730', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 15, 'rtrt', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'rtretrfggf dfg dfgdf gdfg \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n'),
(23, '1554015759', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 16, 'Samuel', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'Jackson'),
(24, '1554016172', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 17, 'JJ ', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'aBRAHAM\r\n'),
(25, '1554019237', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 11, 'sdfdsf', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'dj'),
(26, '1554019253', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 11, 'sdfdsf', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'Samind Ujal '),
(27, '1554020191', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 18, 'sam', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'mas\r\nsms '),
(28, '1554020208', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 11, 'sdfdsf', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'Santakul'),
(29, '1560245785', '{\"type\":\"user\",\"id\":\"24\"}', '{\"type\":\"admin\",\"id\":\"\"}', 19, 'ss', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'ss'),
(0, '1614431214', '{\"type\":\"user\",\"id\":\"0\"}', '{\"type\":\"admin\",\"id\":\"\"}', 0, 'sdvsdv', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'sddvsdv'),
(0, '1614431487', '{\"type\":\"admin\",\"id\":\"\"}', '{\"type\":\"user\",\"id\":\"0\"}', 0, 'sdvsdv', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', ',nsbvdvbkdvb');

-- --------------------------------------------------------

--
-- Структура таблицы `ui_settings`
--

CREATE TABLE `ui_settings` (
  `ui_settings_id` int(11) NOT NULL,
  `type` longtext DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ui_settings`
--

INSERT INTO `ui_settings` (`ui_settings_id`, `type`, `value`) VALUES
(5, 'filter_div', 'on'),
(6, 'admin_login_logo', '0'),
(7, 'admin_nav_logo', '18'),
(8, 'home_top_logo', '0'),
(9, 'home_bottom_logo', '0'),
(11, 'fav_ext', 'png'),
(12, 'side_bar_pos_category', 'right'),
(14, 'footer_color', 'purple-1'),
(15, 'header_color', 'purple-1'),
(19, 'parallax_blog_title', 'LATEST BLOGS'),
(16, 'font', 'Roboto'),
(17, 'parallax_vendor_title', 'OUR VENDOR'),
(18, 'home_page_style', '3'),
(20, 'no_of_featured_products', '6'),
(21, 'no_of_vendor', '10'),
(22, 'no_of_brands', '12'),
(23, 'brand_show', 'ok'),
(24, 'featured_show', 'ok'),
(25, 'vandors_show', 'ok'),
(26, 'blog_show', 'ok'),
(27, 'parallax_search_title', 'Search Products'),
(28, 'no_of_blog', '3'),
(29, 'featured_product_box_style', '1'),
(30, 'no_of_todays_deal', NULL),
(31, 'special_products_show', 'ok'),
(32, 'category_slides', 'ok'),
(33, 'home_categories', '[{\"category\":\"4\",\"sub_category\":[\"11\",\"36\"],\"color_back\":\"rgba(250,101,235,1)\",\"color_text\":\"rgba(255,255,255,1)\"}]'),
(34, 'category_product_box_style', '2'),
(35, 'top_slide_categories', 'null'),
(36, 'email_theme_style', 'style_1'),
(37, 'email_theme_style_2', '<div style=\"margin: 0px 10px; background: #45a9b9; padding: 30px;\"><div style=\"margin: 0px auto; background: #eff7ff; padding: 30px;\">[[body]]</div></div>'),
(38, 'email_theme_style_3', '<div style=\"margin: 0px 10px; background: repeating-linear-gradient(-45deg, red 0, red 1em, #fffdeb 0, #fffdeb 2em, #58a 0, #58a 3em, #fffdeb 0, #fffdeb 4em); padding: 15px;\"><div style=\"margin: 0px auto; background: #fffdeb; padding: 30px;\">[[body]]</div></div>'),
(39, 'email_theme_style_4', '<div style=\"margin: 0px 10px; background: #f7f7f7; padding: 30px;\"><div style=\"padding: 30px; background: #76cece; border-radius:5px 5px 0px 0px; box-shadow: 0px -1px 7px #616565; display:block;\"><div style=\"background-image:url([[logo]]); background-repeat:no-repeat; height:80px; width:auto; display:block;\"></div></div><div style=\"margin: 0px auto; background: rgba(255, 255, 255, 0.91); padding: 30px; box-shadow: 0px 3px 7px #616565; border-radius:0px 0px 5x 5px;\">[[body]]</div></div>'),
(40, 'product_bundle_show', 'ok'),
(41, 'no_of_product_bundle', '6'),
(42, 'product_bundle_box_style', '2'),
(43, 'customer_product_show', 'ok'),
(44, 'no_of_customer_product', '6'),
(45, 'header_homepage_status', 'yes'),
(46, 'header_all_categories_status', 'yes'),
(47, 'header_featured_products_status', 'no'),
(48, 'header_todays_deal_status', 'no'),
(49, 'header_bundled_product_status', 'no'),
(50, 'header_classifieds_status', 'no'),
(51, 'header_latest_products_status', 'no'),
(52, 'header_all_brands_status', 'yes'),
(53, 'header_all_vendors_status', 'no'),
(54, 'header_blogs_status', 'no'),
(55, 'header_store_locator_status', 'no'),
(56, 'header_contact_status', 'yes'),
(57, 'header_more_status', 'no'),
(58, 'home3_categories', '[{\\\"category\\\":\\\"4\\\",\\\"sub_category\\\":[\\\"8\\\",\\\"11\\\",\\\"34\\\",\\\"35\\\",\\\"36\\\",\\\"37\\\",\\\"39\\\",\\\"40\\\"],\\\"color_back\\\":null,\\\"color_text\\\":null},{\\\"category\\\":\\\"5\\\",\\\"sub_category\\\":[\\\"27\\\",\\\"28\\\",\\\"29\\\",\\\"30\\\",\\\"89\\\",\\\"90\\\"],\\\"color_back\\\":null,\\\"color_text\\\":null}]'),
(59, 'todays_deal_show', 'ok'),
(60, 'todays_deal_product_box_style', '4'),
(61, 'no_of_deal_products', '8');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` longtext DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `email` longtext DEFAULT NULL,
  `phone` longtext DEFAULT NULL,
  `address1` longtext DEFAULT NULL,
  `address2` longtext DEFAULT NULL,
  `city` longtext DEFAULT NULL,
  `zip` longtext DEFAULT NULL,
  `langlat` varchar(100) DEFAULT NULL,
  `password` longtext DEFAULT NULL,
  `fb_id` longtext DEFAULT NULL,
  `g_id` varchar(50) DEFAULT NULL,
  `g_photo` longtext DEFAULT NULL,
  `creation_date` longtext DEFAULT NULL,
  `google_plus` longtext DEFAULT NULL,
  `skype` longtext DEFAULT NULL,
  `facebook` longtext DEFAULT NULL,
  `wishlist` longtext DEFAULT NULL,
  `last_login` varchar(50) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT 'default',
  `user_type_till` varchar(200) DEFAULT NULL,
  `left_product_type` varchar(5000) NOT NULL DEFAULT '[]',
  `downloads` varchar(10000) NOT NULL DEFAULT '[]',
  `country` longtext DEFAULT NULL,
  `state` longtext DEFAULT NULL,
  `wallet` varchar(1000) DEFAULT NULL,
  `product_upload` int(11) DEFAULT NULL,
  `package_info` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`user_id`, `username`, `surname`, `email`, `phone`, `address1`, `address2`, `city`, `zip`, `langlat`, `password`, `fb_id`, `g_id`, `g_photo`, `creation_date`, `google_plus`, `skype`, `facebook`, `wishlist`, `last_login`, `user_type`, `user_type_till`, `left_product_type`, `downloads`, `country`, `state`, `wallet`, `product_upload`, `package_info`) VALUES
(7, 'Айнур', 'Гизатуллин', 'customer@shop.com', '07894561234', 'Бугульма', 'РТ', 'Бугульма', '423230', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1475479276', '', '', '', '[\"126\",\"78\",\"79\",\"98\",\"71\",\"216\",\"206\"]', '1615648738', 'default', NULL, '[]', '[{\"sale\":12,\"product\":\"98\"},{\"sale\":17,\"product\":\"99\"},{\"sale\":56,\"product\":\"182\"}]', 'Россия', 'РТ', 'Mjc2Ljk1MjY3NQ==', 49, '[{\"current_package\":null,\"package_price\":null,\"payment_type\":\"Wallet\"}]');

-- --------------------------------------------------------

--
-- Структура таблицы `user_rating`
--

CREATE TABLE `user_rating` (
  `rating_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` decimal(10,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `company` varchar(500) DEFAULT NULL,
  `display_name` varchar(500) DEFAULT NULL,
  `address1` longtext DEFAULT NULL,
  `address2` longtext DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `membership` varchar(50) DEFAULT NULL,
  `create_timestamp` int(20) DEFAULT NULL,
  `approve_timestamp` int(20) DEFAULT NULL,
  `member_timestamp` int(20) DEFAULT NULL,
  `member_expire_timestamp` int(11) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `last_login` int(20) DEFAULT NULL,
  `facebook` varchar(300) DEFAULT NULL,
  `skype` varchar(300) DEFAULT NULL,
  `google_plus` varchar(300) DEFAULT NULL,
  `twitter` varchar(300) DEFAULT NULL,
  `youtube` varchar(300) DEFAULT NULL,
  `pinterest` varchar(300) DEFAULT NULL,
  `stripe_details` varchar(500) DEFAULT NULL,
  `paypal_email` varchar(200) DEFAULT NULL,
  `preferred_payment` varchar(100) DEFAULT NULL,
  `cash_set` varchar(20) DEFAULT NULL,
  `stripe_set` varchar(20) DEFAULT NULL,
  `paypal_set` varchar(20) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `keywords` longtext DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `lat_lang` varchar(300) NOT NULL DEFAULT '(0,0)',
  `country` longtext DEFAULT NULL,
  `city` longtext DEFAULT NULL,
  `zip` longtext DEFAULT NULL,
  `state` longtext DEFAULT NULL,
  `c2_set` varchar(20) DEFAULT NULL,
  `c2_user` longtext DEFAULT NULL,
  `c2_secret` longtext DEFAULT NULL,
  `vp_set` varchar(50) DEFAULT NULL,
  `vp_merchant_id` varchar(500) DEFAULT NULL,
  `pum_set` varchar(20) DEFAULT NULL,
  `pum_merchant_key` varchar(500) DEFAULT NULL,
  `pum_merchant_salt` varchar(500) DEFAULT NULL,
  `bitcoin_set` varchar(500) DEFAULT NULL,
  `bitcoin_coinpayments_merchant` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `name`, `email`, `password`, `company`, `display_name`, `address1`, `address2`, `status`, `membership`, `create_timestamp`, `approve_timestamp`, `member_timestamp`, `member_expire_timestamp`, `details`, `last_login`, `facebook`, `skype`, `google_plus`, `twitter`, `youtube`, `pinterest`, `stripe_details`, `paypal_email`, `preferred_payment`, `cash_set`, `stripe_set`, `paypal_set`, `phone`, `keywords`, `seo_title`, `seo_description`, `description`, `lat_lang`, `country`, `city`, `zip`, `state`, `c2_set`, `c2_user`, `c2_secret`, `vp_set`, `vp_merchant_id`, `pum_set`, `pum_merchant_key`, `pum_merchant_salt`, `bitcoin_set`, `bitcoin_coinpayments_merchant`) VALUES
(1, 'Lydia Moran', 'vendor1@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Short Frye Associates', 'Lavinia Mckee', '88 South Clarendon Drive', 'Voluptatem et dolores quas et architecto est enim aut est et aut cum et aut aut praesentium sint', 'approved', '0', 1473433365, 0, NULL, 1533031057, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ok', 'ok', '123456799', '', 'Lydia Moran - Home for women\'s clothing and shoes', 'Best women shoes , dress jwellery in Moscow,Russia', 'Lydia Moran products', '(40.7859464, -73.9741874)', 'USA', 'New York', '10024', 'NY', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL),
(3, 'Tom Cruise', 'vendor@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Dark Lane', 'Tom', '3367 Essex Court Grand Isle, VT 05458 ', '3367 Essex Court Grand Isle, VT 05458 B', 'approved', '0', 1474269533, 0, NULL, 1535022478, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"publishable\":\"\",\"secret\":\"\"}', '', NULL, 'ok', NULL, NULL, '', NULL, NULL, NULL, NULL, '(44.72254359999999, -73.2923538)', '', '711-2880 Nulla St. Mankato Mississippi 96522 (257) ', '563-7401', '', NULL, '', '', NULL, '', 'ok', 'RR2LThlB', '3M85o3dezx', NULL, NULL),
(5, 'Youn Sijin', 'vendor2@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'DOTS', 'Youn', '2759 Wyatt Street, HINSDALE, New York', '2759 Wyatt Street, HINSDALE, New York', 'approved', '0', 1474568426, 0, NULL, 1477161249, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '(41.804962, -87.922823)', 'USA', 'New York', '10025', 'NY', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL),
(7, 'Tony Stark', 'vendor3@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Brenton', 'Tony Stark', '6649 N Blue Gum St, New Orleans', 'Louisiana, USA', 'approved', '0', 1475065812, 0, NULL, NULL, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+546-50-8760222', NULL, NULL, NULL, NULL, '(29.95106579999999, -90.0715323)', 'usa', 'New York', '', 'ny', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL),
(9, 'Ray Torres', 'vendor4@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Gallegos and Everett Co.', 'Cheyenne Medina', '462 Nobel Road', 'Est sint vel irure nulla numquam voluptatem quae et ullam eu dolor corporis sed sed eiusmod enim odio dolore', 'approved', '0', 1524910945, 0, NULL, NULL, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+546-50-8760200', NULL, NULL, NULL, NULL, '(0,0)', 'Et laborum Dolores qui voluptatem quam', 'Esse ullam dolore lorem exercitationem expedita quidem deserunt aliquid amet unde facere amet', '34026', 'Sunt eaque quis ea necessitatibus commodo aut consequatur quas non consectetur', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL),
(10, 'Amaya Dixon', 'vendor5@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Daniels and Wiley Associates', 'Denton Hansen', '957 West Milton Drive', 'Laboriosam dignissimos enim quidem sapiente qui et excepturi animi alias vitae', 'approved', '0', 1524982214, 0, NULL, 1527668695, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"publishable\":\"\",\"secret\":\"\"}', 'alvi@gmail.com', NULL, NULL, 'ok', 'ok', '+546-50-8760218999', NULL, NULL, NULL, NULL, '(0,0)', 'Omnis ab nulla tenetur sit voluptatem officiis ut delectus ut illum illo excepturi totam soluta sit ', 'Dolor magna soluta officia aut delectus voluptates', '83862', 'Sunt voluptate consequatur amet ut sint veniam saepe velit aut optio accusantium nisi non qui', NULL, '', '', NULL, '', '', '', '', NULL, NULL),
(12, 'Deborah Cohen', 'vendor6@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Johns Atkinson Trading', 'Idona Snider', '566 South Rocky Fabien Extension', 'Nostrum ullamco ratione nihil do sed vero esse dolor officia neque commodi voluptatum pariatur', 'approved', '0', 1530074631, 0, NULL, NULL, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '(0,0)', 'Anim pariatur Enim commodo enim excepteur', 'Velit quia eaque earum id quis impedit et ad blanditiis non asperiores', '71533', 'Et non modi dolor magni enim minus', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL),
(16, 'Arsenio Mckenzie', 'vendor7@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Reid and Kennedy Traders', 'Carissa Newman', '834 West Old Court', 'Dolores corrupti quae ut aut totam laborum Fugiat pariatur Aut esse repudiandae illo', 'approved', '0', 1530089088, 0, NULL, 1532761512, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"publishable\":\"pk_test_SuCjGKYkw5J5c0ZXvCfvX3zx\",\"secret\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"}', 'vendor7@shop.com', NULL, 'ok', 'ok', 'ok', '098775543213', NULL, NULL, NULL, NULL, '(0,0)', 'Illo recusandae Aut obcaecati ut exercitation corrupti fugiat accusantium occaecat', 'Sit illum consequatur Ullam sequi dolor ipsum est quam veniam est aut enim vel porro hic', '92170', 'Aliquid irure id amet anim repellendus Eos in laborum Eum exercitation fuga Quis eiusmod voluptas es', NULL, '', '', NULL, '', '', '', '', NULL, NULL),
(17, 'vendor', 'vendor@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Demo', 'demo vendor', 'usa', '', 'pending', '0', 1531634920, 0, NULL, 1534230745, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"publishable\":\"pk_test_SuCjGKYkw5J5c0ZXvCfvX3zx\",\"secret\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"}', '', NULL, 'ok', 'ok', 'ok', '0987654321', NULL, NULL, NULL, NULL, '(0,0)', 'usa', 'new york', '10024', 'ny', NULL, '', '', NULL, '', '', '', '', NULL, NULL),
(19, 'Mevendor', 'me@vendor.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '1234', 'mevendor', '1234', '1234', 'approved', '0', 1554028232, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(0,0)', '1234', '1234', '1234', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `vendor_invoice`
--

CREATE TABLE `vendor_invoice` (
  `vendor_invoice_id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `payment_details` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `vendor_invoice`
--

INSERT INTO `vendor_invoice` (`vendor_invoice_id`, `vendor_id`, `amount`, `timestamp`, `status`, `method`, `payment_details`) VALUES
(2, 3, '324.9273', 1525579407, 'paid', 'cash', ''),
(3, 3, '5.6843418860808E-14', 1528263035, 'due', 'cash', ''),
(4, 3, '5.6843418860808E-14', 1528263055, 'paid', 'cash', ''),
(6, 3, '250', 1529559027, 'due', 'payUmoney', NULL),
(7, 3, '0', 1529559101, 'due', 'payUmoney', NULL),
(8, 3, '0', 1529559230, 'due', 'payUmoney', NULL),
(9, 3, '0', 1529559369, 'due', 'payUmoney', NULL),
(10, 3, '0', 1529559610, 'due', 'payUmoney', NULL),
(11, 3, '0', 1529559624, 'due', 'payUmoney', NULL),
(12, 3, '0', 1529559765, 'due', 'payUmoney', NULL),
(13, 3, '0', 1529559781, 'due', 'payUmoney', NULL),
(14, 3, '220', 1529560632, 'due', 'payUmoney', NULL),
(15, 3, '250', 1529560733, 'due', 'payUmoney', NULL),
(25, 16, '4295.89', 1532512294, 'paid', 'stripe', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DIKJSgpKH7t3sV\",\"object\":\"customer\",\"account_balance\":0,\"created\":1532512293,\"currency\":null,\"default_source\":\"card_1CrjeUKmGdRDZlHSSgm3uUI8\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"ceo.activeitzone@gmail.com\",\"invoice_prefix\":\"8A7DC79\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CrjedKmGdRDZlHSytg15z2v\",\"object\":\"charge\",\"amount\":5370,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CrjedKmGdRDZlHSNzJEg10u\",\"captured\":true,\"created\":1532512295,\"currency\":\"usd\",\"customer\":\"cus_DIKJSgpKH7t3sV\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}');

-- --------------------------------------------------------

--
-- Структура таблицы `wallet_load`
--

CREATE TABLE `wallet_load` (
  `wallet_load_id` int(11) NOT NULL,
  `user` varchar(100) DEFAULT NULL,
  `amount` varchar(1000) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `timestamp` varchar(100) DEFAULT NULL,
  `payment_details` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `wallet_load`
--

INSERT INTO `wallet_load` (`wallet_load_id`, `user`, `amount`, `method`, `status`, `timestamp`, `payment_details`) VALUES
(12, '7', '50000', 'pum', 'paid', '1614683133', '[]'),
(4, '7', '1000', 'stripe', 'paid', '1518067735', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CHhMag8O50VaHI\",\"object\":\"customer\",\"account_balance\":0,\"created\":1518067734,\"currency\":null,\"default_source\":\"card_1Bt7xlKmGdRDZlHSPQR35wSG\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"4a211cb13d\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Bt7xrKmGdRDZlHSIOGetvuw\",\"object\":\"charge\",\"amount\":100000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Bt7xrKmGdRDZlHS4aoaW4pY\",\"captured\":true,\"created\":1518067735,\"currency\":\"usd\",\"customer\":\"cus_CHhMag8O50VaHI\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}'),
(5, '7', '500', 'paypal', 'due', '1518455611', '[]'),
(7, '7', '50', 'paypal', 'due', '1519804590', '[]'),
(8, '7', '50', 'paypal', 'due', '1519805069', '[]'),
(40, '7', '1000', 'paypal', 'pending', '1527662380', 'testing'),
(41, '7', '1000', 'stripe', 'paid', '1523850882', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CglyFhGtTEn5Rw\",\"object\":\"customer\",\"account_balance\":0,\"created\":1523850881,\"currency\":null,\"default_source\":\"card_1CHOQKKmGdRDZlHSWlsub8PR\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"55A02F2\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CHOQQKmGdRDZlHSmVqPSfof\",\"object\":\"charge\",\"amount\":100000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CHOQQKmGdRDZlHSHTZAUnwy\",\"captured\":true,\"created\":1523850882,\"currency\":\"usd\",\"customer\":\"cus_CglyFhGtTEn5Rw\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}'),
(47, '7', '10000', 'pum', 'due', '1529490145', '[]'),
(48, '7', '', 'pum', 'due', '1529492063', '[]'),
(49, '7', '', 'pum', 'due', '1529492100', '[]'),
(50, '7', '', 'payu', 'due', '1529492324', '[]'),
(51, '7', '1000', 'pum', 'due', '1529492411', '[]'),
(52, '7', '', 'pum', 'due', '1529492473', '[]'),
(53, '7', '', 'pum', 'due', '1529492681', '[]'),
(54, '7', '1000', 'pum', 'due', '1529493122', '[]'),
(55, '7', '1000', 'pum', 'due', '1529493178', '[]'),
(56, '7', '10000', 'pum', 'due', '1529493787', '[]'),
(61, '7', '9', 'stripe', 'paid', '1530002551', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D7ReEvEpBqS4NK\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530002549,\"currency\":null,\"default_source\":\"card_1ChCklKmGdRDZlHSUIPmOpTa\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"C9E4A94\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChCksKmGdRDZlHSirYxwBQw\",\"object\":\"charge\",\"amount\":900,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChCktKmGdRDZlHSx0iE3JF7\",\"captured\":true,\"created\":1530002550,\"currency\":\"usd\",\"customer\":\"cus_D7ReEvEpBqS4NK\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}'),
(63, '7', '100', 'pum', 'due', '1530684206', '[]'),
(66, '7', '10', 'ssl', 'paid', '1532421610', '[]');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Индексы таблицы `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Индексы таблицы `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Индексы таблицы `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`blog_category_id`);

--
-- Индексы таблицы `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Индексы таблицы `bundle_stock`
--
ALTER TABLE `bundle_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Индексы таблицы `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`business_settings_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Индексы таблицы `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Индексы таблицы `contact_message`
--
ALTER TABLE `contact_message`
  ADD PRIMARY KEY (`contact_message_id`);

--
-- Индексы таблицы `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Индексы таблицы `currency_settings`
--
ALTER TABLE `currency_settings`
  ADD PRIMARY KEY (`currency_settings_id`);

--
-- Индексы таблицы `customer_product`
--
ALTER TABLE `customer_product`
  ADD PRIMARY KEY (`customer_product_id`);

--
-- Индексы таблицы `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`email_template_id`);

--
-- Индексы таблицы `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`general_settings_id`);

--
-- Индексы таблицы `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`word_id`);

--
-- Индексы таблицы `language_list`
--
ALTER TABLE `language_list`
  ADD PRIMARY KEY (`language_list_id`);

--
-- Индексы таблицы `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`logo_id`);

--
-- Индексы таблицы `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`membership_id`);

--
-- Индексы таблицы `membership_payment`
--
ALTER TABLE `membership_payment`
  ADD PRIMARY KEY (`membership_payment_id`);

--
-- Индексы таблицы `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Индексы таблицы `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`);

--
-- Индексы таблицы `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`package_id`);

--
-- Индексы таблицы `package_payment`
--
ALTER TABLE `package_payment`
  ADD PRIMARY KEY (`package_payment_id`);

--
-- Индексы таблицы `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`);

--
-- Индексы таблицы `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `product_affiliation`
--
ALTER TABLE `product_affiliation`
  ADD PRIMARY KEY (`product_affiliation_id`);

--
-- Индексы таблицы `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `wallet_load`
--
ALTER TABLE `wallet_load`
  ADD PRIMARY KEY (`wallet_load_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `wallet_load`
--
ALTER TABLE `wallet_load`
  MODIFY `wallet_load_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
