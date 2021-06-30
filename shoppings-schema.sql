CREATE DATABASE  IF NOT EXISTS `shopping_app` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shopping_app`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: shopping_app
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart-items`
--

DROP TABLE IF EXISTS `cart-items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart-items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `amount` int NOT NULL,
  `total_amount` int NOT NULL,
  `cart_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id_idx` (`product_id`),
  KEY `cart_id_idx` (`cart_id`),
  CONSTRAINT `cart_id` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart-items`
--

LOCK TABLES `cart-items` WRITE;
/*!40000 ALTER TABLE `cart-items` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart-items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `created_at` date NOT NULL,
  `is_ordered` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=1463 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1161,4,'2021-05-11',0),(1162,4,'2021-05-11',0),(1163,4,'2021-05-11',0),(1164,4,'2021-05-12',0),(1165,4,'2021-05-12',0),(1166,4,'2021-05-12',0),(1167,4,'2021-05-12',0),(1168,4,'2021-05-12',0),(1169,4,'2021-05-12',0),(1170,4,'2021-05-12',0),(1171,4,'2021-05-12',0),(1172,4,'2021-05-12',0),(1173,4,'2021-05-12',0),(1174,4,'2021-05-12',0),(1175,4,'2021-05-12',0),(1176,4,'2021-05-12',0),(1177,4,'2021-05-12',0),(1178,4,'2021-05-12',0),(1179,4,'2021-05-12',0),(1180,4,'2021-05-12',0),(1181,4,'2021-05-12',0),(1182,4,'2021-05-12',0),(1183,4,'2021-05-12',0),(1184,4,'2021-05-12',0),(1185,4,'2021-05-12',0),(1186,4,'2021-05-12',0),(1187,4,'2021-05-12',0),(1188,4,'2021-05-12',0),(1189,4,'2021-05-12',0),(1190,4,'2021-05-12',0),(1191,4,'2021-05-12',0),(1192,4,'2021-05-12',0),(1193,4,'2021-05-12',0),(1194,4,'2021-05-12',0),(1195,4,'2021-05-12',0),(1196,4,'2021-05-12',0),(1197,4,'2021-05-12',0),(1198,4,'2021-05-12',0),(1199,4,'2021-05-12',0),(1200,4,'2021-05-12',0),(1201,4,'2021-05-12',0),(1202,4,'2021-05-12',0),(1203,4,'2021-05-12',0),(1204,4,'2021-05-12',0),(1205,4,'2021-05-12',0),(1206,4,'2021-05-12',0),(1207,4,'2021-05-12',0),(1208,4,'2021-05-12',0),(1209,4,'2021-05-12',0),(1210,4,'2021-05-12',0),(1211,4,'2021-05-12',0),(1212,4,'2021-05-12',0),(1213,4,'2021-05-12',0),(1214,4,'2021-05-12',0),(1215,4,'2021-05-12',0),(1216,4,'2021-05-12',0),(1217,4,'2021-05-12',0),(1218,4,'2021-05-12',0),(1219,4,'2021-05-12',0),(1220,4,'2021-05-12',0),(1221,4,'2021-05-12',0),(1222,4,'2021-05-12',0),(1223,4,'2021-05-12',0),(1224,4,'2021-05-12',0),(1225,4,'2021-05-12',0),(1226,4,'2021-05-12',0),(1227,4,'2021-05-12',0),(1228,4,'2021-05-12',0),(1229,4,'2021-05-12',0),(1230,4,'2021-05-12',0),(1231,4,'2021-05-12',0),(1232,4,'2021-05-12',0),(1233,4,'2021-05-12',0),(1234,4,'2021-05-12',0),(1235,4,'2021-05-12',0),(1236,4,'2021-05-12',0),(1237,4,'2021-05-12',0),(1238,4,'2021-05-12',0),(1239,4,'2021-05-12',0),(1240,4,'2021-05-12',0),(1241,4,'2021-05-12',0),(1242,4,'2021-05-12',0),(1243,4,'2021-05-12',0),(1244,4,'2021-05-12',0),(1245,4,'2021-05-12',0),(1246,4,'2021-05-12',0),(1247,4,'2021-05-12',0),(1248,4,'2021-05-12',0),(1249,4,'2021-05-12',0),(1250,4,'2021-05-12',0),(1251,4,'2021-05-12',0),(1252,4,'2021-05-12',0),(1253,4,'2021-05-12',0),(1254,4,'2021-05-12',0),(1255,4,'2021-05-12',0),(1256,4,'2021-05-12',0),(1257,4,'2021-05-12',0),(1258,4,'2021-05-12',0),(1259,4,'2021-05-12',0),(1260,4,'2021-05-12',0),(1261,4,'2021-05-12',0),(1262,4,'2021-05-12',0),(1263,4,'2021-05-12',0),(1264,4,'2021-05-12',0),(1265,4,'2021-05-12',0),(1266,4,'2021-05-12',0),(1267,4,'2021-05-12',0),(1268,4,'2021-05-12',0),(1269,4,'2021-05-12',0),(1270,4,'2021-05-12',0),(1271,4,'2021-05-12',0),(1272,4,'2021-05-12',0),(1273,4,'2021-05-12',0),(1274,4,'2021-05-12',0),(1275,4,'2021-05-12',0),(1276,4,'2021-05-12',0),(1277,4,'2021-05-12',0),(1278,4,'2021-05-12',0),(1279,4,'2021-05-12',0),(1280,4,'2021-05-12',0),(1281,4,'2021-05-12',0),(1282,4,'2021-05-12',0),(1283,4,'2021-05-12',0),(1284,4,'2021-05-12',0),(1285,4,'2021-05-12',0),(1286,4,'2021-05-12',0),(1287,4,'2021-05-12',0),(1288,4,'2021-05-12',0),(1289,4,'2021-05-12',0),(1290,4,'2021-05-12',0),(1291,4,'2021-05-12',0),(1292,4,'2021-05-12',0),(1293,4,'2021-05-12',0),(1294,4,'2021-05-12',0),(1295,4,'2021-05-12',0),(1296,4,'2021-05-12',0),(1297,4,'2021-05-12',0),(1298,4,'2021-05-12',0),(1299,4,'2021-05-13',0),(1300,4,'2021-05-13',0),(1301,4,'2021-05-13',0),(1302,4,'2021-05-13',0),(1303,4,'2021-05-13',0),(1304,4,'2021-05-13',0),(1305,4,'2021-05-13',0),(1306,4,'2021-05-13',0),(1307,4,'2021-05-13',0),(1308,4,'2021-05-13',0),(1309,4,'2021-05-13',0),(1310,4,'2021-05-13',0),(1311,4,'2021-05-13',0),(1312,4,'2021-05-13',0),(1313,1,'2021-05-13',0),(1314,4,'2021-05-13',0),(1315,4,'2021-05-13',0),(1316,4,'2021-05-13',0),(1317,4,'2021-05-13',0),(1318,4,'2021-05-13',0),(1319,4,'2021-05-13',0),(1320,4,'2021-05-13',0),(1321,4,'2021-05-13',0),(1322,4,'2021-05-13',0),(1323,4,'2021-05-13',0),(1324,4,'2021-05-13',0),(1325,4,'2021-05-13',0),(1326,4,'2021-05-13',0),(1327,4,'2021-05-13',0),(1328,4,'2021-05-13',0),(1329,4,'2021-05-13',0),(1330,4,'2021-05-13',0),(1331,4,'2021-05-13',0),(1332,4,'2021-05-13',0),(1333,4,'2021-05-13',0),(1334,4,'2021-05-13',0),(1335,4,'2021-05-13',0),(1336,4,'2021-05-13',0),(1337,4,'2021-05-14',0),(1338,4,'2021-05-14',0),(1339,4,'2021-05-14',0),(1340,4,'2021-05-14',0),(1341,4,'2021-05-14',0),(1342,4,'2021-05-14',0),(1343,4,'2021-05-23',0),(1344,4,'2021-06-28',0),(1345,4,'2021-06-28',0),(1346,4,'2021-06-28',0),(1347,4,'2021-06-28',0),(1348,4,'2021-06-28',0),(1349,4,'2021-06-28',0),(1350,4,'2021-06-28',0),(1351,4,'2021-06-28',0),(1352,4,'2021-06-28',0),(1353,4,'2021-06-28',0),(1354,4,'2021-06-28',0),(1355,4,'2021-06-28',0),(1356,4,'2021-06-28',0),(1357,4,'2021-06-28',0),(1358,4,'2021-06-28',0),(1359,4,'2021-06-28',0),(1360,4,'2021-06-28',0),(1361,4,'2021-06-28',0),(1362,4,'2021-06-28',0),(1363,4,'2021-06-28',0),(1364,4,'2021-06-28',0),(1365,4,'2021-06-28',0),(1366,4,'2021-06-28',0),(1367,4,'2021-06-28',0),(1368,4,'2021-06-28',0),(1369,4,'2021-06-28',0),(1370,4,'2021-06-28',0),(1371,4,'2021-06-28',0),(1372,4,'2021-06-28',0),(1373,4,'2021-06-28',0),(1374,4,'2021-06-28',0),(1375,4,'2021-06-28',0),(1376,4,'2021-06-28',0),(1377,4,'2021-06-28',0),(1378,4,'2021-06-28',0),(1379,4,'2021-06-28',0),(1380,4,'2021-06-28',0),(1381,4,'2021-06-28',0),(1382,4,'2021-06-28',0),(1383,4,'2021-06-28',0),(1384,4,'2021-06-28',0),(1385,4,'2021-06-28',0),(1386,4,'2021-06-28',0),(1387,4,'2021-06-28',0),(1388,4,'2021-06-28',0),(1389,4,'2021-06-28',0),(1390,4,'2021-06-28',0),(1391,4,'2021-06-28',0),(1392,4,'2021-06-28',0),(1393,4,'2021-06-28',0),(1394,4,'2021-06-28',0),(1395,4,'2021-06-28',0),(1396,4,'2021-06-28',0),(1397,4,'2021-06-28',0),(1398,4,'2021-06-28',0),(1399,4,'2021-06-28',0),(1400,4,'2021-06-28',0),(1401,4,'2021-06-28',0),(1402,4,'2021-06-28',0),(1403,4,'2021-06-28',0),(1404,4,'2021-06-28',0),(1405,4,'2021-06-28',0),(1406,4,'2021-06-28',0),(1407,4,'2021-06-28',0),(1408,4,'2021-06-28',0),(1409,4,'2021-06-28',0),(1410,4,'2021-06-28',0),(1411,4,'2021-06-28',0),(1412,4,'2021-06-28',0),(1413,4,'2021-06-28',0),(1414,4,'2021-06-28',0),(1415,4,'2021-06-28',0),(1416,4,'2021-06-28',0),(1417,4,'2021-06-28',0),(1418,4,'2021-06-28',0),(1419,4,'2021-06-28',0),(1420,4,'2021-06-28',0),(1421,4,'2021-06-28',0),(1422,4,'2021-06-28',0),(1423,4,'2021-06-28',0),(1424,4,'2021-06-28',0),(1425,4,'2021-06-28',0),(1426,4,'2021-06-28',0),(1427,4,'2021-06-28',0),(1428,4,'2021-06-28',0),(1429,4,'2021-06-28',0),(1430,4,'2021-06-28',0),(1431,4,'2021-06-28',0),(1432,4,'2021-06-28',0),(1433,4,'2021-06-28',0),(1434,4,'2021-06-28',0),(1435,4,'2021-06-28',0),(1436,4,'2021-06-28',0),(1437,4,'2021-06-28',0),(1438,4,'2021-06-28',0),(1439,4,'2021-06-28',0),(1440,4,'2021-06-28',0),(1441,4,'2021-06-28',0),(1442,4,'2021-06-28',0),(1443,4,'2021-06-28',0),(1444,4,'2021-06-28',0),(1445,4,'2021-06-28',0),(1446,4,'2021-06-28',0),(1447,4,'2021-06-28',0),(1448,4,'2021-06-28',0),(1449,4,'2021-06-28',0),(1450,4,'2021-06-28',0),(1451,4,'2021-06-28',0),(1452,4,'2021-06-28',0),(1453,4,'2021-06-28',0),(1454,4,'2021-06-28',0),(1455,4,'2021-06-28',0),(1456,4,'2021-06-28',0),(1457,4,'2021-06-28',0),(1458,4,'2021-06-28',0),(1459,4,'2021-06-28',0),(1460,4,'2021-06-28',0),(1461,4,'2021-06-30',0),(1462,4,'2021-06-30',0);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_fk` int NOT NULL,
  `cart_fk` int NOT NULL,
  `price` int NOT NULL,
  `ship_to_city` varchar(45) NOT NULL,
  `ship_street` varchar(45) NOT NULL,
  `ship_date` date NOT NULL,
  `checked_at` date NOT NULL,
  `cr4digits` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_fk`),
  KEY `cart_fk_idx` (`cart_fk`),
  CONSTRAINT `user_fk` FOREIGN KEY (`user_fk`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (2,1,7,5,'jerusalem','habanim','2021-04-07','2021-04-03',1234),(3,1,86,25,'Jerusalem','habanim','2021-04-05','2021-04-04',1234),(4,1,210,10,'Jerusalem','habanim','2021-04-07','2021-04-05',1234),(5,1,212,15,'Jerusalem','habanim','2021-04-07','2021-04-05',1234),(6,1,293,15,'Jerusalem','habanim','2021-04-07','2021-04-06',1234),(7,1,301,15,'Jerusalem','habanim','2021-04-07','2021-04-06',1234),(8,1,304,13,'Jerusalem','habanim','2021-04-07','2021-04-06',1234),(9,4,388,8,'Jerusalem','null','2021-04-17','2021-04-13',1234),(10,4,397,10,'Jerusalem','null','2021-04-03','2021-04-22',1234),(11,4,831,18,'Jerusalem','paqhil','2021-04-29','2021-04-25',1579),(12,4,835,10,'Jerusalem','paqhil','2021-04-27','2021-04-26',1321),(13,4,841,25,'Haifa','paqhil','2021-04-29','2021-04-26',1345),(14,4,843,25,'Jerusalem','paqhil','2021-04-27','2021-04-26',1234),(15,4,846,15,'Jerusalem','paqhil','2021-04-27','2021-04-26',1234),(16,4,853,15,'Jerusalem','paqhil','2021-04-28','2021-04-27',1234),(17,4,855,0,'Jerusalem','paqhil','2021-04-29','2021-04-27',1357),(18,4,863,9,'Jerusalem','paqhil','2021-04-28','2021-04-27',1571),(19,4,866,15,'Jerusalem','paqhil','2021-04-29','2021-04-27',1979),(20,4,868,3,'Haifa','paqhil','2021-04-09','2021-04-27',1234),(21,4,871,15,'Jerusalem','paqhil','2021-04-29','2021-04-27',1234),(22,4,874,15,'Jerusalem','paqhil','2021-05-05','2021-04-27',1234),(23,4,876,15,'Haifa','paqhil','2021-04-29','2021-04-27',1234),(24,4,879,15,'Tel-aviv Jaffa','paqhil','2021-04-17','2021-04-27',1234),(25,4,882,15,'Haifa','paqhil','2021-04-29','2021-04-27',1234),(26,4,885,15,'Haifa','paqhil','2021-04-29','2021-04-27',1234),(27,4,886,15,'Petah-Tikwa','paqhil','2021-04-29','2021-04-27',1234),(28,4,890,15,'Haifa','paqhil','2021-04-29','2021-04-27',1234),(29,4,898,15,'Ashdod','paqhil','2021-04-29','2021-04-28',1321),(30,4,902,15,'Haifa','paqhil','2021-04-29','2021-04-28',12345),(31,4,905,15,'Haifa','paqhil','2021-04-29','2021-04-28',1234),(32,4,907,15,'Haifa','paqhil','2021-04-29','2021-04-28',1317),(33,4,908,15,'Haifa','paqhil','2021-04-29','2021-04-28',1234),(34,4,910,9,'Haifa','paqhil','2021-04-29','2021-04-28',1234),(35,4,912,15,'Haifa','paqhil','2021-04-29','2021-04-28',1234),(36,4,942,15,'Petah-Tikwa','paqhil','2021-04-29','2021-04-28',1234),(37,4,947,8,'Haifa','paqhil','2021-04-29','2021-04-28',1234),(38,4,949,15,'Haifa','paqhil','2021-04-29','2021-04-28',1234);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product-category`
--

DROP TABLE IF EXISTS `product-category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product-category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product-category`
--

LOCK TABLES `product-category` WRITE;
/*!40000 ALTER TABLE `product-category` DISABLE KEYS */;
INSERT INTO `product-category` VALUES (1,'dairy'),(2,'produce');
/*!40000 ALTER TABLE `product-category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `category_id` int NOT NULL,
  `price` int NOT NULL,
  `image` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id_idx` (`category_id`),
  CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `product-category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (5,'shoko',1,5,'shoko.jpg'),(6,'milk 3%',1,3,'milk-3_.jpg'),(7,'milk 3% bag',1,2,'milk-3_-bag.jpg'),(8,'milk 3% 2liter',1,4,'milk-3_-2-liter.jpg'),(9,'watermelon',2,4,'watermelon.jpg'),(10,'strawberry',2,3,'strawberry.jpg'),(11,'peech',2,3,'peech.jpg'),(12,'orange',2,3,'orange.jpg'),(13,'melon',2,4,'melon.jpg'),(14,'kiwi',2,4,'kiwi.jpg'),(15,'gs green apple',2,4,'granny-smith-green-apple.jpg'),(16,'banana',2,5,'banana.jpg'),(17,'apple',2,4,'apple.jpg'),(34,'jar',1,100,'milk-3_.jpg'),(35,'jara',1,1,'AnyConv.com__melon.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `family_name` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `street` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ran','yelin','ran@gmail.com','b41d6e3068c99e8211a9bd37652f7a08','habanim','ramat-hasharon','admin'),(4,'ron','taniar','kaar@mail.com','b41d6e3068c99e8211a9bd37652f7a08','paqhil','torre','client'),(5,'daniel','elkayam','elk@gmail.com','b41d6e3068c99e8211a9bd37652f7a08',NULL,NULL,'client');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'shopping_app'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-30 17:37:36
