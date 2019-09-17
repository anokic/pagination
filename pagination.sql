-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2019 at 12:26 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pagination`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategorija_post`
--

CREATE TABLE `kategorija_post` (
  `kategorijaPostId` int(255) NOT NULL,
  `postId` int(255) NOT NULL,
  `kategorijaId` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kategorija_post`
--

INSERT INTO `kategorija_post` (`kategorijaPostId`, `postId`, `kategorijaId`) VALUES
(1, 2, 3),
(2, 3, 2),
(3, 2, 4),
(4, 3, 1),
(5, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `kategorije`
--

CREATE TABLE `kategorije` (
  `kategorijaId` int(50) NOT NULL,
  `naziv` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kategorije`
--

INSERT INTO `kategorije` (`kategorijaId`, `naziv`) VALUES
(1, 'Fashion'),
(2, 'Design'),
(3, 'Art'),
(4, 'Featured');

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id` int(255) NOT NULL,
  `ime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prezime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uloga_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id`, `ime`, `prezime`, `email`, `password`, `uloga_id`) VALUES
(2, 'Milena', 'Vesic', 'milena@gmail.com', '1b52a583020088fad8cc06fd0e67910e', 1),
(3, 'Danijela', 'Nikitin', 'danijela@gmail.com', 'fef213de0f55d86f2f6ee663f346bd5e', 2),
(6, 'Albert', 'Campbell', 'a.campbell@randatmail.com\r\n', 'albert', 2),
(7, 'Abigail', 'Hall', 'a.hall@randatmail.com\r\n', 'abigali', 2),
(8, 'Daryl', 'Armstrong', 'd.armstrong@randatmail.com\r\n', 'daryl', 2),
(9, 'Alberta', 'Nelson', 'a.nelson@randatmail.com\r\n', 'alberta', 2),
(10, 'Briony', 'Reed', 'b.reed@randatmail.com\r\n', 'reed', 2),
(11, 'Savana', 'Jones', 's.jones@randatmail.com\r\n', 'savana', 2),
(12, 'Miller', 'Anderson', 'm.anderson@randatmail.com\r\n', 'miller', 2),
(13, 'Lenny', 'Hawkins', 'l.hawkins@randatmail.com\r\n', 'lenyy', 2),
(14, 'Fiona', 'Grant', 'f.grant@randatmail.com\r\n', 'fiona', 2),
(15, 'William', 'Lloyd', 'w.lloyd@randatmail.com\r\n', 'william', 2),
(16, 'Elian', 'Ellis', 'e.ellis@randatmail.com\r\n', 'flian', 2),
(17, 'Annabella', 'Cole', 'a.cole@randatmail.com\r\n', 'cole', 2),
(18, 'Alen', 'Howard', 'a.howard@randatmail.com\r\n', 'alen', 2),
(19, 'Sarah', 'Farrell	', 's.farrell@randatmail.com\r\n', 'sarah', 2),
(20, 'Adele', 'Taylor', 'a.taylor@randatmail.com\r\n', 'adele', 2),
(21, 'Bruce', 'Owens', 'b.owens@randatmail.com\r\n', 'bruce', 2),
(22, 'Paige', 'Perkins', 'p.perkins@randatmail.com\r\n', 'paige', 2),
(23, 'Leonardo', 'Hill', 'l.hill@randatmail.com\r\n', 'Leonardo', 2),
(24, 'Patrick', 'Wells', 'p.wells@randatmail.com\r\n', 'patric', 2),
(25, 'Charlie', 'Cunningham', 'c.cunningham@randatmail.com\r\n', 'carlie', 2),
(26, 'Stuart', 'Wells', 's.wells@randatmail.com\r\n', 'stuart', 2),
(27, 'Ryan', 'Thomas', 'r.thomas@randatmail.com\r\n', 'Ryan', 2),
(28, 'Ada', 'Warren', 'a.warren@randatmail.com\r\n', 'ada', 2),
(29, 'Kimberly', 'Nelson', 'k.nelson@randatmail.com\r\n', 'kimberly', 2);

-- --------------------------------------------------------

--
-- Table structure for table `postovi`
--

CREATE TABLE `postovi` (
  `id` int(255) NOT NULL,
  `naslov` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `opis` text COLLATE utf8_unicode_ci NOT NULL,
  `korisnikId` int(255) NOT NULL,
  `datumVreme` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `postovi`
--

INSERT INTO `postovi` (`id`, `naslov`, `opis`, `korisnikId`, `datumVreme`) VALUES
(2, 'Vintage-Inspired Finds for Your Home', 'Few months ago, we found ridiculously cheap plane tickets for Boston and off we went. It was our first visit to the city and, believe it or not, Stockholm in February was more pleasant than Boston in March. It probably has a lot to do with the fact that we arrived completely unprepared. That I, in my converse and thin jacket, did not end up with pneumonia is honestly not even fair.', 2, '2019-02-21 09:25:00'),
(3, 'Post 2', 'Opis 2', 3, '2019-02-13 13:34:13'),
(4, 'Post 3', 'Opis 3 asdasd asd da da da', 2, '2019-02-19 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `uloge`
--

CREATE TABLE `uloge` (
  `id` int(255) NOT NULL,
  `naziv` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uloge`
--

INSERT INTO `uloge` (`id`, `naziv`) VALUES
(1, 'administrator'),
(2, 'korisnik');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategorija_post`
--
ALTER TABLE `kategorija_post`
  ADD PRIMARY KEY (`kategorijaPostId`),
  ADD KEY `kategorijaPostId` (`kategorijaPostId`),
  ADD KEY `kategorijaId` (`kategorijaId`),
  ADD KEY `postId` (`postId`),
  ADD KEY `kategorijaPostId_2` (`kategorijaPostId`);

--
-- Indexes for table `kategorije`
--
ALTER TABLE `kategorije`
  ADD PRIMARY KEY (`kategorijaId`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `uloga_id` (`uloga_id`);

--
-- Indexes for table `postovi`
--
ALTER TABLE `postovi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `korisnikId` (`korisnikId`);

--
-- Indexes for table `uloge`
--
ALTER TABLE `uloge`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategorija_post`
--
ALTER TABLE `kategorija_post`
  MODIFY `kategorijaPostId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategorije`
--
ALTER TABLE `kategorije`
  MODIFY `kategorijaId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `postovi`
--
ALTER TABLE `postovi`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uloge`
--
ALTER TABLE `uloge`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kategorija_post`
--
ALTER TABLE `kategorija_post`
  ADD CONSTRAINT `kategorija_post_ibfk_1` FOREIGN KEY (`kategorijaId`) REFERENCES `kategorije` (`kategorijaId`) ON DELETE CASCADE,
  ADD CONSTRAINT `kategorija_post_ibfk_2` FOREIGN KEY (`postId`) REFERENCES `postovi` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD CONSTRAINT `korisnici_ibfk_1` FOREIGN KEY (`uloga_id`) REFERENCES `uloge` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `postovi`
--
ALTER TABLE `postovi`
  ADD CONSTRAINT `postovi_ibfk_1` FOREIGN KEY (`korisnikId`) REFERENCES `korisnici` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
