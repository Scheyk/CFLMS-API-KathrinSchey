-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 27. Jul 2020 um 15:32
-- Server-Version: 10.4.13-MariaDB
-- PHP-Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr10_kathrinschey_biglibrary`
--
CREATE DATABASE IF NOT EXISTS `cr10_kathrinschey_biglibrary` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cr10_kathrinschey_biglibrary`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `img` text NOT NULL,
  `author` varchar(55) NOT NULL,
  `isbn` text DEFAULT NULL,
  `short_description` varchar(200) NOT NULL,
  `publish_date` date NOT NULL,
  `publisher` varchar(80) NOT NULL,
  `type` enum('book','CD','DVD') NOT NULL,
  `status` enum('available','reserved') NOT NULL DEFAULT 'available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `media`
--

INSERT INTO `media` (`id`, `title`, `img`, `author`, `isbn`, `short_description`, `publish_date`, `publisher`, `type`, `status`) VALUES
(9, 'Die Geschichte der O', 'img/o.jpg', 'Anne Cécile Desclos', '4260090986356', 'Die junge, schöne O wird von ihrem Geliebten René zu einem Ausflug auf das Schloss Roissy überredet, wo sie in der Kunst der „Disziplinierung“ unterwiesen wird.', '1975-08-28', 'Filmconfect Home Entertainment GmbH (Rough Trade)', 'book', 'available'),
(10, 'Clockwork Orange', 'img/clock.jpg', 'Anthony Burgess', '9783150198971', 'Alex und seine Gang üben sich in exzessiver Gewalt gegen Wehrlose. Man verhaftet Alex und sperrt ihn ein. Er wird einem grausamen Verfahren unterzogen, das ihn wieder gesellschaftsfähig machen soll.', '2014-05-23', 'Reclam, Philipp', 'book', 'available'),
(11, 'Jagd auf Roter Oktober', 'img/rot.jpg', 'Tom Clancy', '9783442091225', 'Jagd auf Roter Oktober ist der erste Roman von Tom Clancy aus dem Jahr 1984, der rasch zu einem Bestseller avancierte. Es ist der erste Auftritt von Clancys fiktivem CIA-Analysten Jack Ryan.', '2001-07-01', 'Goldmann Verlag Süd', 'book', 'available'),
(12, 'Die Geisha', 'img/geisha.jpg', 'Arthur Golden', '9783442735228', 'Zu Beginn der 30er Jahre wird das einfache Fischermädchen Chiyo in die alte Kaiserstadt Kyoto gebracht. Nach einer qualvollen Ausbildung steigt sie zu einer der begehrtesten Geishas in ganz Japan auf.', '2005-12-05', 'btb Verlag', 'book', 'available'),
(14, 'An Acoustic Evening at the Vienna Opera', 'img/joe.jpg', 'Joe Bonamassa', '8712725740360', 'Musik', '2013-03-22', 'Mascot Records (rough trade)', 'CD', 'available'),
(15, 'Hotel Transsilvanien', 'img/hotel.jpg', 'Peter Baynham, Robert Smigel, Todd Durham, Dan Hageman,', '4030521730250', 'Um seine Tochter vor Knoblauchzehen, Silberkugeln und Holzpfählen zu beschützen, überlegt sich Blutsauger Dracula einen ganz speziellen Plan.', '2013-03-07', 'Sony Pictures Home Entertainment', 'DVD', 'available'),
(16, 'Der Zombie Survival Guide', 'img/zombie.jpg', 'Max Brooks', '9783442474233', 'Der Zombie Survival Guide – Überleben unter Untoten ist ein 2003 veröffentlichter humoristischer und apokalyptischer fiktiver Ratgeber von Max Brooks, der ein Überleben während einer Zombie-Epidemie u', '2010-10-18', 'Goldmann Verlag', 'book', 'available'),
(17, 'Miss Marple Box (4 DVDs)', 'img/miss.jpg', 'Agatha Christie', '7321921658877', 'Miss Marple ist eine ältere Dame, die sich als scharfsinnige Amateurdetektivin betätigt. Sie ermittelt in 12 Romanen und 20 Kurzgeschichten.', '2003-12-01', 'Warner Home Video - DVD', 'DVD', 'available'),
(18, 'Der blutige Pfad Gottes', 'img/pfad.jpg', '‎Troy Duffy', '9614082', 'Russische Mafiagangster schießen am St. Patrick\'s Day in einem irischen Pub in South Boston um sich. Die Brüder Conor und Murphy McManus töten zwei von ihnen und werden dadurch über Nacht zu Helden in', '1999-01-22', ' Alive - Vertrieb und Marketing', 'DVD', 'available'),
(19, 'Birds of Prey: The Emancipation of Harley Quinn', 'img/quinn.jpg', 'Christina Hodson', '1773406', 'Kennst du den mit dem Cop, dem Singvogel, dem Psychopathen und der Mafiaprinzessin? „Birds of Prey: The Emancipation of Harley Quinn“ ist eine verschlungene Geschichte, erzählt von Harley selbst, wie ', '2020-02-05', 'Warner Bros. Entertainment', 'DVD', 'available'),
(20, 'Liebe ist für alle da', 'img/rammstein.jpg', 'Rammstein', '159070', 'Musik Album', '2009-10-16', 'Jacob Hellner', 'CD', 'available'),
(21, 'Gib dem Affen Zucker', 'img/affe.jpg', 'Adriano Celentano', '4020628846046', 'Prinzessin Cristina reist mit ihrer Familie zu einem Staatsbesuch nach Rom. Um dort am richtigen Leben teilhaben zu können, setzt sie sich von ihrer Familie ab und steigt in einen Bus der Linie 29.', '2017-12-07', 'Koch Films', 'DVD', 'available');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
