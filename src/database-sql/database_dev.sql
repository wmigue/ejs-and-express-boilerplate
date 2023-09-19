-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-09-2023 a las 22:06:36
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `database_dev`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `imgURL` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `idUser`, `createdAt`, `updatedAt`, `imgURL`) VALUES
(49, 'Node js ', 'Node.js es un entorno en tiempo de ejecución multiplataforma, de código abierto, para la capa del servidor basado en el lenguaje de programación JavaScript, asíncrono, con E/S de datos en una arquitectura orientada a eventos y basado en el motor V8 de Goo', 22, '2023-09-19 16:59:46', '2023-09-19 17:04:47', 'data:image/png;base64,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'),
(50, 'express js', 'Express.js o simplemente Express es un entorno de trabajo para aplicaciones web para el programario Node.js, de código abierto y con licencia MIT. Se utiliza para desarrollar aplicaciones web y APIs. El autor original es TJ Holowaychuk y la primera versió', 22, '2023-09-19 17:05:36', '2023-09-19 17:05:36', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAABcCAMAAAAccQr5AAAAz1BMVEX////44B8AAAD8///9/vD041n44Bb47Jz33QCEhIT///P5877x8fH03UJ8fHzu7u7e3t7Jyclvb2/U1NReXl74+PigoKCoqKjBwcGTk5O2trYAAAbArCZqamp2dnZlZWX///lMTEz/6B369sjy4mH24k/48LHXxyaGehvaxB7y2y2mlRxwaRpiWh6bjh3s3jG7rjHIuC8pIwoVEQTLvyiQhSNpYRuypDZDQBZZSxBORxQcHBwnJyepnyezoSY5OTlBNhFXUx8xLA4gHw1JPA49IUACAAAEwElEQVR4nO2aC3faNhTHbSfTcOf6Kb9EbGN3K8RLILSkS8mabs2+/2falWxhiSXAMlGyc/Q7J+ArZOf+fR+SSQxDo9FoNBqNRqPRaDQajea/Mjm1AwdxtpdTe6jZZjI5tQcHcH4Qk1O7uZ93P/+wn1/en9rNPUAZ/zRC+xn9eGpP90CFmAeghXwvtJDXhhby2tBCXhtHFUJCV6TMY+X+bziqEDtwPBFHufsDxxXiK/f3WbSQQzi9ECQfof+vEMRltP3xMYXEnr/Vzhy/7wue70kfeL7vyBN5B3lKyHQ2m11SNe2vV9dX8wVSFhGSCu6XjmGDAIIL164q0o0G8E6qwg2o1zku7bJy+VWo7boFzgXbdkOcxE8LQTeWZS0bEy0txvhGmZAYR5vjEnzFsVHmXueUzaKSpTDS3eSgCOhQHPUi/ZrZhpdW7BS/6mwnxc5zQsbWBRpNP3RCrI8rpCq1fMyTKKX3Fcch4R+lNhNC7H7ErzdJVND4GJUvT602N4W4Twu5GFvWhYluQc+n364s626qrkaysHsPSvoapokwO6Pjdp84Ti2cVYN83x7sAkLil4MNIXlWCGo+W9baHKH5/OXFTiIJOpazMokxyw4cClXuVFTIfV/dqVBOrLaifLDzQLbtaLeQ8d0C9S34RUJyNxfp7j6mYQq7tLgXvTVC0BDwQBRiu4orOQIBXMMLJXuHkBmk1vWq6TqxuvbrQR7kvYDfpQkpVEfWJ5CYSEAJE8NMvhCW7OeFjFas0tc3ioWArxH3spZWiQCSJeuLJpNiZeQQQa+CTagw5oWuYO8QYn4ZQ0ws6/OqUbsgJjWvDCytbjQKXAAp02QgrVnfCmwcJsI1IxsXSbRXyKhZ3sEqAmpuRiqFxGXBG+cOIXkgwSd6mV24wmUdsO1opxB61C6vLRqVtyqF5MTBfUrVkhDahzZCyPZpG2CFlPIuDoouH58UskSsWyGTRsV6UCiEgLsR7o6/SjVCnedCglw6yYsNcWoJdS7aVbAdkYb+XEA6LdGombZQKOgSQjJTJ8SvuBrgPhA/oinDhYjN1WA5WAlLDrTiGIsXdenrRgjsEm//aJvmC7i+atrb8Z+LBjVTpUKcbp9kuKx31uJ9Z65tulUonksdFRcWr5KFOKEoBKHLNfSo5cM3qIsWzWjvfVg9rLudlyIhZca9ZuuiOCMhopBMXEjciH4BIAhx2WouCRVTa/Gt2+6OrSsTTR/7PePYemxVRSTZlKlP72g1bCKNgN3VYf0oBkczl5/AL5yJ+08WX7FGkDntlMA2EYGS617JWtnuNyqGY3rLcRzhfk7WdbJBiFPzxpV2O7Kk4D0uZ9FKwj7Z4oQFRCz2pp2vrY9/zVvWfBdfPn0YP67ni5eu7DkOZbD4JJgTWsNeWSSEJEVfLcHQWeMc54QQG/OhAJcwNbUxkWyXTxC7FmqaxcJs+JNuA4+6TUNjBUL+/d+oY2cL+YnW6RZELyBk2GuIUxz4JBMfg72tAcGe/ONPb2CZ/aHZmfT1RUL2gtV9ZXd2Zrx7ewDt+4my3zmgUMgEft4InJ+/mYg2t84nx/j3B4VCjJP+m4laISekOuLX898Vb/8UjUaj0Wg0Go1Go9FoNBqNRrOTvwHriWoHFMTBMAAAAABJRU5ErkJggg==');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20230905214037-create-user.js'),
('20230905230826-create-post.js'),
('20230912201959-addimgUrlToPosts.js'),
('20230912202138-addimgUrlToPost.js'),
('20230912202859-addImgURLToPosts.js'),
('20230914171806-addPassworToUsers.js'),
('20230919200345-addImgURLToPosts2.js');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(60) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `createdAt`, `updatedAt`, `password`) VALUES
(22, 'Miguel', 'Villalba Canavesio', 'wmigue@gmail.com', '2023-09-19 16:58:46', '2023-09-19 16:58:46', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Indices de la tabla `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
