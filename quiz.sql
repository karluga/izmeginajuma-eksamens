-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for quiz
CREATE DATABASE IF NOT EXISTS `quiz` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `quiz`;

-- Dumping structure for table quiz.answers
CREATE TABLE IF NOT EXISTS `answers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL DEFAULT '0',
  `question_id` int unsigned NOT NULL DEFAULT '0',
  `is_correct` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table quiz.answers: ~6 rows (approximately)
INSERT INTO `answers` (`id`, `text`, `question_id`, `is_correct`) VALUES
	(1, 'rfrfrf', 10, 0),
	(2, 'vgb', 10, 1),
	(3, 'rfrfrf', 11, 0),
	(4, 'vgb', 11, 1),
	(5, 'rfrfrf', 12, 0),
	(6, 'vgb', 12, 1);

-- Dumping structure for table quiz.questions
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table quiz.questions: ~12 rows (approximately)
INSERT INTO `questions` (`id`, `text`) VALUES
	(1, 'lol'),
	(2, 'lol'),
	(3, 'lol'),
	(4, 'lol'),
	(5, '4f4rf'),
	(6, '4f4rf'),
	(7, '4f4rf'),
	(8, '4f4rf'),
	(9, '4f4rf'),
	(10, '4f4rf'),
	(11, '4f4rf'),
	(12, '4f4rf');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
