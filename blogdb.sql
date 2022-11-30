-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.24-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- blogdb için veritabanı yapısı dökülüyor
DROP DATABASE IF EXISTS `blogdb`;
CREATE DATABASE IF NOT EXISTS `blogdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `blogdb`;

-- tablo yapısı dökülüyor blogdb.archive
DROP TABLE IF EXISTS `archive`;
CREATE TABLE IF NOT EXISTS `archive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` bigint(20) DEFAULT NULL,
  `fromModel` varchar(255) DEFAULT NULL,
  `originalRecord` longtext DEFAULT NULL,
  `originalRecordId` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- blogdb.archive: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor blogdb.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `cName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- blogdb.categories: ~2 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `categories` (`id`, `createdAt`, `updatedAt`, `cName`) VALUES
	(1, 1669576775808, 1669576775808, 'Game'),
	(2, 1669576775808, 1669576775808, 'Food');

-- tablo yapısı dökülüyor blogdb.comments
DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `cmPostId` double DEFAULT NULL,
  `cmContent` varchar(255) DEFAULT NULL,
  `cmUsername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- blogdb.comments: ~3 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `comments` (`id`, `createdAt`, `updatedAt`, `cmPostId`, `cmContent`, `cmUsername`) VALUES
	(1, 1669722462923, 1669722462923, 1, 'Good', 'mert'),
	(2, 1669722481123, 1669722481123, 1, 'Bad', 'nihat'),
	(3, 1669722495859, 1669722495859, 2, 'Nice', 'asım');

-- tablo yapısı dökülüyor blogdb.posts
DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `pUsername` varchar(255) DEFAULT NULL,
  `pCategoryname` varchar(255) DEFAULT NULL,
  `pTitle` varchar(255) DEFAULT NULL,
  `pContent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- blogdb.posts: ~5 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `posts` (`id`, `createdAt`, `updatedAt`, `pUsername`, `pCategoryname`, `pTitle`, `pContent`) VALUES
	(1, 1669668740542, 1669710802420, 'Author 1', 'Game', 'Article 1 Title', 'pppppppppppp'),
	(2, 1669668898473, 1669668898473, 'Author 2', 'Game', 'Article 2 Title', 'weydsfhsdhsdgjfdj'),
	(3, 1669668964456, 1669668964456, 'Owner 3', 'Food', 'Article 3 Title', 'weywetywet'),
	(4, 1669682778376, 1669682967455, 'test', 'test', 'test', 'asdasd'),
	(5, 1669683008397, 1669683008397, 'yuı', 'yuıyuı', 'yuıyu', 'asd');

-- tablo yapısı dökülüyor blogdb.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- blogdb.users: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
