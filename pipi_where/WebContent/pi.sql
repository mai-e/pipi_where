-- --------------------------------------------------------
-- ホスト:                          127.0.0.1
-- サーバーのバージョン:                   10.3.15-MariaDB - mariadb.org binary distribution
-- サーバー OS:                      Win64
-- HeidiSQL バージョン:               9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- pipi_where のデータベース構造をダンプしています
CREATE DATABASE IF NOT EXISTS `pipi_where` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `pipi_where`;

--  テーブル pipi_where.account の構造をダンプしています
CREATE TABLE IF NOT EXISTS `account` (
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- テーブル pipi_where.account: ~3 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`user_name`, `password`) VALUES
	('John', 'admin'),
	('Guest', NULL),
	('Bill', 'admin');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;

--  テーブル pipi_where.card の構造をダンプしています
CREATE TABLE IF NOT EXISTS `card` (
  `card_id` int(11) NOT NULL,
  `card_name` varchar(30) NOT NULL,
  `rate_max` float DEFAULT NULL,
  `card_name_wep` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `charge` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- テーブル pipi_where.card: ~6 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` (`card_id`, `card_name`, `rate_max`, `card_name_wep`, `url`, `charge`) VALUES
	(1, 'LINEPay', 5, 'linepay', 'https://line.me/ja/pay', '銀行口座'),
	(2, '楽天Edy', 0.5, 'rakutenedy', 'https://edy.rakuten.co.jp/', '現金　クレジットカード'),
	(3, 'PayPay', 3, 'paypay', 'https://paypay.ne.jp/', '銀行口座　クレジットカード'),
	(4, 'origamiPay', 0, 'origamipay', 'https://origami.com/', '銀行口座　クレジットカード'),
	(5, 'Suica', 0, 'suica', 'https://www.jreast.co.jp/suica/', '現金　クレジットカード'),
	(6, 'nanaco', 1, 'nanaco', 'https://www.nanaco-net.jp/', '現金　クレジットカード');
/*!40000 ALTER TABLE `card` ENABLE KEYS */;

--  テーブル pipi_where.store の構造をダンプしています
CREATE TABLE IF NOT EXISTS `store` (
  `store_id` int(11) NOT NULL,
  `store_jpn` varchar(50) DEFAULT NULL,
  `store_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 MAX_ROWS=30;

-- テーブル pipi_where.store: ~25 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` (`store_id`, `store_jpn`, `store_name`) VALUES
	(1, 'セブンイレブン', 'seveneleven'),
	(2, 'ファミリーマート', 'familymart'),
	(3, 'ローソン', 'rowson'),
	(4, 'ミニストップ', 'ministop'),
	(5, '西友', 'seiyu'),
	(6, 'イトーヨーカドー', 'itoyokado'),
	(7, 'イオン', 'ion'),
	(8, 'ダイエー', 'daiei'),
	(9, 'ライフ', 'life'),
	(10, 'ドトール', 'doutor'),
	(11, 'スターバックス', 'starbucks'),
	(12, 'コメダ珈琲店', 'komedacoffee'),
	(13, 'タリーズコーヒー', 'tullyscoffee'),
	(14, '上島珈琲店', 'ueshimacoffee'),
	(15, 'ウェルシア', 'welcia'),
	(16, 'ツルハドラッグ', 'tsuruha'),
	(17, 'マツモトキヨシ', 'matsumotokiyoshi'),
	(18, 'スギ薬局', 'sugiyakkyoku'),
	(19, 'サンドラッグ', 'sundrug'),
	(20, 'モスバーガー', 'mosberger'),
	(21, 'マクドナルド', 'mcdonalds'),
	(22, 'ケンタッキー', 'kentakky'),
	(23, 'ビッグエコー', 'bigecho'),
	(24, 'カラオケ館', 'karaokekan'),
	(25, 'コートダジュール', 'cotedazur');
/*!40000 ALTER TABLE `store` ENABLE KEYS */;

--  テーブル pipi_where.usable_card の構造をダンプしています
CREATE TABLE IF NOT EXISTS `usable_card` (
  `user_name` varchar(50) NOT NULL,
  `card_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- テーブル pipi_where.usable_card: ~2 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `usable_card` DISABLE KEYS */;
INSERT INTO `usable_card` (`user_name`, `card_id`) VALUES
	('John', '1'),
	('John', '3');
/*!40000 ALTER TABLE `usable_card` ENABLE KEYS */;

--  テーブル pipi_where.usable_store の構造をダンプしています
CREATE TABLE IF NOT EXISTS `usable_store` (
  `card_name` varchar(30) NOT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- テーブル pipi_where.usable_store: ~55 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `usable_store` DISABLE KEYS */;
INSERT INTO `usable_store` (`card_name`, `store_id`) VALUES
	('LINEPay', 2),
	('LINEPay', 3),
	('LINEPay', 11),
	('LINEPay', 14),
	('LINEPay', 15),
	('LINEPay', 16),
	('LINEPay', 18),
	('LINEPay', 19),
	('LINEPay', 23),
	('楽天Edy', 1),
	('楽天Edy', 2),
	('楽天Edy', 3),
	('楽天Edy', 4),
	('楽天Edy', 6),
	('楽天Edy', 12),
	('楽天Edy', 14),
	('楽天Edy', 15),
	('楽天Edy', 16),
	('楽天Edy', 17),
	('楽天Edy', 18),
	('楽天Edy', 20),
	('楽天Edy', 21),
	('楽天Edy', 23),
	('PayPay', 2),
	('PayPay', 3),
	('PayPay', 4),
	('PayPay', 14),
	('PayPay', 15),
	('PayPay', 16),
	('PayPay', 18),
	('Paypay', 19),
	('PayPay', 23),
	('origamiPay', 3),
	('origamiPay', 4),
	('origamiPay', 15),
	('origamiPay', 22),
	('origamiPay', 24),
	('Suica', 1),
	('Suica', 2),
	('Suica', 3),
	('Suica', 4),
	('Suica', 6),
	('Suica', 7),
	('Suica', 10),
	('Suica', 16),
	('Suica', 24),
	('nanaco', 1),
	('nanaco', 6),
	('nanaco', 12),
	('nanaco', 14),
	('nanaco', 16),
	('nanaco', 18),
	('nanaco', 19),
	('nanaco', 21),
	('nanaco', 24);
/*!40000 ALTER TABLE `usable_store` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
