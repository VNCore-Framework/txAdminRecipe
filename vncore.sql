CREATE TABLE IF NOT EXISTS `ox_inventory` (
  `owner` varchar(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_general_ci,
  `lastupdated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `owner` (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `accounts` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `inventory` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `position` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `skin` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `time_create` int DEFAULT '0',
  `time_logout` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plate` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `glovebox` longtext COLLATE utf8mb4_general_ci,
  `trunk` longtext COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
