-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.22 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- kiosk2 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `kiosk2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `kiosk2`;

-- 테이블 kiosk2.cart 구조 내보내기
CREATE TABLE IF NOT EXISTS `cart` (
  `c_num` int NOT NULL AUTO_INCREMENT,
  `o_num` int DEFAULT NULL,
  `o_price` int DEFAULT NULL,
  `c_point` int DEFAULT NULL,
  PRIMARY KEY (`c_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 테이블 데이터 kiosk2.cart:~0 rows (대략적) 내보내기
DELETE FROM `cart`;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- 테이블 kiosk2.menu 구조 내보내기
CREATE TABLE IF NOT EXISTS `menu` (
  `p_num` int NOT NULL AUTO_INCREMENT,
  `p_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_category` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_price` int DEFAULT NULL,
  `p_image` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_image2` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_soldOut` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`p_num`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 테이블 데이터 kiosk2.menu:~21 rows (대략적) 내보내기
DELETE FROM `menu`;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`p_num`, `p_name`, `p_category`, `p_price`, `p_image`, `p_image2`, `p_soldOut`) VALUES
	(2, '마카롱', '3', 3000, 'desertMB.png', 'dessert_sd3', '1'),
	(3, '히비스커스티', 'Coffee', 30000, '', '', '0'),
	(4, '카푸치노', '1', 4000, 'hE.png', 'coffe_sd (11).png', '1'),
	(5, '티라미수', '3', 4000, 'desertBTC.png', 'dessert_sd7.png', '1'),
	(6, '초코케이크', '3', 4000, 'desertBC.png', 'dessert_sd12.png', '1'),
	(7, '크로아상', '3', 3500, 'desertBK.png', 'dessert_sd10.png', '1'),
	(8, '머핀', '3', 5000, 'desertBM.png', 'dessert_sd9.png', '1'),
	(9, '청포도에이드', '2', 4000, 'adeGG.png', 'ade_sd (1).png', '1'),
	(10, '유자에이드', '2', 4000, 'adeM.png', 'adeM.png', '1'),
	(11, '자몽에이드', '2', 4000, 'adeC.png', 'adeC.png', '1'),
	(12, '레몬에이드', '2', 4000, 'adeL.png', 'adeL.png', '1'),
	(13, '허니브레드', '3', 4000, 'desertBH.png', 'desertBH.png', '1'),
	(14, '페퍼민트티', '4', 3000, 'teaLPF.png', 'teaLPF.png', '1'),
	(15, '레몬밤티', '4', 3000, 'teaLM.png', 'teaLM.png', '1'),
	(16, '핫아메리카노', '1', 2000, 'hA.png', 'hA.png', '1'),
	(17, '핫카페라떼', '1', 3000, 'hB.png', 'hB.png', '1'),
	(18, '핫모카라떼', '1', 3500, 'hC.png', 'hC.png', '1'),
	(19, '핫카라멜마끼아또', '1', 4000, 'hD.png', 'hD.png', '1'),
	(20, '아이스카라멜마끼아또', '0', 4000, 'iceCAM.png', 'iceCAM.png', '1'),
	(21, '아이스카페라떼', '0', 3500, 'iceCBA.png', 'iceCBA.png', '1'),
	(22, '아이스모카라떼\r\n', '0', 3500, 'iceCM.png', 'iceCM.png', '1'),
	(24, '아이스아메리카노2', 'Coffee', 2200, 'iceA.png', 'coffe_sd (15).png', '1'),
	(25, '아이스아메리카노4', 'Coffee', 2500, 'iceA.png', 'coffe_sd (15).png', '1');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- 테이블 kiosk2.order1 구조 내보내기
CREATE TABLE IF NOT EXISTS `order1` (
  `o_num` int NOT NULL,
  `p_num` int NOT NULL,
  `p_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `o_shot` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `o_whipping` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `o_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `o_quantity` int DEFAULT NULL,
  `o_pickup` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_day` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`o_num`,`p_num`),
  KEY `p_num` (`p_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 kiosk2.order1:~1 rows (대략적) 내보내기
DELETE FROM `order1`;
/*!40000 ALTER TABLE `order1` DISABLE KEYS */;
/*!40000 ALTER TABLE `order1` ENABLE KEYS */;

-- 테이블 kiosk2.user 구조 내보내기
CREATE TABLE IF NOT EXISTS `user` (
  `u_num` int NOT NULL AUTO_INCREMENT,
  `u_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `u_pw` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `u_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `u_birth` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `u_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sumPoint` int DEFAULT NULL,
  `u_address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `u_phone` int DEFAULT NULL,
  `unique_num` int DEFAULT NULL,
  PRIMARY KEY (`u_num`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 kiosk2.user:~2 rows (대략적) 내보내기
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
