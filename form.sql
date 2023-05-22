-- Adminer 4.8.0 MySQL 5.5.5-10.5.17-MariaDB-1:10.5.17+maria~ubu2004 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `form`;
CREATE TABLE `form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `form` (`id`, `name`, `email`, `message`, `added_on`) VALUES
(1,	'rex',	'rex@gmail.com',	'qwertyuiopohsdfghj.lkjhgewertyui',	'2023-05-22 06:49:20'),
(2,	'rex',	'rex@gmail.com',	'ccccccccccccccccccccccc',	'2023-05-22 06:49:30'),
(4,	'John',	'john@gmail.com',	'ertyuiop[asdfghjkl;xcvbnm,.',	'2023-05-22 06:51:49'),
(5,	'rex',	'rex@gmail.com',	'oo',	'2023-05-22 06:52:44'),
(6,	'sss',	'john@gmail.com',	'sdfghjk',	'2023-05-22 06:55:20'),
(7,	'sss',	'john@gmail.com',	'a',	'2023-05-22 06:55:28'),
(8,	'rex',	'rex@gmail.com',	'-',	'2023-05-22 06:57:45'),
(9,	'rex',	'rex@gmail.com',	'pppppppppppppppppppppppppp',	'2023-05-22 07:01:39');

-- 2023-05-22 07:09:20
