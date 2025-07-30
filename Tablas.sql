CREATE DATABASE  IF NOT EXISTS `00_club` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `00_club`;
-- MySQL dump 10.13  Distrib 8.0.42, for macos15 (x86_64)
--
-- Host: 127.0.0.1    Database: 00_club
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `jugadores`
--

DROP TABLE IF EXISTS `jugadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugadores` (
  `idjugadores` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `dni` varchar(10) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`idjugadores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugadores`
--

LOCK TABLES `jugadores` WRITE;
/*!40000 ALTER TABLE `jugadores` DISABLE KEYS */;
INSERT INTO `jugadores` VALUES (1,'Javier','Ortega Desio','4473754P','1984-10-02'),(2,'Marcos','Ayerza','7940816K','1984-05-08'),(3,'Jeronimo','De La Fuente','5169607A','1986-06-07'),(4,'Juan Martin','Fernandez Lobbe','5145360O','1983-01-17'),(5,'Santiago','Garcia Botta','3763193R','1986-01-26'),(6,'Lucas','Gonzales Amorosino','2807609L','1993-04-15'),(7,'Marinao','Galarza','1485392G','1988-02-19'),(8,'Pablo','Matera','6089091L','1974-05-23'),(9,'Juan','Pablo Socino','6055307E','1975-08-17'),(10,'Guido','Petti Pagadizabal','2773999I','1997-02-16'),(11,'Juan','Figallo','8739151Y','1971-12-09'),(12,'Santiago','Gonzalez Iglesias','3846194N','1987-08-27'),(13,'Leonardo','Senatore','7610171Y','1962-11-08'),(14,'Tomas','Lavanini','1172294Y','1984-02-05'),(15,'Nicolas','Sanchez','7739387C','1997-12-16'),(16,'Martin','Landajo','8024627E','1993-05-05'),(17,'Matias','Alemanno','2323264H','1988-01-11'),(18,'Joaquin','Tuculet','1424527M','1990-10-21'),(19,'Lucas','Noguera','4499786E','1961-10-08'),(20,'Matias','Moroni','6065642U','1989-04-27'),(21,'Horacio','Agulla','5245191F','1991-08-20'),(22,'Juan Manuel','Leguizamon','5168209I','1962-10-04'),(23,'Marcelo','Bosch','7713981E','1984-01-27'),(24,'Nahuel','Tetaz Chaparro','8181787R','1961-03-10'),(25,'Juan Pablo','Orlandi','1627980B','1984-01-05'),(26,'Julian','Montoya','3952546X','1962-12-03'),(27,'Juan','Martin Hernandez','3234307M','1967-08-11'),(28,'Facundo','Isa','8546841N','1990-05-01'),(29,'Agustin','Creevy','7415758L','1963-04-06'),(30,'Santiago','Cordero','8207267T','1996-05-04'),(31,'Ramiro','Herrera','6172837K','1981-01-17'),(32,'Tomas','Cubelli','7157940M','1963-04-20'),(33,'Juan','Imhoff','9049517C','1987-09-23');
/*!40000 ALTER TABLE `jugadores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-30 12:10:21
CREATE DATABASE  IF NOT EXISTS `07_despacho_abogados` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `07_despacho_abogados`;
-- MySQL dump 10.13  Distrib 8.0.42, for macos15 (x86_64)
--
-- Host: 127.0.0.1    Database: 07_despacho_abogados
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `abogados`
--

DROP TABLE IF EXISTS `abogados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abogados` (
  `id_abogado` int NOT NULL,
  `nro_matricula` varchar(15) NOT NULL,
  PRIMARY KEY (`id_abogado`),
  UNIQUE KEY `nro_matricula` (`nro_matricula`),
  CONSTRAINT `abogados_ibfk_1` FOREIGN KEY (`id_abogado`) REFERENCES `empleados` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abogados`
--

LOCK TABLES `abogados` WRITE;
/*!40000 ALTER TABLE `abogados` DISABLE KEYS */;
/*!40000 ALTER TABLE `abogados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL,
  PRIMARY KEY (`id_cliente`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `personas` (`id_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL,
  `fecha_ingreso` date NOT NULL,
  PRIMARY KEY (`id_empleado`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `personas` (`id_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidades`
--

DROP TABLE IF EXISTS `especialidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidades` (
  `id_especialidad` int NOT NULL AUTO_INCREMENT,
  `especialidad` varchar(35) NOT NULL,
  PRIMARY KEY (`id_especialidad`),
  UNIQUE KEY `especialidad` (`especialidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades`
--

LOCK TABLES `especialidades` WRITE;
/*!40000 ALTER TABLE `especialidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `especialidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidades_abogados`
--

DROP TABLE IF EXISTS `especialidades_abogados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidades_abogados` (
  `fk_abogado` int NOT NULL,
  `fk_especialidad` int NOT NULL,
  PRIMARY KEY (`fk_abogado`,`fk_especialidad`),
  KEY `fk_especialidad` (`fk_especialidad`),
  CONSTRAINT `especialidades_abogados_ibfk_1` FOREIGN KEY (`fk_abogado`) REFERENCES `abogados` (`id_abogado`),
  CONSTRAINT `especialidades_abogados_ibfk_2` FOREIGN KEY (`fk_especialidad`) REFERENCES `especialidades` (`id_especialidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades_abogados`
--

LOCK TABLES `especialidades_abogados` WRITE;
/*!40000 ALTER TABLE `especialidades_abogados` DISABLE KEYS */;
/*!40000 ALTER TABLE `especialidades_abogados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estados` (
  `id_estado` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expedientes`
--

DROP TABLE IF EXISTS `expedientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expedientes` (
  `id_expediente` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(35) NOT NULL,
  `descripcion_detallada` varchar(75) DEFAULT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `fk_abogado` int DEFAULT NULL,
  `fk_cliente` int DEFAULT NULL,
  `fk_estado` int DEFAULT NULL,
  PRIMARY KEY (`id_expediente`),
  KEY `fk_abogado` (`fk_abogado`),
  KEY `fk_cliente` (`fk_cliente`),
  KEY `fk_estado` (`fk_estado`),
  CONSTRAINT `expedientes_ibfk_1` FOREIGN KEY (`fk_abogado`) REFERENCES `abogados` (`id_abogado`),
  CONSTRAINT `expedientes_ibfk_2` FOREIGN KEY (`fk_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `expedientes_ibfk_3` FOREIGN KEY (`fk_estado`) REFERENCES `estados` (`id_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expedientes`
--

LOCK TABLES `expedientes` WRITE;
/*!40000 ALTER TABLE `expedientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `expedientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intervenciones`
--

DROP TABLE IF EXISTS `intervenciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intervenciones` (
  `fk_empleado` int NOT NULL,
  `fk_expediente` int NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `descripcion` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`fk_empleado`,`fk_expediente`),
  KEY `fk_expediente` (`fk_expediente`),
  CONSTRAINT `intervenciones_ibfk_1` FOREIGN KEY (`fk_empleado`) REFERENCES `empleados` (`id_empleado`),
  CONSTRAINT `intervenciones_ibfk_2` FOREIGN KEY (`fk_expediente`) REFERENCES `expedientes` (`id_expediente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intervenciones`
--

LOCK TABLES `intervenciones` WRITE;
/*!40000 ALTER TABLE `intervenciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `intervenciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `id_persona` int NOT NULL AUTO_INCREMENT,
  `tipo_doc` varchar(3) NOT NULL,
  `nro_doc` varchar(15) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellidos` varchar(25) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  PRIMARY KEY (`id_persona`),
  UNIQUE KEY `tipo_doc` (`tipo_doc`,`nro_doc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procuradores`
--

DROP TABLE IF EXISTS `procuradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procuradores` (
  `id_procurador` int NOT NULL,
  `nro_matricula` varchar(15) NOT NULL,
  PRIMARY KEY (`id_procurador`),
  UNIQUE KEY `nro_matricula` (`nro_matricula`),
  CONSTRAINT `procuradores_ibfk_1` FOREIGN KEY (`id_procurador`) REFERENCES `empleados` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procuradores`
--

LOCK TABLES `procuradores` WRITE;
/*!40000 ALTER TABLE `procuradores` DISABLE KEYS */;
/*!40000 ALTER TABLE `procuradores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-30 12:10:21
CREATE DATABASE  IF NOT EXISTS `04_reflexivas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `04_reflexivas`;
-- MySQL dump 10.13  Distrib 8.0.42, for macos15 (x86_64)
--
-- Host: 127.0.0.1    Database: 04_reflexivas
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `aeropuertos`
--

DROP TABLE IF EXISTS `aeropuertos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aeropuertos` (
  `id_aeropuerto` int NOT NULL AUTO_INCREMENT,
  `aeropuerto` varchar(35) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  PRIMARY KEY (`id_aeropuerto`),
  UNIQUE KEY `aeropuerto` (`aeropuerto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aeropuertos`
--

LOCK TABLES `aeropuertos` WRITE;
/*!40000 ALTER TABLE `aeropuertos` DISABLE KEYS */;
INSERT INTO `aeropuertos` VALUES (1,'Barajas','Madrid'),(2,'El Prat','Barcelona'),(3,'Ezeiza','Buenos Aires'),(4,'El de Sevilla','Sevilla'),(5,'DeGol','Paris');
/*!40000 ALTER TABLE `aeropuertos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conexiones`
--

DROP TABLE IF EXISTS `conexiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conexiones` (
  `fk_aeropuerto_origen` int NOT NULL,
  `fk_aeropuerto_destino` int NOT NULL,
  PRIMARY KEY (`fk_aeropuerto_origen`,`fk_aeropuerto_destino`),
  KEY `fk_aeropuerto_destino` (`fk_aeropuerto_destino`),
  CONSTRAINT `conexiones_ibfk_1` FOREIGN KEY (`fk_aeropuerto_origen`) REFERENCES `aeropuertos` (`id_aeropuerto`),
  CONSTRAINT `conexiones_ibfk_2` FOREIGN KEY (`fk_aeropuerto_destino`) REFERENCES `aeropuertos` (`id_aeropuerto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conexiones`
--

LOCK TABLES `conexiones` WRITE;
/*!40000 ALTER TABLE `conexiones` DISABLE KEYS */;
INSERT INTO `conexiones` VALUES (3,1),(5,2),(1,3),(2,5);
/*!40000 ALTER TABLE `conexiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `dni` varchar(10) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fk_jefe` int DEFAULT NULL,
  PRIMARY KEY (`id_empleado`),
  KEY `empleados_jefe_idx` (`fk_jefe`),
  CONSTRAINT `empleados_jefe_idx` FOREIGN KEY (`fk_jefe`) REFERENCES `empleados` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Javier','Ortega Desio','4473754P','1984-10-02',3),(2,'Marcos','Ayerza','7940816K','1984-05-08',NULL),(3,'Jeronimo','De La Fuente','5169607A','1986-06-07',2),(4,'Juan Martin','Fernandez Lobbe','5145360O','1983-01-17',6),(5,'Santiago','Garcia Botta','3763193R','1986-01-26',9),(6,'Lucas','Gonzales Amorosino','2807609L','1993-04-15',2),(7,'Marinao','Galarza','1485392G','1988-02-19',9),(8,'Pablo','Matera','6089091L','1974-05-23',6),(9,'Juan','Pablo Socino','6055307E','1975-08-17',2),(10,'Guido','Petti Pagadizabal','2773999I','1997-02-16',9),(11,'Juan','Figallo','8739151Y','1971-12-09',6),(12,'Santiago','Gonzalez Iglesias','3846194N','1987-08-27',3),(13,'Leonardo','Senatore','7610171Y','1962-11-08',3),(14,'Tomas','Lavanini','1172294Y','1984-02-05',9),(15,'Nicolas','Sanchez','7739387C','1997-12-16',6);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-30 12:10:21
CREATE DATABASE  IF NOT EXISTS `06_universidad` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `06_universidad`;
-- MySQL dump 10.13  Distrib 8.0.42, for macos15 (x86_64)
--
-- Host: 127.0.0.1    Database: 06_universidad
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `id_alumno` int unsigned NOT NULL AUTO_INCREMENT,
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido1` varchar(45) NOT NULL,
  `apellido2` varchar(45) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `ciudad` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_alumno`),
  UNIQUE KEY `id_alumno` (`id_alumno`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (1,'13967823S','María Isabel','Ruiz','Marques','2000-01-05','807986539','Madrid','Madrid'),(2,'37536605F','Josefa','Aparicio','Martínez','1996-09-22','691410653','Vigo','Pontevedra'),(3,'55289661F','Encarnación','Rovira','Ruano','1996-01-01','864923827','Adeje','S.C. de Tenerife'),(4,'55630078R','Amparo','García','Álvarez','1998-09-30','210857116','Villarreal','Castellón'),(5,'67278926Q','José','Abad','Valle','1996-01-28','221971051','Oleiros','La Coruña'),(6,'29143434L','Juan Carlos','Campillo','Ramos','1999-06-19','319736195','Santa Coloma de Gramanet','Barcelona'),(7,'56040749F','Alejandro','López','Villalobos','2000-04-19','77248524','Salamanca','Salamanca'),(8,'01792340L','Antonio','Ramírez','García','1998-09-25','590096477','Amposta','Tarragona'),(9,'10883513M','José','Sancho','Gutiérrez','1996-07-29','516596624','Vitoria','Álava'),(10,'03399466C','Albert','Ibáñez','Silva','2000-04-13','504467842','Madrid','Madrid'),(11,'18331564N','Dolores','López','Villaescusa','1998-03-08','935519669','Tomelloso','Ciudad Real'),(12,'96729463L','Francisco','Jaime','Oliver','1999-06-01','234663406','Murcia','Murcia'),(13,'51358931T','Juan','Arias','Guzmán','1997-12-05','38927979','Barcelona','Barcelona'),(14,'77510445P','José Antonio','González','Rueda','1997-12-04','627661233','Rubí','Barcelona'),(15,'03907044B','Alberto','Orellana','López','1998-03-05','575211893','Marín','Pontevedra'),(16,'93107230X','María Dolores','Martínez','Fernández','1998-07-28','280075149','Fuenlabrada','Madrid'),(17,'56034423Y','Julio','Rubio','Castellano','1999-06-19','144521083','Las Palmas de G. C.','Las Palmas'),(18,'96141475A','Fernando','Aguilar','Montero','1999-10-02','225224520','Burriana','Castellón'),(19,'99959236V','Roberto','Pérez','Corbacho','1997-02-16','978576407','Benalmádena','Málaga'),(20,'03209615B','María Rosario','López','Soriano','1997-04-06','565931341','Barcelona','Barcelona'),(21,'13410797A','José','Suarez','García','1997-02-20','945508089','Martorell','Barcelona'),(22,'30186195Y','Juan Francisco','Espinosa','Matilla','1997-12-16','871271911','Madrid','Madrid'),(23,'25007239Y','Alejandro','Zapata','Huerta','1997-02-15','44593794','Manises','Valencia'),(24,'40867786Y','Josefa','Burgos','Nieto','2000-03-17','5835161','Adeje','S.C. de Tenerife'),(25,'81268932L','Ana Belén','López','García','1996-03-10','709524197','Madrid','Madrid'),(26,'19312675N','José','Domingo','Plana','1997-03-19','428443570','Molina de Segura','Murcia'),(27,'04957665S','Jorge','Díaz','Martin','2000-04-18','754710333','Cornellá de Llobregat','Barcelona'),(28,'91063204V','Francisco','Rodríguez','Hussain','1997-01-17','483504476','Sevilla','Sevilla'),(29,'98142504D','María Carmen','Gracia','Muñoz','1999-08-03','394192330','Rincón de la Victoria','Málaga'),(30,'02868742K','David','Quiroga','Sarmiento','1998-04-18','138114275','Alicante','Alicante'),(31,'78527165J','Bárbara','Sosa','Tudela','1999-01-08','76440533','Almería','Almería'),(32,'38627285G','Ángel','Cruz','Sarabia','1998-03-11','209341936','Amposta','Tarragona'),(33,'47458585V','Mercedes','Luis','Rodríguez','1997-10-10','289532275','Madrid','Madrid'),(34,'64700088F','Ángeles','Rodríguez','Gómez','1997-04-11','617036073','Bilbao','Vizcaya'),(35,'41506797P','José','Carrera','Sánchez','1995-12-22','117895188','San Roque','Cádiz'),(36,'88837886H','Paula','Martin','Jorda','1997-09-01','686684206','Moguer','Huelva'),(37,'01100479K','Isabel','Martos','Muñoz','1997-08-30','985943505','Benidorm','Alicante'),(38,'35562931D','José','García','Pérez','1999-11-18','552769020','Bilbao','Vizcaya'),(39,'99158635T','Antonio','Folch','Velázquez','1998-04-29','629120120','Zarauz','Guipúzcoa'),(40,'27216801G','María Carmen','Perdomo','Sánchez','1996-12-10','978361378','Pozuelo de Alarcón','Madrid'),(41,'57805645K','Carmen','Manzanares','Díaz','1997-10-28','926785382','Granada','Granada'),(42,'03057394G','Antonia','López','Ocaña','1996-04-25','803670136','Parla','Madrid'),(43,'37137990M','María Carmen','Navarro','Muñoz','1999-02-26','928664420','Málaga','Málaga'),(44,'84552412L','Ana María','Torres','Reyes','1996-08-26','411593044','Marrachí','Islas Baleares'),(45,'04782415W','Raúl','González','Grande','1997-12-19','462288337','Málaga','Málaga'),(46,'34549931K','Sonia','Díaz','Valero','1997-04-17','79141283','Madrid','Madrid'),(47,'17578110S','José','Sanchís','Aguilera','1998-12-11','343089627','Marrachí','Islas Baleares'),(48,'99262647Y','Francisco','González','Del Rey','1996-12-20','806431646','Puente Genil','Córdoba'),(49,'86748384C','Jorge','Bazán','López','1997-02-16','234394909','Vic','Barcelona'),(50,'77322495Z','Alicia','Rey','Moya','1996-01-14','195618733','Valladolid','Valladolid'),(51,'41992625F','Ramón','Mira','Fabra','2000-02-27','607202021','Sevilla','Sevilla'),(52,'17859427L','Fernando','Díaz','Roig','1996-04-20','776270096','Sabadell','Barcelona'),(53,'53249915Q','Ginés','Ortega','Gutiérrez','1999-10-16','284313920','Badalona','Barcelona'),(54,'88906599F','Cristina','Arroyo','Valencia','2000-02-04','415533888','Salamanca','Salamanca'),(55,'28640465Z','Carmen','Domínguez','Cano','1996-04-25','336318876','Hospitalet de Llobregat','Barcelona'),(56,'83094267M','Miguel','Fernández','Fernández','1996-04-01','650253940','Barcelona','Barcelona'),(57,'32367703X','María','Gamiz','Barrero','1998-05-01','327955263','Oviedo','Asturias'),(58,'86662787Y','Miguel','Silva','González','1999-02-18','378864805','Sant Cugat del Vallés','Barcelona'),(59,'26270475J','Salvador','Osuna','Monge','1999-12-29','246834215','Zaragoza','Zaragoza'),(60,'71568595R','Manuela','Álvarez','Buendía','2000-04-24','280067111','Las Palmas de G. C.','Las Palmas'),(61,'49359539K','Pilar','Giráldez','Torre','1998-08-18','99767462','Madrid','Madrid'),(62,'52913655Q','Concepción','Ribes','Mendoza','1998-11-11','374978058','Madrid','Madrid'),(63,'54425879J','María José','Oliver','Rodríguez','1996-07-08','226676224','Albacete','Albacete'),(64,'36100596A','Francisco','Navarro','Rodríguez','1998-01-16','932046007','Elche','Alicante'),(65,'57173076K','Sergio','Rojas','Gutiérrez','1999-12-03','668788399','La Rinconada','Sevilla'),(66,'77909892Z','Antonio','Hernández','Mendoza','2000-01-17','318565796','Madrid','Madrid'),(67,'21397324X','María Mar','Delgado','Velasco','1998-08-02','33654815','León','León'),(68,'89561128W','José','Torres','Muñoz','1996-01-22','772349604','Santa Cruz de Tenerife','S.C. de Tenerife'),(69,'22110623X','Rosario','Carmona','Sola','1996-03-22','371749416','Roquetas de Mar','Almería'),(70,'91759077W','Laura','Calvo','Gallego','2000-02-17','112092749','Parla','Madrid'),(71,'38654754B','Margarita','López','Carmona','1998-06-21','784017766','La Coruña','La Coruña'),(72,'23193051N','Joaquín','Herreros','Felipe','1997-06-29','887503098','Alicante','Alicante'),(73,'58717680Z','Luis','Martínez','Fernández','1998-03-01','806399250','Barcelona','Barcelona'),(74,'64309430G','Vicente','Diez','Martínez','1997-12-01','334058143','Madrid','Madrid'),(75,'41253197Y','Silvia','Sáenz','Soler','2000-04-01','89511751','Ribeira','La Coruña'),(76,'80316988E','María Carmen','Lara','Fernández','1998-08-10','694200259','Valencia','Valencia'),(77,'23115061S','Carmen','Ferro','Da Silva','1999-01-16','384199442','Madrid','Madrid'),(78,'67247370Q','Francisco','Martínez','Rodríguez','2000-02-24','51987353','León','León'),(79,'67315169B','María','Martínez','López','1999-09-23','529965013','Estepona','Málaga'),(80,'13525176A','Irene','López','Palomo','1999-04-14','601449354','Cornellá de Llobregat','Barcelona'),(81,'79114983C','María','Soler','Martínez','1999-01-18','657852882','Madrid','Madrid'),(82,'70793791K','Antonio','Escalera','Conde','1998-07-10','86160850','Valencia','Valencia'),(83,'73911095C','Ana María','Alcaraz','González','1999-06-23','716380501','Soria','Soria'),(84,'91166850W','Mónica','Romera','Martínez','1995-12-17','835782154','Cartagena','Murcia'),(85,'62468425B','Ramón','López','Roselló','1999-07-04','432436691','Barcelona','Barcelona'),(86,'56452073E','Juan Carlos','Abella','Hernández','1997-09-16','694258035','Irun','Guipúzcoa'),(87,'28882974B','Ángel','López','Galván','1997-05-14','298972728','Avilés','Asturias'),(88,'99451653K','Mohamed','Bautista','Rodrigo','1998-04-15','432159804','Tarrasa','Barcelona'),(89,'12263241D','Juan José','Peral','Mariño','1996-12-26','520281996','Albacete','Albacete'),(90,'66236482R','Manuel','Rus','Campo','1998-12-18','995919965','Esparreguera','Barcelona'),(91,'21527341P','Joaquín','Iglesias','Navarro','2000-02-17','239941650','Collado Villalba','Madrid'),(92,'46116898N','Alberto','Cobo','López','2000-01-20','595611945','Burjasot','Valencia'),(93,'88851072W','Teresa','Carrillo','Álvarez','1996-11-15','157152385','Hospitalet de Llobregat','Barcelona'),(94,'38015437W','Laura','Grande','Medina','1998-06-29','625388094','Marrachí','Islas Baleares'),(95,'30328443E','Emilio','Postigo','Marcos','1996-07-10','468002607','Pamplona','Navarra'),(96,'66218042F','Francisca','Fraga','González','1997-02-12','263556966','Moncada y Reixach','Barcelona'),(97,'68045128L','Gerard','Matos','Martin','1999-10-25','795559177','Barcelona','Barcelona'),(98,'95784793M','José Antonio','Sánchez','Gracia','1997-08-03','743611955','Madrid','Madrid'),(99,'93282732E','José Manuel','Martínez','Palma','1996-08-26','968594835','Crevillente','Alicante'),(100,'89206628R','Juan José','Romo','Fernández','1988-11-29','710794541','Burjasot','Valencia'),(101,'34458528C','Sergi','Pardo','Diez','1987-10-09','787743053','Écija','Sevilla'),(102,'99864750S','María Carmen','Castro','Rosales','1989-07-06','569967411','Granada','Granada'),(103,'79479350K','Concepción','Torrejón','Vega','1989-01-22','739693625','Valencia','Valencia'),(104,'34486715D','Fernando','Segovia','Pons','1986-09-13','924472454','Valencia','Valencia'),(105,'19368954X','Manuel','Correa','Vera','1989-09-25','907734288','Elche','Alicante'),(106,'82278210B','María Carmen','Vives','Velasco','1989-10-05','926699669','Lugo','Lugo'),(107,'82329436Q','María Begoña','Díaz','Álvarez','1989-04-06','437685389','Huelva','Huelva'),(108,'65084966A','Juan José','Arnal','Álvarez','1988-04-28','975725655','Madrid','Madrid'),(109,'22589934R','Manuela','Martínez','León','1988-02-12','599619224','Santa Pola','Alicante'),(110,'18732591B','María','Sánchez','Cabrera','1988-03-20','611234639','Leganés','Madrid'),(111,'93981506X','María José','Martin','Muñoz','1987-08-28','216885406','Algemesí','Valencia'),(112,'59155626V','Juan Francisco','Sandoval','Menéndez','1989-03-20','619711249','Puertollano','Ciudad Real'),(113,'72734240Y','Ana María','Huertas','Carmona','1988-11-08','822545360','Vigo','Pontevedra'),(114,'72642325E','Joaquín','Rodríguez','Lillo','1989-11-16','50960880','Lorca','Murcia'),(115,'91216134C','María','Galán','Murcia','1986-03-13','565348765','Huesca','Huesca'),(116,'06039454E','Francisco','Crespo','Martos','1985-12-19','282978892','Sevilla','Sevilla'),(117,'02885664S','Ana','Crespo','Soler','1988-06-16','288460347','Sevilla','Sevilla'),(118,'60905020P','Miguel Ángel','Córdoba','Simón','1989-08-18','933936838','Albacete','Albacete'),(119,'15386820G','Josefa','Muriel','Hernando','1989-06-30','148657092','Marbella','Málaga'),(120,'75703138H','María Pilar','García','Mellado','1989-07-28','419053474','Castellón de la Plana','Castellón'),(121,'25165921B','Antonia','Martínez','López','1987-10-21','624102470','Gijón','Asturias'),(122,'41741583X','Laura','Granados','Rodríguez','1988-08-12','86465935','Ceuta','Ceuta'),(123,'57473444D','María Amparo','Pérez','Herrera','1989-03-15','25930816','Granada','Granada'),(124,'10481533L','Montserrat','Morato','Fuentes','1988-10-04','714492369','San Fernando','Cádiz'),(125,'28024659X','Julio','Gómez','Quintas','1988-02-25','341977943','Oviedo','Asturias'),(126,'03437498X','Montserrat','Núñez','Barroso','1989-05-16','67149889','Fuenlabrada','Madrid'),(127,'53263416Q','Diego','Cano','Molina','1987-05-09','198046685','Madrid','Madrid'),(128,'63325249Q','Josefa','Jaén','Álvarez','1986-03-02','158538291','Madrid','Madrid'),(129,'71867132K','Raúl','Valencia','Pérez','1986-03-17','229807644','Castro-Urdiales','Cantabria'),(130,'18812003G','Francisco','Gómez','Casado','1988-11-25','939500897','Valencia','Valencia'),(131,'76348899P','María Luisa','Aragón','Lozano','1987-03-05','782248522','Torrente','Valencia'),(132,'59914865A','Fernando','Juárez','Cobos','1987-01-15','407214137','Valencia','Valencia'),(133,'93900352T','Isabel','Palacios','Aguilar','1986-11-24','696832176','Gavá','Barcelona'),(134,'70519672Q','Francisca','Álvarez','Sarmiento','1989-09-30','574884404','Arona','S.C. de Tenerife'),(135,'45782618Z','Jorge','Martínez','Romero','1988-03-31','651314360','Sevilla','Sevilla'),(136,'51758048K','Fernando','Pérez','Fernández','1986-09-09','201013493','Alcira','Valencia'),(137,'19392226Y','José María','Díaz','Gallart','1988-02-01','957427407','Gijón','Asturias'),(138,'34921754A','Antonia','Hernández','Jiménez','1989-03-25','381999578','Sevilla','Sevilla'),(139,'97015975C','Xabier','Canosa','Sánchez','1989-08-22','641145603','Vigo','Pontevedra'),(140,'15750865M','Fernando','Fariña','Morales','1987-02-12','743770533','San Sebastián de los Reyes','Madrid'),(141,'94401971N','Dolores','Villegas','Sánchez','1988-01-22','361329973','Pozuelo de Alarcón','Madrid'),(142,'15119782L','Francisco Javier','Lago','Hernández','1989-03-25','171334968','Ibiza','Islas Baleares'),(143,'69837222E','Yolanda','Gil','García','1989-11-16','3394912','Granada','Granada'),(144,'32631418F','María Rocío','Conde','Rusu','1987-03-27','522488909','Murcia','Murcia'),(145,'56423011D','Manuela','Carazo','Jiménez','1988-03-03','896735337','Alicante','Alicante'),(146,'72731132A','Patricia','Verde','Vargas','1990-04-22','335571504','Getafe','Madrid'),(147,'47197983M','Alberto','Sánchez','Giménez','1987-06-06','305240825','Aranjuez','Madrid'),(148,'19143561V','Montserrat','Pérez','Martin','1987-12-20','779432412','Getafe','Madrid'),(149,'22191140G','Javier','Guerrero','Rodríguez','1989-02-06','62048696','Granada','Granada'),(150,'13481388F','Isabel','Morales','Fernández','1988-04-08','164033802','Hospitalet de Llobregat','Barcelona'),(151,'07164391Y','Vicente','Luque','Pérez','1988-07-13','558204249','Jerez de la Frontera','Cádiz'),(152,'61813675W','Antonio','Lozano','Illescas','1987-11-15','129576787','Arrecife','Las Palmas'),(153,'62773100M','María Pilar','Méndez','Varona','1986-02-06','438120996','Murcia','Murcia'),(154,'13541082Q','David','Jaramillo','González','1989-01-14','158108132','Zaragoza','Zaragoza'),(155,'99218686K','Raúl','Mesa','Fernández','1986-05-10','60965813','Bilbao','Vizcaya'),(156,'94697392K','Cristina','Martínez','Salgado','1987-10-10','735377548','Sevilla','Sevilla'),(157,'74053510L','Carmen','García','Ortega','1986-04-10','423481382','Madrid','Madrid'),(158,'04268480W','Jesús','Muñoz','Morales','1988-11-03','427748609','San Sebastián de los Reyes','Madrid'),(159,'60852617E','Joaquín','Jiménez','González','1989-10-21','315891416','Móstoles','Madrid'),(160,'36796011J','María Teresa','Reyes','Muñoz','1989-05-14','152199695','Olesa de Montserrat','Barcelona'),(161,'01845532N','Laura','Vázquez','Salvador','1989-11-20','48771737','Las Palmas de G. C.','Las Palmas'),(162,'28383084A','José Luis','Bosch','Lázaro','1986-03-17','556866027','Rentería','Guipúzcoa'),(163,'90618502C','Manuel','Martin','Ruiz','1986-02-11','141509172','Alcorcón','Madrid'),(164,'64466684F','Antonio','Amat','Martínez','1986-09-26','676880305','Palma de Mallorca','Islas Baleares'),(165,'70566061Z','María Jesús','Rivas','Gutiérrez','1986-04-14','587143524','Onteniente','Valencia'),(166,'97840785G','José','Iglesias','Gamero','1989-08-09','63804487','Zamora','Zamora'),(167,'81776035H','María Carmen','Navarro','Vidal','1986-09-20','927993826','Algemesí','Valencia'),(168,'39788862N','Miguel','Font','Hidalgo','1989-08-04','57642590','Calviá','Islas Baleares'),(169,'73893659H','Concepción','Rodríguez','García','1986-11-24','743265053','San Pedro del Pinatar','Murcia'),(170,'94587281B','María Carmen','Nogueira','Fernández','1988-09-21','603252988','Gerona','Gerona'),(171,'91651106Q','María Dolores','Fernández','Sánchez','1986-04-25','772421579','Bilbao','Vizcaya'),(172,'89965383D','Pedro','Martínez','Rodríguez','1989-11-01','246733389','Molina de Segura','Murcia'),(173,'38427559X','Francisco','Perdomo','Mendes','1986-05-29','736140453','Paterna','Valencia'),(174,'57141312C','María Teresa','Romero','Barreto','1985-12-21','766068381','Reus','Tarragona'),(175,'15653779W','José Manuel','Soto','Martin','1986-08-16','930035456','Sevilla','Sevilla'),(176,'94560296M','Juan','López','Gómez','1989-10-31','776058520','Getafe','Madrid'),(177,'46465058K','Miguel','Catalá','Carrascosa','1987-12-18','374793061','Los Palacios y Villafranca','Sevilla'),(178,'70900156B','María Rosario','Ruiz','Muñoz','1989-03-23','136541755','Gáldar','Las Palmas'),(179,'81902776Y','Juan Antonio','Álvarez','Esteban','1986-04-10','221156070','Barcelona','Barcelona'),(180,'62622016P','Antonio','Martínez','Mateo','1988-11-23','973089815','Fuengirola','Málaga'),(181,'01864143Q','Rafaela','Zorrilla','Navas','1986-06-17','498302131','Pinto','Madrid'),(182,'92032724H','Rocío','Marín','Mena','1986-08-24','709932437','Oviedo','Asturias'),(183,'82225055D','Jesús','Toledo','Bautista','1990-03-19','3997412','Sevilla','Sevilla'),(184,'70690972N','Miguel','Martínez','Mohamed','1986-03-19','686559173','San Felíu de Guixols','Gerona'),(185,'31165333B','Víctor','Ruiz','Quintana','1987-08-23','8647868','San Sebastián','Guipúzcoa'),(186,'66779313D','Montserrat','Muñoz','Souto','1989-06-11','985277211','Alcalá de Henares','Madrid'),(187,'70548151K','Francisco','Santos','Miranda','1988-12-05','642436475','Madrid','Madrid'),(188,'51092109R','Laura','Linares','Dios','1989-03-21','338798403','Pamplona','Navarra'),(189,'12479881N','María Jesús','Martin','Pérez','1986-03-28','655241659','Marbella','Málaga'),(190,'52359074B','Juan','Dorado','Marco','1988-04-03','400406179','Barcelona','Barcelona'),(191,'93584067B','Antonio','Piña','Mera','1987-10-12','710542749','Onda','Castellón'),(192,'44456436N','Tomas','Márquez','Miranda','1986-10-19','896656899','Gerona','Gerona'),(193,'82898682N','Eduardo','Ruiz','Martínez','1990-01-14','641596625','Caravaca de la Cruz','Murcia'),(194,'22125289W','Pilar','Carpintero','Pérez','1990-04-16','120424059','Madrid','Madrid'),(195,'10087957L','Antonio','Jiménez','López','1987-10-24','513687776','Fuenlabrada','Madrid'),(196,'76359593F','Alberto','Sanmartín','Pla','1986-08-20','676251503','Tarragona','Tarragona'),(197,'55259493S','María Jesús','Canales','González','1986-08-08','225588848','Las Palmas de G. C.','Las Palmas'),(198,'09297312E','María','Cutillas','Pérez','1987-10-23','199924860','Madrid','Madrid'),(199,'74176555Z','Javier','Cubillo','Aguirre','1989-02-17','768272990','Burgos','Burgos'),(200,'02191436L','Rafael','García','Fernández','1990-03-29','797863346','Alcalá la Real','Jaén');
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignaturas`
--

DROP TABLE IF EXISTS `asignaturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignaturas` (
  `id_asignatura` int unsigned NOT NULL AUTO_INCREMENT,
  `asignatura` varchar(45) NOT NULL,
  `creditos` int unsigned NOT NULL,
  `facultad` varchar(45) DEFAULT NULL,
  `fk_profesor` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id_asignatura`),
  UNIQUE KEY `id_asignatura` (`id_asignatura`),
  KEY `asignaturas_profesores_idx` (`fk_profesor`),
  CONSTRAINT `asignaturas_profesores` FOREIGN KEY (`fk_profesor`) REFERENCES `profesores` (`id_profesor`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignaturas`
--

LOCK TABLES `asignaturas` WRITE;
/*!40000 ALTER TABLE `asignaturas` DISABLE KEYS */;
INSERT INTO `asignaturas` VALUES (1,'Programación I',6,'Informatica',5),(2,'Matematica Discreta',6,'Matematica',10),(3,'Programacion II',6,'Informatica',5),(4,'Fisica I',6,'Lic Fisica',20),(5,'Calculo',6,'Matematica',10),(6,'Algebra',6,'Matematica',11),(7,'Base de Datos',6,'Informatica',5),(8,'Estructura de Datos',6,'Informatica',7),(9,'Metodologias Agiles',6,'Informatica',7),(10,'Probabilidad y Estadistica',6,'Matematica',11),(11,'Logica',6,'Informatica',4),(12,'Sistemas Digitales',6,'Informatica',8),(13,'Arquitectura de Computadores',6,'Informatica',8),(14,'Redes',6,'Informatica',8),(15,'Ingenieria del Software I',6,'Informatica',7);
/*!40000 ALTER TABLE `asignaturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `fk_alumno` int unsigned NOT NULL,
  `fk_asignatura` int unsigned NOT NULL,
  `nota` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`fk_alumno`,`fk_asignatura`),
  KEY `notas_asignaturas_idx` (`fk_asignatura`),
  CONSTRAINT `notas_alumnos` FOREIGN KEY (`fk_alumno`) REFERENCES `alumnos` (`id_alumno`),
  CONSTRAINT `notas_asignaturas` FOREIGN KEY (`fk_asignatura`) REFERENCES `asignaturas` (`id_asignatura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,1,5.00),(1,2,7.00),(1,3,5.00),(1,4,9.00),(2,1,9.00),(2,2,6.00),(2,3,5.00),(3,1,7.50),(3,2,5.20),(3,4,9.50),(4,2,5.50),(11,1,NULL),(11,2,9.00),(12,1,NULL),(13,1,NULL),(13,2,NULL),(14,1,NULL),(14,2,8.50),(15,1,NULL),(15,2,NULL),(15,3,NULL),(16,1,NULL),(16,2,NULL),(16,3,NULL),(17,2,NULL),(17,3,NULL),(19,2,NULL),(19,3,NULL),(20,2,NULL),(20,3,NULL),(21,2,8.00),(21,3,6.50),(22,3,NULL);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesores`
--

DROP TABLE IF EXISTS `profesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesores` (
  `id_profesor` int unsigned NOT NULL AUTO_INCREMENT,
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50) NOT NULL,
  `nro_cuenta` varchar(20) DEFAULT NULL,
  `telefono` varchar(9) DEFAULT NULL,
  `especialidad` varchar(20) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `ciudad` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_profesor`),
  UNIQUE KEY `id_profesor` (`id_profesor`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesores`
--

LOCK TABLES `profesores` WRITE;
/*!40000 ALTER TABLE `profesores` DISABLE KEYS */;
INSERT INTO `profesores` VALUES (1,'01546907L','María','Ortiz','Reyes','19277','244946945','sin especialidad','Loja','Granada'),(2,'01311645R','José','Morgado','Pulido','14416','473222127','sin especialidad','Barcelona','Barcelona'),(3,'71332011H','Alba','Aguilar','Martínez','10412','786698190','sin especialidad','Pilar de la Horadada','Alicante'),(4,'97604762F','José','Moreno','Casanova','18096','688266743','sin especialidad','Los Barrios','Cádiz'),(5,'53076299G','María José','Ruiz','Barba','10123','996784692','sin especialidad','Benalmádena','Málaga'),(6,'69893542S','Luis','Sánchez','García','19469','744508743','sin especialidad','San Cristóbal de la Laguna','S.C. de Tenerife'),(7,'48739723D','Lucia','Estepa','Chinchilla','18816','174604178','sin especialidad','Madrid','Madrid'),(8,'67505622R','Alicia','Rodríguez','Ramón','12281','616900973','sin especialidad','Puertollano','Ciudad Real'),(9,'68516112D','Rosa','Jurado','Guirado','14000','149681167','sin especialidad','Madrid','Madrid'),(10,'33443900Z','María Ángeles','Roque','Pérez','15481','291833702','sin especialidad','Estepona','Málaga'),(11,'68200457Y','José Antonio','Mariño','Arrieta','18146','197710118','sin especialidad','Córdoba','Córdoba'),(12,'52844410R','Dolores','García','González','15446','129989202','sin especialidad','Gijón','Asturias'),(13,'16509078T','María Mar','Fariña','Pérez','10160','690404053','sin especialidad','Almería','Almería'),(14,'21329062N','Javier','González','Guerra','14037','947774472','sin especialidad','El Prat de Llobregat','Barcelona'),(15,'15114429W','Cristina','Cruz','Silva','15274','794078774','sin especialidad','Ciempozuelos','Madrid'),(16,'99542660V','Ignacio','Freire','López','13879','557526739','sin especialidad','Alicante','Alicante'),(17,'40543755E','Juan Manuel','López','Martínez','16237','446299362','sin especialidad','Paterna','Valencia'),(18,'35259960V','Rafael','García','Manso','13601','461947503','sin especialidad','Madrid','Madrid'),(19,'54133376R','María Antonia','Pérez','Requena','12292','760308589','sin especialidad','Leganés','Madrid'),(20,'01023843K','Marta','Velasco','Freire','11138','288335942','sin especialidad','Martos','Jaén'),(21,'90457539B','Dolores','López','Aguilar','11001','635605886','sin especialidad','Sitges','Barcelona'),(22,'49199403B','David','Conejero','Solís','18776','481488628','sin especialidad','Esplugas de Llobregat','Barcelona'),(23,'32722044J','Laura','Simón','Lorenzo','17744','427831246','sin especialidad','Leganés','Madrid'),(24,'28911991W','María','Rico','Domingo','18157','795396309','sin especialidad','Madrid','Madrid'),(25,'44731269H','María Isabel','Luque','Beltrán','15296','262048928','sin especialidad','Alcobendas','Madrid'),(26,'07255463K','Elena','Sobrino','Sánchez','17213','820363132','sin especialidad','Barcelona','Barcelona'),(27,'54732007B','María','Escribano','Chica','19379','228459432','sin especialidad','Salou','Tarragona'),(28,'20033976X','Dolores','Verdú','López','13285','957461295','sin especialidad','Madrid','Madrid'),(29,'31205937C','Josefa','Aparicio','Navarro','18016','135630005','sin especialidad','Santa Pola','Alicante'),(30,'24685230C','Alicia','Frías','Calero','12733','959818714','sin especialidad','Barcelona','Barcelona'),(31,'56295592X','Encarnación','Escobar','Sánchez','19790','15885801','sin especialidad','Andújar','Jaén'),(32,'92265945L','Rafael','García','Navas','11422','663462068','sin especialidad','Madrid','Madrid'),(33,'41340781Y','Antonio','Rojas','Calvo','18906','462807369','sin especialidad','Basauri','Vizcaya'),(34,'00385233Y','Antonio','Gómez','Hernández','16421','822181686','sin especialidad','El Puerto de Santa María','Cádiz'),(35,'55017261L','Sara','Lozano','Domínguez','11845','456185993','sin especialidad','Murcia','Murcia'),(36,'77593555L','Jesús','Roselló','Díaz','17272','267898968','sin especialidad','Burgos','Burgos'),(37,'56729562Q','Pedro','Martin','Barrio','11576','984406742','sin especialidad','Badalona','Barcelona'),(38,'81636736F','Teresa','Gómez','Ibáñez','14491','292637661','sin especialidad','Fuengirola','Málaga'),(39,'74179463R','Félix','Rodríguez','López','11156','700455162','sin especialidad','Sant Cugat del Vallés','Barcelona'),(40,'88161654D','María Carmen','Lago','Leal','11552','674909409','sin especialidad','Sevilla','Sevilla'),(41,'33763449R','Miguel','Cerro','Piñero','19087','519182600','sin especialidad','Madrid','Madrid'),(42,'43897049P','Ángel','Martínez','Peiro','18695','790284999','sin especialidad','Parla','Madrid'),(43,'02496401G','Beatriz','Linares','Cueto','13427','342771861','sin especialidad','Granada','Granada'),(44,'68096098K','Juan Manuel','Alonso','Moreno','16856','400100642','sin especialidad','Madrid','Madrid'),(45,'95649519V','Teresa','Cortes','Corpas','19434','516965729','sin especialidad','Tarrasa','Barcelona'),(46,'60061426P','José Luis','Escudero','Diez','17544','221443359','sin especialidad','Barcelona','Barcelona'),(47,'73720906H','Montserrat','Ortega','López','18438','554732548','sin especialidad','Elche','Alicante'),(48,'40213406E','José','Duran','Gómez','12422','546928460','sin especialidad','Arrecife','Las Palmas'),(49,'91769718V','María Pilar','Muñoz','Álvarez','10079','399048084','sin especialidad','Móstoles','Madrid'),(50,'71318131F','Ana Belén','Soares','Mateos','19713','659557744','sin especialidad','Moncada y Reixach','Barcelona');
/*!40000 ALTER TABLE `profesores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-30 12:10:21
CREATE DATABASE  IF NOT EXISTS `05_empleados` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `05_empleados`;
-- MySQL dump 10.13  Distrib 8.0.42, for macos15 (x86_64)
--
-- Host: 127.0.0.1    Database: 05_empleados
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamentos` (
  `id_departamento` int unsigned NOT NULL AUTO_INCREMENT,
  `departamento` varchar(45) NOT NULL,
  `presupuesto` decimal(11,2) unsigned NOT NULL,
  `gastos` decimal(11,2) unsigned NOT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Desarrollo',120000.00,6000.00),(2,'Sistemas',150000.00,21000.00),(3,'Recursos Humanos',280000.00,25000.00),(4,'Contabilidad',110000.00,3000.00),(5,'I+D',375000.00,380000.00),(6,'Proyectos',0.00,0.00),(7,'Publicidad',0.00,1000.00);
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleado` int unsigned NOT NULL AUTO_INCREMENT,
  `nif` varchar(9) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido1` varchar(45) NOT NULL,
  `apellido2` varchar(45) DEFAULT NULL,
  `fk_departamento` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id_empleado`),
  UNIQUE KEY `nif` (`nif`),
  KEY `fk_departamento` (`fk_departamento`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`fk_departamento`) REFERENCES `departamentos` (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'32481596F','Aarón','Rivero','Gómez',1),(2,'Y5575632D','Adela','Salas','Díaz',2),(3,'R6970642B','Adolfo','Rubio','Flores',3),(4,'77705545E','Adrián','Suárez',NULL,4),(5,'17087203C','Marcos','Loyola','Méndez',5),(6,'38382980M','María','Santana','Moreno',1),(7,'80576669X','Pilar','Ruiz',NULL,2),(8,'71651431Z','Pepe','Ruiz','Santana',3),(9,'56399183D','Juan','Gómez','López',2),(10,'46384486H','Diego','Flores','Salas',5),(11,'67389283A','Marta','Herrera','Gil',1),(12,'41234836R','Irene','Salas','Flores',NULL),(13,'82635162B','Juan Antonio','Sáez','Guerrero',NULL);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-30 12:10:21
CREATE DATABASE  IF NOT EXISTS `12_curso_jpa` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `12_curso_jpa`;
-- MySQL dump 10.13  Distrib 8.0.42, for macos15 (x86_64)
--
-- Host: 127.0.0.1    Database: 12_curso_jpa
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `campos`
--

DROP TABLE IF EXISTS `campos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campos` (
  `idcampo` int NOT NULL AUTO_INCREMENT,
  `campo` varchar(45) NOT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcampo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campos`
--

LOCK TABLES `campos` WRITE;
/*!40000 ALTER TABLE `campos` DISABLE KEYS */;
INSERT INTO `campos` VALUES (1,'Estadio Olimpico','Madrid'),(2,'Campo de La Paloma','Madrid'),(3,'Polideportivo El Juncal','Madrid'),(4,'Campo Luison Abada','Madrid'),(5,'Estadio Municipal','Madrid');
/*!40000 ALTER TABLE `campos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `circulo_02`
--

DROP TABLE IF EXISTS `circulo_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `circulo_02` (
  `idfigura` int NOT NULL,
  `r` double DEFAULT NULL,
  PRIMARY KEY (`idfigura`),
  CONSTRAINT `fk_circulo_figura` FOREIGN KEY (`idfigura`) REFERENCES `figuras02` (`idfigura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `circulo_02`
--

LOCK TABLES `circulo_02` WRITE;
/*!40000 ALTER TABLE `circulo_02` DISABLE KEYS */;
INSERT INTO `circulo_02` VALUES (37,12.25),(39,7),(40,7.5),(67,12.25),(69,1),(72,12.25),(74,1);
/*!40000 ALTER TABLE `circulo_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacto` (
  `idcontacto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `apodo` varchar(45) DEFAULT NULL,
  `iddomicilio` int DEFAULT NULL,
  PRIMARY KEY (`idcontacto`),
  KEY `fk_contacto_domicilio_idx` (`iddomicilio`),
  CONSTRAINT `fk_contacto_domicilio` FOREIGN KEY (`iddomicilio`) REFERENCES `domicilio` (`iddomicilio`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
INSERT INTO `contacto` VALUES (2,'Jorge','Perez','Jorgito',NULL),(3,'Luis','Perez','Luis',2),(5,'Jorge','Fernandez','Coke',NULL),(6,'Raul','García','Cabezon',2),(7,'Fernando','De la Peña','Peña',3),(8,'María','Vacis','Mary',NULL),(9,'Paula','Jimenez','Pauli',4),(10,'Francisco','Rodriguez','Paquito',NULL);
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domicilio`
--

DROP TABLE IF EXISTS `domicilio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domicilio` (
  `iddomicilio` int NOT NULL AUTO_INCREMENT,
  `tipovia` varchar(45) DEFAULT NULL,
  `via` varchar(45) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `piso` int DEFAULT NULL,
  `puerta` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddomicilio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domicilio`
--

LOCK TABLES `domicilio` WRITE;
/*!40000 ALTER TABLE `domicilio` DISABLE KEYS */;
INSERT INTO `domicilio` VALUES (2,'Avenida','Europa',16,0,NULL,'Madrid'),(3,'Calle','Italia',3,0,NULL,'Granada'),(4,'Avenida','La Paz',12,5,'A','Madrid');
/*!40000 ALTER TABLE `domicilio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipos_02`
--

DROP TABLE IF EXISTS `equipos_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipos_02` (
  `idequipo` int NOT NULL AUTO_INCREMENT,
  `equipo` varchar(45) NOT NULL,
  PRIMARY KEY (`idequipo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos_02`
--

LOCK TABLES `equipos_02` WRITE;
/*!40000 ALTER TABLE `equipos_02` DISABLE KEYS */;
INSERT INTO `equipos_02` VALUES (1,'Rojo Segunda Division'),(2,'Blanco Primera Division'),(3,'Rosa Primera Regional'),(4,'M21'),(5,'M18'),(6,'M16 Blanco'),(7,'M16 Rojo');
/*!40000 ALTER TABLE `equipos_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipos_03`
--

DROP TABLE IF EXISTS `equipos_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipos_03` (
  `idequipo` int NOT NULL AUTO_INCREMENT,
  `equipo` varchar(45) NOT NULL,
  PRIMARY KEY (`idequipo`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos_03`
--

LOCK TABLES `equipos_03` WRITE;
/*!40000 ALTER TABLE `equipos_03` DISABLE KEYS */;
INSERT INTO `equipos_03` VALUES (10,'Rojo Segunda Division'),(11,'Blanco Primera Division'),(12,'Rosa Primera Regional'),(13,'M21'),(14,'M18'),(15,'M16 Blanco'),(16,'M16 Rojo');
/*!40000 ALTER TABLE `equipos_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipos_jugadores_03`
--

DROP TABLE IF EXISTS `equipos_jugadores_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipos_jugadores_03` (
  `idequipo` int NOT NULL,
  `idjugador` int NOT NULL,
  PRIMARY KEY (`idequipo`,`idjugador`),
  KEY `fk_equipos_03_has_jugadores_03_jugadores_031_idx` (`idjugador`),
  KEY `fk_equipos_03_has_jugadores_03_equipos_031_idx` (`idequipo`),
  CONSTRAINT `fk_equipos_03_has_jugadores_03_equipos_031` FOREIGN KEY (`idequipo`) REFERENCES `equipos_03` (`idequipo`),
  CONSTRAINT `fk_equipos_03_has_jugadores_03_jugadores_031` FOREIGN KEY (`idjugador`) REFERENCES `jugadores_03` (`idjugador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos_jugadores_03`
--

LOCK TABLES `equipos_jugadores_03` WRITE;
/*!40000 ALTER TABLE `equipos_jugadores_03` DISABLE KEYS */;
INSERT INTO `equipos_jugadores_03` VALUES (10,5),(14,10);
/*!40000 ALTER TABLE `equipos_jugadores_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `figuras01`
--

DROP TABLE IF EXISTS `figuras01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `figuras01` (
  `idfigura` int NOT NULL AUTO_INCREMENT,
  `x` double NOT NULL,
  `y` double NOT NULL,
  `r` double DEFAULT NULL,
  `l1` double DEFAULT NULL,
  `l2` double DEFAULT NULL,
  `tipo_figura` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idfigura`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `figuras01`
--

LOCK TABLES `figuras01` WRITE;
/*!40000 ALTER TABLE `figuras01` DISABLE KEYS */;
INSERT INTO `figuras01` VALUES (26,0,9.5,NULL,11,4.33,'RECTANGULO'),(27,1.5,3.78,12.25,NULL,NULL,'CIRCULO'),(28,1,1,NULL,7,9,'RECTANGULO'),(29,0,0,7,NULL,NULL,'CIRCULO'),(30,10,20,7.5,NULL,NULL,'CIRCULO'),(36,0,9.5,NULL,11,4.33,'RECTANGULO'),(37,1.5,3.78,12.25,NULL,NULL,'CIRCULO'),(38,1,1,NULL,7,9,'RECTANGULO'),(39,0,0,7,NULL,NULL,'CIRCULO'),(40,10,20,7.5,NULL,NULL,'CIRCULO'),(41,0,9.5,NULL,11,4.33,'RECTANGULO'),(42,1.5,3.78,12.25,NULL,NULL,'CIRCULO'),(43,1,1,NULL,7,9,'RECTANGULO'),(44,0,0,7,NULL,NULL,'CIRCULO'),(45,10,20,7.5,NULL,NULL,'CIRCULO'),(46,1,2,NULL,4,5,'RECTANGULO');
/*!40000 ALTER TABLE `figuras01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `figuras02`
--

DROP TABLE IF EXISTS `figuras02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `figuras02` (
  `idfigura` int NOT NULL AUTO_INCREMENT,
  `x` double NOT NULL,
  `y` varchar(45) NOT NULL,
  PRIMARY KEY (`idfigura`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `figuras02`
--

LOCK TABLES `figuras02` WRITE;
/*!40000 ALTER TABLE `figuras02` DISABLE KEYS */;
INSERT INTO `figuras02` VALUES (36,0,'9.5'),(37,1.5,'3.78'),(38,1,'1.0'),(39,0,'0.0'),(40,10,'20.0'),(66,0,'9.5'),(67,1.5,'3.78'),(68,2.3,'3.0'),(69,2.5,'2.5'),(70,1,'-3.5'),(71,0,'9.5'),(72,1.5,'3.78'),(73,2.3,'3.0'),(74,2.5,'2.5'),(75,1,'-3.5'),(76,0,'0.0'),(77,1,'2.0');
/*!40000 ALTER TABLE `figuras02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequences`
--

DROP TABLE IF EXISTS `hibernate_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) NOT NULL,
  `next_val` int DEFAULT NULL,
  PRIMARY KEY (`sequence_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequences`
--

LOCK TABLES `hibernate_sequences` WRITE;
/*!40000 ALTER TABLE `hibernate_sequences` DISABLE KEYS */;
INSERT INTO `hibernate_sequences` VALUES ('default',1);
/*!40000 ALTER TABLE `hibernate_sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugadores_03`
--

DROP TABLE IF EXISTS `jugadores_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugadores_03` (
  `idjugador` int NOT NULL AUTO_INCREMENT,
  `dorsal` varchar(4) DEFAULT NULL,
  `nombreyapellidos` varchar(45) DEFAULT NULL,
  `licencia` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idjugador`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugadores_03`
--

LOCK TABLES `jugadores_03` WRITE;
/*!40000 ALTER TABLE `jugadores_03` DISABLE KEYS */;
INSERT INTO `jugadores_03` VALUES (5,'12','Pedro Ramirez','12345678PX'),(10,'9','Jorge Perez','99999999X');
/*!40000 ALTER TABLE `jugadores_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partidos`
--

DROP TABLE IF EXISTS `partidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partidos` (
  `idpartido` int NOT NULL AUTO_INCREMENT,
  `partido` varchar(45) NOT NULL,
  `idcampo` int DEFAULT NULL,
  PRIMARY KEY (`idpartido`),
  KEY `fk_partidos_campos1_idx` (`idcampo`),
  CONSTRAINT `fk_partidos_campos1` FOREIGN KEY (`idcampo`) REFERENCES `campos` (`idcampo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidos`
--

LOCK TABLES `partidos` WRITE;
/*!40000 ALTER TABLE `partidos` DISABLE KEYS */;
INSERT INTO `partidos` VALUES (1,'Semifinal vs Club Azul',1),(2,'Final vs Club Verde',1),(3,'FINAL vs Club Azul',2),(4,'Consolacion vs Club Verde',2);
/*!40000 ALTER TABLE `partidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partidos_02`
--

DROP TABLE IF EXISTS `partidos_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partidos_02` (
  `idpartido` int NOT NULL AUTO_INCREMENT,
  `partido` varchar(45) NOT NULL,
  `idequipo` int DEFAULT NULL,
  PRIMARY KEY (`idpartido`),
  KEY `fk_partidos_equipos1_idx` (`idequipo`),
  CONSTRAINT `fk_partidos_equipos1` FOREIGN KEY (`idequipo`) REFERENCES `equipos_02` (`idequipo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidos_02`
--

LOCK TABLES `partidos_02` WRITE;
/*!40000 ALTER TABLE `partidos_02` DISABLE KEYS */;
INSERT INTO `partidos_02` VALUES (1,'Semifinal vs Club Azul',1),(2,'Final vs Club Verde',2),(3,'FINAL vs Club Azul',3),(4,'Consolacion vs Club Verde',4);
/*!40000 ALTER TABLE `partidos_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `idPersona` int NOT NULL AUTO_INCREMENT,
  `apellidos` varchar(45) NOT NULL,
  `apodo` varchar(25) DEFAULT NULL,
  `nombre` varchar(45) NOT NULL,
  `dni` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Alemano','Aleman','Matias','444555444S'),(2,'AyerzaAA','Toro','Marcos','345678987P'),(3,'Creevy','Capi','Agustin','234234234P'),(4,'Orlandi','Juanpi','Juan Pablo','111222333P'),(5,'Fernandez Lobbe','Corcho','Juan Martin','777666888T'),(6,'Galarza','Galarza','Marinao','555444555S'),(7,'Herrera','Ramiro','Ramiro','111333111P'),(8,'Isa','Facu','Facundo','888777666T'),(11,'Lavanini New','Animal','Tomas','444444555S'),(12,'Leguizamon','Legui','Juan Manuel','666777888T'),(13,'Matera','Pali','Pablo',NULL),(14,'Montoya','Montoya','Julian',NULL),(15,'Noguera','Nogu','Lucas',NULL),(16,'Ortega Desio','Javi','Javier',NULL),(17,'Petti Pagadizabal','Petti','Guido',NULL),(44,'Senatore','Leo','Leonardo',NULL),(45,'Tetaz Chaparro','Chapa','Nahuel',NULL),(46,'Figallo','Figallo','Juan',NULL),(47,'Garcia Botta','Santi','Santiago',NULL),(48,'Agulla','Horacito','Horacio',NULL),(49,'Bosch','Chelo','Marcelo',NULL),(50,'Cordero','Cordero','Santiago',NULL),(51,'Cubelli','Cubelli','Tomas',NULL),(52,'De La Fuente','Jero','Jeronimo',NULL),(53,'Gonzales Amorosino','Luqui','Lucas',NULL),(54,'Gonzalez Iglesias','Ati','Santiago',NULL),(55,'Hernandez','Mago','Juan Martin',NULL),(56,'Imhoff','Imhoff','Juan',NULL),(57,'Landajo','Landajo','Martin',NULL),(58,'Moroni','Mati','Matias',NULL),(59,'Sanchez','Nico','Nicolas',NULL),(60,'Socino','Socino','Juan Pablo',NULL),(61,'Tuculet','Tucu','Joaquin',NULL);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_03`
--

DROP TABLE IF EXISTS `persona_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona_03` (
  `nrodoc` int NOT NULL,
  `letradoc` varchar(1) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nrodoc`,`letradoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_03`
--

LOCK TABLES `persona_03` WRITE;
/*!40000 ALTER TABLE `persona_03` DISABLE KEYS */;
INSERT INTO `persona_03` VALUES (1234,'X','Pepito'),(888888,'A','Antonio'),(999999,'X','Pedro'),(1134567,'A','Jorge'),(1212121,'X','Rosalia'),(1223345,'Z','Gonzalo'),(1229945,'Z','Ana'),(1230321,'A','Eugenia'),(1234567,'C','Andres'),(12121212,'A','Paula'),(56565656,'Q','Alejandro'),(98565656,'Q','Ana Maria'),(98989898,'Z','Carlota'),(123456789,'Z','Novato');
/*!40000 ALTER TABLE `persona_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_04`
--

DROP TABLE IF EXISTS `persona_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona_04` (
  `idPersona` int NOT NULL AUTO_INCREMENT,
  `apellidos` varchar(45) NOT NULL,
  `apodo` varchar(25) DEFAULT NULL,
  `nombre` varchar(45) NOT NULL,
  `dni` varchar(15) DEFAULT NULL,
  `genero` varchar(7) DEFAULT NULL,
  `fechanacimiento` date DEFAULT NULL,
  `tipovia` varchar(45) DEFAULT NULL,
  `via` varchar(45) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `piso` int DEFAULT NULL,
  `puerta` varchar(45) DEFAULT NULL,
  `codigopostal` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `provincia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_04`
--

LOCK TABLES `persona_04` WRITE;
/*!40000 ALTER TABLE `persona_04` DISABLE KEYS */;
INSERT INTO `persona_04` VALUES (1,'Juarez',NULL,'Pedro','1234567M','HOMBRE','1963-04-07','Avendia','Cronos',63,1,'6','28037','Madrid','Madrid'),(7,'LinkLater',NULL,'Ana','9999999F','MUJER','1995-02-10','Calle','Majadahonda',12,0,'23','28001','Madrid','Madrid');
/*!40000 ALTER TABLE `persona_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_no_ai`
--

DROP TABLE IF EXISTS `persona_no_ai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona_no_ai` (
  `idPersona` int NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `apodo` varchar(25) DEFAULT NULL,
  `nombre` varchar(45) NOT NULL,
  `dni` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_no_ai`
--

LOCK TABLES `persona_no_ai` WRITE;
/*!40000 ALTER TABLE `persona_no_ai` DISABLE KEYS */;
INSERT INTO `persona_no_ai` VALUES (1,'Perez','Paco','No tiene','indocumentado');
/*!40000 ALTER TABLE `persona_no_ai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `id_persona` int NOT NULL AUTO_INCREMENT,
  `p_apellidos` varchar(45) NOT NULL,
  `p_apodo` varchar(25) DEFAULT NULL,
  `p_nombre` varchar(45) NOT NULL,
  `p_dni` varchar(15) DEFAULT NULL,
  `p_sexo` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`id_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'Marcos',NULL,'Antonio','1234567M',NULL),(5,'Perez',NULL,'Juan','5654376T',NULL),(6,'Jimenez',NULL,'Juan','1928376S',NULL),(7,'De Marco',NULL,'Fernando','5634258A',NULL),(10,'Nueva','Huevito','Persona',NULL,NULL),(11,'Nuevo','Huevote','Persono',NULL,'MASC');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas_con_telefono`
--

DROP TABLE IF EXISTS `personas_con_telefono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas_con_telefono` (
  `idPersona` int NOT NULL AUTO_INCREMENT,
  `apellidos` varchar(45) NOT NULL,
  `apodo` varchar(25) DEFAULT NULL,
  `nombre` varchar(45) NOT NULL,
  `dni` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=1023 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas_con_telefono`
--

LOCK TABLES `personas_con_telefono` WRITE;
/*!40000 ALTER TABLE `personas_con_telefono` DISABLE KEYS */;
INSERT INTO `personas_con_telefono` VALUES (1020,'Lopez','Boby','Pablo','1234567A'),(1021,'Jimenez','Chapa','Alejandro','9876543D'),(1022,'Perez','Mateo','Mate','5656542N');
/*!40000 ALTER TABLE `personas_con_telefono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q_contactos`
--

DROP TABLE IF EXISTS `q_contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q_contactos` (
  `idcontactos` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `apodo` varchar(45) DEFAULT NULL,
  `tipo_via` varchar(45) DEFAULT NULL,
  `via` varchar(45) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `piso` int DEFAULT NULL,
  `puerta` varchar(45) DEFAULT NULL,
  `codigo_postal` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `provincia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcontactos`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q_contactos`
--

LOCK TABLES `q_contactos` WRITE;
/*!40000 ALTER TABLE `q_contactos` DISABLE KEYS */;
INSERT INTO `q_contactos` VALUES (4,'Kadeem','Lopez','Aliquam','Plaza','4524 Tellus Road',83,10,'C','57860','Lugo','Galicia'),(5,'Elton','Simon Ewing','aliquet','Plaza','239-2788 Tristique Avenue',17,3,'F','56884','Telde','Canarias'),(6,'Nehru','Bruce Macias','aliquet','Calle','8560 Cursus, Rd.',5,9,'C','59617','L Hospitalet de Llobregat','Cataluña'),(7,'Kieran','Malik Burke','amet','Plaza','Ap #474-2092 Quis Av.',26,2,'D','56270','Santa Cruz de Tenerife','Canarias'),(8,'Ulysses','Raymond Small','amet','Calle','Ap #971-8275 Eu, Rd.',32,4,'A','13093','Tarragona','Cataluña'),(9,'Kasper','Palmer Roberts','ante','Calle','Ap #444-7890 Nam St.',43,2,'D','8723','Gijon','Principado de Asturias'),(10,'Mannix','Wylie Duffy','augue','Avendia','881-4665 Pede. Street',52,6,'C','45179','Palencia','Castilla y Leon'),(11,'George','Xenos Villarreal','commodo','Plaza','837-9352 Nostra, Road',40,2,'B','73842','Zaragoza','Aragon'),(12,'Malcolm','Kyle Michael','commodo','Avendia','Ap #195-7361 Nulla St.',57,9,'C','47844','Murcia','Murcia'),(13,'Clinton','Porter Buck','congue','Avendia','7016 Consectetuer Rd.',49,0,'C','88213','Donosti','Pais Vasco'),(14,'Charles','Zeus Baird','consectetuer','Calle','991-1071 Urna, Av.',87,3,'F','32964','Torrejon de Ardoz','Comunidad de Madrid'),(15,'Alden','Valentine Lucas','Cras','Avendia','7327 Morbi Rd.',14,6,'A','24098','Getafe','Comunidad de Madrid'),(16,'Alden','Nissim Tate','Cum','Plaza','P.O. Box 164, 1054 Amet, St.',93,3,'B','50669','Telde','Canarias'),(17,'Dalton','Carson Marshall','cursus','Plaza','1808 Nisl. Av.',2,8,'D','29912','Ourense','Galicia'),(18,'Warren','Oren Buckner','cursus','Avendia','435-9032 Egestas St.',62,5,'C','2904','Fuenlabrada','Comunidad de Madrid'),(19,'Alfonso','Lewis Dickerson','diam','Plaza','Ap #752-8655 Tempor Avenue',14,4,'C','50215','Alacant','Comunidad Valenciana'),(20,'Theodore','Yasir Britt','dictum','Calle','5965 Gravida Av.',22,8,'F','96515','Mataro','Cataluña'),(21,'Blake','Dante Burks','dignissim','Plaza','Ap #436-7173 Non, Road',86,8,'B','91127','Valencia','Comunidad Valenciana'),(22,'Boris','Chandler Battle','dolor','Avendia','5702 Arcu Road',90,10,'B','84311','Elx','Comunidad Valenciana'),(23,'Magee','Baxter Fox','Duis','Avendia','Ap #994-7351 Aliquet Ave',42,0,'D','17733','Sabadell','Cataluña'),(24,'Dennis','Armand Blackwell','eget','Plaza','Ap #403-7822 Ornare, Street',88,2,'A','29113','Alcobendas','Comunidad de Madrid'),(25,'Colton','Yasir Cain','enim','Avendia','Ap #599-1761 Luctus Road',9,1,'B','42065','Palma de Mallorca','Islas Baleares'),(26,'Derek','Rigel Farley','enim','Avendia','P.O. Box 570, 7423 Pharetra. Rd.',72,5,'F','77814','Sabadell','Cataluña'),(27,'Hamilton','Duncan Kirby','enim','Calle','Ap #888-4255 Eu Rd.',76,6,'C','97796','Badalona','Cataluña'),(28,'Oren','Adam Sellers','erat','Calle','619-3008 Lorem Rd.',100,4,'D','25163','Torrevieja','Comunidad Valenciana'),(29,'Troy','Hilel Delacruz','eros','Calle','185-1850 Quis Road',14,4,'B','16845','Torrejon de Ardoz','Comunidad de Madrid'),(30,'Ferris','Jordan Schroeder','et','Calle','P.O. Box 788, 8567 Et St.',71,5,'B','33895','Parla','Comunidad de Madrid'),(31,'Emerson','Xenos Charles','eu','Plaza','184-5820 Turpis. Road',6,3,'B','81665','Alacant','Comunidad Valenciana'),(32,'Jared','Tanner Raymond','eu','Calle','397-5479 Nisl. Ave',23,7,'D','1984','Jaen','Andalucia'),(33,'Moses','Ezra Richards','eu','Plaza','651-1276 Euismod Street',58,9,'B','1221','Alcorcon','Comunidad de Madrid'),(35,'Deacon','Gavin Arnold','facilisis','Plaza','443-512 Id St.',77,4,'A','57593','Elx','Comunidad Valenciana'),(36,'Harding','Aladdin Burt','facilisis','Plaza','5911 Ut St.',64,9,'B','94957','Teruel','Aragon'),(37,'Hector','Emmanuel Sawyer','facilisis','Calle','Ap #915-4703 Auctor Rd.',72,2,'F','9626','Castello','Comunidad Valenciana'),(38,'Cyrus','Brent Velazquez','faucibus','Calle','Ap #108-8830 Libero. Street',60,4,'A','54920','Lugo','Galicia'),(39,'Ray','Bruno Hensley','felis.','Calle','P.O. Box 841, 7116 Diam Rd.',58,3,'C','97312','Elx','Comunidad Valenciana'),(40,'Phillip','Oren Fitzpatrick','fermentum','Calle','3331 Ut Avenue',71,5,'A','85992','Baracaldo','Pais Vasco'),(41,'Jeremy','Arsenio Wong','feugiat','Avendia','1892 Felis, Ave',86,7,'B','10219','Pamplona','Comunidad Foral de Navarra'),(42,'Keith','Basil Preston','Fusce','Calle','820-9639 Maecenas St.',89,0,'B','61028','Alacant','Comunidad Valenciana'),(43,'Otto','Mannix Wilson','habitant','Calle','566-4276 Dictum Rd.',37,6,'C','40794','Santa Coloma de Gramenet','Cataluña'),(44,'Arden','James Cooper','hymenaeos','Calle','8909 Consequat, Street',18,6,'F','73158','Barcelona','Cataluña'),(45,'Thomas','Justin Alexander','iaculis','Avendia','168-2069 Sed Road',85,1,'C','75862','Valencia','Comunidad Valenciana'),(46,'Melvin','Gavin Hampton','iaculis','Avendia','Ap #621-5405 Leo. Ave',57,4,'A','58033','Torrejon de Ardoz','Comunidad de Madrid'),(47,'Akeem','Ishmael Blackwell','id','Avendia','957-1867 Nunc. Rd.',12,1,'D','97922','Torrejon de Ardoz','Comunidad de Madrid'),(48,'Roth','Cairo Gay','in','Plaza','P.O. Box 540, 6461 Ante Avenue',77,8,'A','51791','Badalona','Cataluña'),(49,'Raja','Gavin Newton','interdum','Plaza','366-5035 In St.',16,10,'F','32000','Santa Coloma de Gramenet','Cataluña'),(50,'Elton','Guy Floyd','ipsum','Calle','814-3894 Dictum Avenue',53,7,'D','27672','Madrid','Comunidad de Madrid'),(51,'Jorge','Cardozo Jimenez','Jorgito','Avenida','Castellana',16,0,'','28100','Madrid','Comunidad de Madrid'),(52,'Cole','Travis Cantrell','lacus','Avendia','2468 Ridiculus Rd.',6,2,'B','52039','L Hospitalet de Llobregat','Cataluña'),(53,'Griffin','Murphy Nicholson','ligula','Avendia','P.O. Box 950, 3316 Molestie Rd.',11,9,'A','37626','Marbella','Andalucia'),(54,'Michael','Rudyard Leonard','ligula','Plaza','P.O. Box 730, 1041 Eu, Rd.',82,5,'C','76532','San Cristobal de la Laguna','Canarias'),(55,'Zephania','Hyatt Luna','lorem','Avendia','Ap #481-8961 Aliquam St.',35,5,'F','36757','Sabadell','Cataluña'),(56,'Brett','Trevor Shields','Maecenas','Avendia','4967 Fringilla Rd.',23,4,'B','6957','Palencia','Castilla y Leon'),(57,'Abdul','Burke Sharpe','magna','Avendia','P.O. Box 694, 6362 Cras St.',43,4,'B','85261','Valencia','Comunidad Valenciana'),(58,'Zephania','Ian Morin','magnis','Plaza','P.O. Box 763, 969 Commodo Rd.',98,8,'D','24849','Torrejon de Ardoz','Comunidad de Madrid'),(59,'Aladdin','Paul Warren','massa','Plaza','4256 Nam St.',44,3,'F','35872','Tarrasa','Cataluña'),(60,'Tad','Caesar Keller','mattis','Calle','P.O. Box 329, 1813 Magnis Street',20,7,'B','88320','Gasteiz','Pais Vasco'),(61,'Anthony','Quinn Calhoun','mauris','Plaza','2407 Condimentum. Street',42,4,'D','66852','Badalona','Cataluña'),(62,'Orson','Curran Walter','Mauris','Plaza','Ap #271-4041 Tellus Rd.',78,5,'A','45795','Alcobendas','Comunidad de Madrid'),(63,'Barry','Vance Parrish','mauris','Avendia','4564 Maecenas Rd.',72,8,'A','69733','Madrid','Comunidad de Madrid'),(64,'Cooper','Brock Townsend','molestie','Calle','482-9088 Nunc Street',93,5,'F','41572','Cartagena','Murcia'),(65,'Ciaran','Nissim Donovan','mollis','Plaza','P.O. Box 177, 9624 Libero Av.',11,6,'D','15412','Bilbo','Pais Vasco'),(66,'Hayes','Derek Burns','montes','Avendia','229-8427 Aliquam Rd.',13,6,'B','64699','Cadiz','Andalucia'),(67,'Kareem','Honorato Colon','montes','Avendia','Ap #712-5270 Aliquam Rd.',17,3,'C','88317','Tarrasa','Cataluña'),(68,'Reece','Jelani Freeman','mus.','Avendia','Ap #625-3796 Quisque St.',6,0,'D','26506','Baracaldo','Pais Vasco'),(69,'Cruz','Thane Hudson','neque','Calle','P.O. Box 688, 7201 Velit Ave',70,4,'A','84720','Almeria','Andalucia'),(70,'Dominic','Barrett Patrick','neque','Plaza','P.O. Box 892, 8473 Vitae Street',71,9,'C','46716','Badajoz','Extremadura'),(71,'Leonard','Orson Gray','neque','Plaza','9164 Mi St.',61,5,'F','83757','Pamplona','Comunidad Foral de Navarra'),(72,'Jamal','Steel Flynn','netus','Calle','P.O. Box 238, 9914 Habitant Rd.',8,10,'F','90395','Gijon','Principado de Asturias'),(73,'Vincent','Mufutau Mcintosh','non','Plaza','Ap #840-6612 Neque Avenue',48,9,'C','26106','Pamplona','Comunidad Foral de Navarra'),(74,'Elijah','Camden Sullivan','non','Calle','7327 Integer St.',77,0,'B','65747','Ciudad Real','Castilla - La Mancha'),(75,'Warren','Arsenio William','Nulla','Plaza','8595 Non, Avenue',80,3,'C','17514','Ciudad Real','Castilla - La Mancha'),(76,'Nasim','Edan Yates','nunc','Calle','Ap #625-559 Mauris. St.',39,5,'F','84271','Alacant','Comunidad Valenciana'),(77,'Tarik','Wallace Chen','nunc','Avendia','624-5961 Congue. St.',88,10,'D','94027','Parla','Comunidad de Madrid'),(78,'Salvador','Jonas Franks','orci','Plaza','P.O. Box 458, 6372 Sem St.',13,3,'A','17637','Getafe','Comunidad de Madrid'),(79,'Abdul','Perry Travis','ornare','Plaza','2629 Mollis Avenue',89,9,'B','13996','L Hospitalet de Llobregat','Cataluña'),(80,'Brandon','Jasper Hancock','Proin','Avendia','172-8569 Gravida Rd.',7,10,'C','35062','Ourense','Galicia'),(81,'Dexter','Lyle Atkinson','Proin','Avendia','4004 Vitae Rd.',62,3,'F','18188','Teruel','Aragon'),(82,'Berk','Hector Weber','quis','Calle','978-7004 Sociis Road',52,7,'C','53794','Murcia','Murcia'),(83,'Byron','Armand Stafford','Quisque','Avendia','1336 Mauris St.',48,10,'B','84578','Badalona','Cataluña'),(84,'Gabriel','Byron Bass','ridiculus','Plaza','P.O. Box 258, 1909 Nulla Av.',86,7,'F','94303','Caceres','Extremadura'),(85,'Elton','Oleg Bean','sapien','Avendia','620-6981 Nam Av.',95,10,'A','11607','Palma de Mallorca','Islas Baleares'),(86,'Simon','Brady Howard','scelerisque','Calle','Ap #961-1952 Mauris Road',26,2,'F','57170','Elx','Comunidad Valenciana'),(87,'Jacob','Aaron Bradford','sed','Plaza','8231 Ante Avenue',38,0,'B','89349','Palma de Mallorca','Islas Baleares'),(88,'Trevor','Sawyer Moses','sociis','Plaza','P.O. Box 852, 7819 Erat Rd.',14,6,'F','82510','Pamplona','Comunidad Foral de Navarra'),(89,'Driscoll','Jameson Christian','Suspendisse','Avendia','766-4147 Velit Road',15,8,'C','21237','Albacete','Castilla - La Mancha'),(90,'Tyrone','Solomon Grant','tellus','Plaza','8196 Dictum Rd.',18,1,'F','84478','Sevilla','Andalucia'),(91,'Ignatius','Amos Cooley','tellus','Avendia','P.O. Box 638, 7633 Amet, St.',44,3,'C','98822','Tarragona','Cataluña'),(92,'Trevor','Tad Solis','tellus','Plaza','Ap #847-442 Justo St.',18,10,'A','39962','Reus','Cataluña'),(93,'Acton','Owen Mcleod','tincidunt','Plaza','914-1381 Ullamcorper St.',3,1,'D','28051','Gijon','Principado de Asturias'),(94,'Marvin','Forrest Reyes','tincidunt','Avendia','1715 Morbi St.',64,2,'D','56402','Avila','Castilla y Leon'),(95,'Jorge','Ramirez','Toro Bravo','Calle','EspaÃ±a',368,3,'B','29400','Ronda','Malaga'),(96,'Carl','Hammett Branch','tristique','Plaza','P.O. Box 482, 409 Consequat Av.',63,9,'A','41104','Pamplona','Comunidad Foral de Navarra'),(97,'Connor','Mannix Torres','turpis','Calle','Ap #741-3708 Nunc St.',19,9,'A','86499','Las Palmas','Canarias'),(98,'Price','Elliott Sutton','ut','Avendia','P.O. Box 130, 2675 Eu, Ave',37,3,'F','61867','Cuenca','Castilla - La Mancha'),(99,'Howard','Vernon Hawkins','varius','Plaza','258 Ridiculus St.',97,10,'A','8241','Salamanca','Castilla y Leon'),(100,'Giacomo','Walker Hebert','vehicula','Plaza','659-8470 Ultricies Ave',62,6,'B','87999','Mataro','Cataluña'),(101,'Felix','Channing Howe','Vivamus','Plaza','7658 Ultricies St.',7,2,'F','47279','Gijon','Asturias'),(102,'Aladdin','Chase Banks','vulputate','Calle','Ap #792-8740 Vitae, Rd.',96,7,'D','30672','Parla','Comunidad de Madrid');
/*!40000 ALTER TABLE `q_contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q_correos`
--

DROP TABLE IF EXISTS `q_correos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q_correos` (
  `id_correo` int NOT NULL AUTO_INCREMENT,
  `id_contacto` int DEFAULT NULL,
  `correo` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_correo`),
  KEY `id_contacto_idx` (`id_contacto`),
  CONSTRAINT `id_contacto` FOREIGN KEY (`id_contacto`) REFERENCES `q_contactos` (`idcontactos`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q_correos`
--

LOCK TABLES `q_correos` WRITE;
/*!40000 ALTER TABLE `q_correos` DISABLE KEYS */;
INSERT INTO `q_correos` VALUES (7,5,'jorge.ramirez@gmail.com'),(8,6,'toro_bravo@gmail.com'),(9,7,'tristique.senectus@egestas.com'),(10,8,'nec.metus.facilisis@Integerid.ca'),(11,9,'urna.Ut@eulacus.com'),(12,10,'ut@Nullamfeugiatplacerat.com'),(13,11,'Donec.feugiat.metus@Suspendisse.com'),(14,12,'sed.est@ultrices.ca'),(15,13,'et@orci.org'),(16,13,'gravida.sagittis.Duis@nequepellentesquemassa.com'),(17,14,'egestas@ante.org'),(18,14,'dictum.mi@habitant.com'),(19,15,'In@NuncmaurisMorbi.net'),(20,15,'dictum@ac.net'),(21,16,'laoreet@aliquetmagnaa.edu'),(22,16,'vehicula.Pellentesque.tincidunt@magnaPhasellusdolor.co.uk'),(23,17,'lacinia.at.iaculis@sitamet.co.uk'),(24,18,'sit@Aliquam.co.uk'),(25,19,'Nunc@ac.com'),(26,19,'et.lacinia.vitae@Sedcongue.ca'),(27,20,'Nulla.interdum@nectempus.edu'),(28,21,'cursus.non@aliquetnec.edu'),(29,21,'augue.eu@Sednunc.edu'),(30,22,'condimentum.Donec@Loremipsumdolor.ca'),(31,22,'eget@estcongue.net'),(32,23,'urna.et@Pellentesquehabitantmorbi.edu'),(34,25,'Sed.et@Pellentesqueut.net'),(35,26,'nec.mauris.blandit@auctorveliteget.co.uk'),(36,27,'id@interdumlibero.co.uk'),(38,29,'Pellentesque.tincidunt@etnetuset.ca'),(39,30,'magna.Suspendisse.tristique@scelerisquedui.com'),(40,31,'ac@massa.net'),(41,32,'dictum.eu.placerat@at.net'),(42,33,'tincidunt@non.edu'),(44,35,'sem.vitae@in.org'),(46,37,'taciti.sociosqu.ad@at.ca'),(47,38,'convallis.ante.lectus@libero.co.uk'),(48,39,'adipiscing@lacus.ca'),(49,40,'Nunc@ac.com'),(51,42,'semper.pretium@dolor.ca'),(52,43,'laoreet@aliquetmagnaa.edu'),(53,44,'ipsum@consectetuermauris.ca'),(54,44,'eu.dolor.egestas@Suspendissecommodo.edu'),(55,45,'vitae.odio.sagittis@nonlaciniaat.com'),(56,46,'neque@quisturpis.ca'),(57,47,'Sed@loremut.net'),(58,47,'eu.elit@fringillaestMauris.net'),(59,48,'dolor.egestas@ipsum.co.uk'),(60,49,'eu.dolor.egestas@Suspendissecommodo.edu'),(61,50,'sit.amet@vitaealiquetnec.ca'),(62,51,'enim.nisl@MorbimetusVivamus.com'),(63,52,'Sed.nunc.est@elitelitfermentum.org'),(64,52,'nec.metus.facilisis@Integerid.ca'),(65,53,'porta.elit.a@Mauris.co.uk'),(66,54,'arcu@etcommodo.com'),(67,55,'Cras@arcuCurabitur.net'),(68,56,'Nulla.interdum@nectempus.edu'),(69,56,'natoque@Mauris.edu'),(70,57,'neque@quisturpis.ca'),(71,57,'lacus.Aliquam.rutrum@tempusloremfringilla.org'),(72,58,'Ut.sagittis.lobortis@fringilla.org'),(73,58,'at@dolor.org'),(74,59,'toro_bravo@gmail.com'),(75,59,'Vivamus@leoinlobortis.edu'),(76,60,'condimentum.Donec@Loremipsumdolor.ca'),(77,61,'id.blandit.at@enimnon.net'),(78,61,'metus.vitae@nec.co.uk'),(79,62,'In@NuncmaurisMorbi.net'),(80,63,'et.commodo.at@utpharetra.com'),(81,63,'adipiscing@lacus.ca'),(82,64,'pellentesque.Sed@nisiCumsociis.ca'),(83,65,'Pellentesque.tincidunt@etnetuset.ca'),(84,65,'faucibus.leo.in@Morbiaccumsanlaoreet.edu'),(85,66,'dui.Fusce@quis.co.uk'),(86,67,'eget.magna@feugiat.com'),(87,68,'velit.eget@mauris.net'),(88,69,'Vestibulum.ante.ipsum@estarcu.co.uk'),(89,70,'Proin.ultrices.Duis@eget.org'),(90,71,'Cras@ametnulla.net'),(91,72,'dictum.ultricies.ligula@lectusCum.ca'),(92,73,'adipiscing.lacus@urnaNullamlobortis.co.uk'),(93,74,'odio@pharetra.net'),(94,75,'natoque.penatibus.et@pede.edu'),(95,76,'eu.elit@fringillaestMauris.net'),(96,77,'libero.at@auctorMauris.co.uk'),(97,78,'augue.eu@Sednunc.edu'),(98,79,'nulla@lorem.ca'),(99,79,'arcu@etcommodo.com'),(100,80,'libero.at@auctorMauris.co.uk'),(101,80,'ac.metus.vitae@ornarefacilisiseget.ca'),(102,81,'Etiam.gravida@nectellus.org'),(103,82,'velit.eget@mauris.net'),(104,82,'Phasellus.dolor@liberolacusvarius.co.uk'),(105,83,'Suspendisse@tincidunt.ca'),(106,83,'vitae.odio.sagittis@nonlaciniaat.com'),(107,84,'Ut.tincidunt.vehicula@dictumplacerat.co.uk'),(108,85,'venenatis.a@amifringilla.com'),(109,86,'dapibus@egestas.co.uk'),(111,88,'Mauris.quis@Proinnon.co.uk'),(112,89,'conubia.nostra@consequatdolor.edu'),(113,90,'gravida.sagittis.Duis@nequepellentesquemassa.com'),(115,92,'dictum.mi@habitant.com'),(116,93,'Aliquam@liberoettristique.ca'),(117,93,'tincidunt@non.edu'),(118,94,'Nulla.semper@Nam.com'),(119,95,'pharetra.ut@orciDonecnibh.ca'),(120,96,'Mauris.quis@Proinnon.co.uk'),(121,96,'pharetra.felis.eget@dictumeueleifend.org'),(122,97,'in.aliquet.lobortis@pharetraQuisqueac.net'),(123,98,'metus.vitae@nec.co.uk'),(124,99,'Integer.urna@ProinultricesDuis.co.uk'),(125,100,'eleifend.vitae.erat@blanditmattisCras.ca'),(126,101,'neque@auctornon.net'),(127,102,'tincidunt@orci.net'),(128,102,'enim.consequat.purus@Sedetlibero.ca'),(130,87,'ullamcorper.Duis@pedemalesuadavel.org'),(133,4,'epelayo@suempresa.com'),(134,28,'tincidunt@orci.net'),(135,36,'Aenean.egestas@et.org'),(136,91,'quam.dignissim@eget.com'),(137,24,'urna@ornarefacilisis.co.uk');
/*!40000 ALTER TABLE `q_correos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q_telefonos`
--

DROP TABLE IF EXISTS `q_telefonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q_telefonos` (
  `id_telefono` int NOT NULL AUTO_INCREMENT,
  `id_contacto` int DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_telefono`),
  KEY `contactos_idx` (`id_contacto`),
  CONSTRAINT `contactos` FOREIGN KEY (`id_contacto`) REFERENCES `q_contactos` (`idcontactos`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q_telefonos`
--

LOCK TABLES `q_telefonos` WRITE;
/*!40000 ALTER TABLE `q_telefonos` DISABLE KEYS */;
INSERT INTO `q_telefonos` VALUES (9,5,'605240353'),(10,5,'606278042'),(11,6,'602828314'),(12,7,'604468766'),(13,8,'609911819'),(14,9,'608822357'),(15,9,'607321648'),(16,10,'608611984'),(17,10,'602868086'),(18,11,'602776336'),(19,11,'607003433'),(20,12,'606233210'),(21,12,'609229263'),(22,13,'604503826'),(23,13,'608656607'),(24,14,'609139285'),(26,14,'602537821'),(27,15,'608279215'),(28,16,'605336519'),(29,16,'600816364'),(30,17,'601554414'),(31,17,'602659752'),(32,18,'606135984'),(33,19,'603465717'),(34,19,'609984415'),(35,20,'608471748'),(36,20,'603744018'),(37,21,'600111235'),(38,22,'602225891'),(39,23,'600344325'),(40,23,'603562661'),(43,25,'609314064'),(44,25,'603548872'),(45,26,'609661983'),(46,26,'605915924'),(47,27,'601438217'),(50,29,'607238641'),(51,29,'605878501'),(52,29,'605265541'),(53,30,'606792595'),(54,30,'600444308'),(55,31,'601207912'),(56,31,'608835448'),(57,32,'602358405'),(58,32,'608526117'),(59,33,'600943910'),(63,35,'603635907'),(64,35,'602686512'),(67,37,'608632623'),(68,38,'606635452'),(69,38,'603688996'),(70,39,'607055797'),(71,39,'604299218'),(72,40,'609485586'),(73,40,'608313269'),(75,42,'605843574'),(76,42,'608367272'),(77,42,'607065533'),(78,43,'608141488'),(79,43,'604982025'),(80,44,'605199212'),(81,44,'601928527'),(82,45,'606710433'),(83,46,'607313789'),(84,46,'606397057'),(85,47,'605430502'),(86,47,'602755472'),(87,48,'606462868'),(88,48,'608556316'),(89,49,'607431662'),(90,49,'600020566'),(91,50,'605190656'),(92,50,'609140289'),(93,51,'604202135'),(94,51,'609415525'),(95,51,'606475065'),(96,52,'604885227'),(97,52,'605447923'),(98,53,'603700566'),(99,53,'604928293'),(100,54,'607885761'),(101,54,'601642331'),(102,54,'609535314'),(103,55,'601145639'),(104,55,'605689247'),(105,56,'609414659'),(106,56,'602955870'),(107,57,'602287533'),(108,57,'602138215'),(109,58,'606649256'),(110,58,'608368367'),(111,58,'602383463'),(112,59,'605093801'),(113,60,'600427598'),(114,60,'608825771'),(115,61,'601413453'),(116,61,'607700685'),(117,62,'608483063'),(118,62,'605962200'),(119,63,'600328464'),(120,63,'606413076'),(121,64,'605739383'),(122,64,'603394390'),(123,65,'601280903'),(124,66,'606702224'),(125,67,'605813957'),(126,67,'604143395'),(127,67,'606371304'),(128,68,'608592148'),(129,68,'608213628'),(130,69,'605372891'),(131,69,'604061527'),(132,70,'604060176'),(133,70,'604905766'),(134,71,'604873885'),(135,71,'608955145'),(136,72,'604019686'),(137,72,'600394541'),(138,73,'607530654'),(139,74,'601327804'),(140,74,'602011271'),(141,75,'603078930'),(142,75,'607813718'),(143,76,'609069380'),(144,76,'608370629'),(145,77,'604503789'),(146,78,'602882477'),(147,78,'608663151'),(148,79,'602456281'),(149,79,'603346214'),(150,80,'606208992'),(151,80,'604966869'),(152,81,'609960019'),(153,82,'608012191'),(154,82,'604158134'),(155,83,'609777446'),(156,84,'609960855'),(157,84,'600839705'),(158,85,'600054458'),(159,85,'600565564'),(160,86,'605263899'),(161,86,'602817252'),(163,88,'608084741'),(164,88,'609088030'),(165,89,'606667640'),(166,90,'604291174'),(167,90,'606550034'),(170,92,'601167912'),(171,92,'600738023'),(172,93,'606988799'),(173,93,'604416690'),(174,94,'608724159'),(175,94,'607155172'),(176,95,'608832399'),(177,95,'604903645'),(178,95,'600072626'),(179,96,'609316876'),(180,96,'605052709'),(181,97,'605943865'),(182,97,'601988815'),(183,97,'603975849'),(184,98,'604398162'),(185,98,'607116342'),(186,99,'601651202'),(187,99,'604903356'),(188,100,'608972074'),(189,100,'602327657'),(190,101,'602298622'),(191,101,'609403018'),(192,102,'606184189'),(193,102,'601336719'),(201,57,'607607607');
/*!40000 ALTER TABLE `q_telefonos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rectangulo_02`
--

DROP TABLE IF EXISTS `rectangulo_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rectangulo_02` (
  `idfigura` int NOT NULL,
  `l1` double DEFAULT NULL,
  `l2` double DEFAULT NULL,
  PRIMARY KEY (`idfigura`),
  CONSTRAINT `fk_rectangulo_figura` FOREIGN KEY (`idfigura`) REFERENCES `figuras02` (`idfigura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rectangulo_02`
--

LOCK TABLES `rectangulo_02` WRITE;
/*!40000 ALTER TABLE `rectangulo_02` DISABLE KEYS */;
INSERT INTO `rectangulo_02` VALUES (36,11,4.33),(38,7,9),(66,11,4.33),(68,14,5.5),(70,3.4,2),(71,11,4.33),(73,14,5.5),(75,3.4,2),(76,1,2),(77,3,4);
/*!40000 ALTER TABLE `rectangulo_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefonos`
--

DROP TABLE IF EXISTS `telefonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefonos` (
  `id_telefono` int NOT NULL AUTO_INCREMENT,
  `idcontacto` int DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_telefono`),
  KEY `contacto_idx` (`idcontacto`),
  CONSTRAINT `contacto` FOREIGN KEY (`idcontacto`) REFERENCES `contacto` (`idcontacto`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefonos`
--

LOCK TABLES `telefonos` WRITE;
/*!40000 ALTER TABLE `telefonos` DISABLE KEYS */;
INSERT INTO `telefonos` VALUES (1,2,'666123456'),(2,2,'678543123'),(3,2,'612345678'),(4,5,'698778964'),(5,10,'625496648'),(6,10,'611345987');
/*!40000 ALTER TABLE `telefonos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefonospersonas`
--

DROP TABLE IF EXISTS `telefonospersonas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefonospersonas` (
  `idTelefono` int NOT NULL AUTO_INCREMENT,
  `prefijoPais` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `idPersona` int NOT NULL,
  PRIMARY KEY (`idTelefono`),
  KEY `idPersona_idx` (`idPersona`),
  CONSTRAINT `idPersona` FOREIGN KEY (`idPersona`) REFERENCES `personas_con_telefono` (`idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefonospersonas`
--

LOCK TABLES `telefonospersonas` WRITE;
/*!40000 ALTER TABLE `telefonospersonas` DISABLE KEYS */;
INSERT INTO `telefonospersonas` VALUES (11,'34','607353801',1020),(12,'34','918307918',1020),(13,'34','666666666',1022),(14,'34','777777777',1022),(15,'34','620686789',1021);
/*!40000 ALTER TABLE `telefonospersonas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-30 12:10:21
CREATE DATABASE  IF NOT EXISTS `02_tienda` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `02_tienda`;
-- MySQL dump 10.13  Distrib 8.0.42, for macos15 (x86_64)
--
-- Host: 127.0.0.1    Database: 02_tienda
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `fabricantes`
--

DROP TABLE IF EXISTS `fabricantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fabricantes` (
  `id_fabricante` int NOT NULL AUTO_INCREMENT,
  `fabricante` varchar(45) NOT NULL,
  PRIMARY KEY (`id_fabricante`),
  UNIQUE KEY `fabricante` (`fabricante`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricantes`
--

LOCK TABLES `fabricantes` WRITE;
/*!40000 ALTER TABLE `fabricantes` DISABLE KEYS */;
INSERT INTO `fabricantes` VALUES (1,'Asus'),(6,'Crucial'),(7,'Gigabyte'),(3,'Hewlett-Packard'),(8,'Huawei'),(2,'Lenovo'),(4,'Samsung'),(5,'Seagate'),(9,'Xiaomi');
/*!40000 ALTER TABLE `fabricantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `producto` varchar(45) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `fk_fabricante` int NOT NULL,
  PRIMARY KEY (`id_producto`),
  UNIQUE KEY `producto` (`producto`),
  KEY `productos_fabricantes` (`fk_fabricante`),
  CONSTRAINT `productos_fabricantes` FOREIGN KEY (`fk_fabricante`) REFERENCES `fabricantes` (`id_fabricante`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Disco duro SATA3 1TB',86.99,5),(2,'Memoria RAM DDR4 8GB',120.00,6),(3,'Disco SSD 1 TB',150.99,4),(4,'GeForce GTX 1050Ti',185.00,7),(5,'GeForce GTX 1080 Xtreme',755.00,6),(6,'Monitor 24 LED Full HD',202.00,1),(7,'Monitor 27 LED Full HD',245.99,1),(8,'PortÃ¡til Yoga 520',559.00,2),(9,'PortÃ¡til Ideapd 320',444.00,2),(10,'Impresora HP Deskjet 3720',59.99,3),(11,'Impresora HP Laserjet Pro M26nw',180.00,3);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-30 12:10:21
CREATE DATABASE  IF NOT EXISTS `11_agenda` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `11_agenda`;
-- MySQL dump 10.13  Distrib 8.0.42, for macos15 (x86_64)
--
-- Host: 127.0.0.1    Database: 11_agenda
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactos` (
  `idcontactos` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `apodo` varchar(45) DEFAULT NULL,
  `tipo_via` varchar(45) DEFAULT NULL,
  `via` varchar(45) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `piso` int DEFAULT NULL,
  `puerta` varchar(45) DEFAULT NULL,
  `codigo_postal` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `provincia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcontactos`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
INSERT INTO `contactos` VALUES (4,'Kadeem','Lopez','Aliquam','Plaza','4524 Tellus Road',83,10,'C','57860','Lugo','Galicia'),(5,'Elton','Simon Ewing','aliquet','Plaza','239-2788 Tristique Avenue',17,3,'F','56884','Telde','Canarias'),(6,'Nehru','Bruce Macias','aliquet','Calle','8560 Cursus, Rd.',5,9,'C','59617','L Hospitalet de Llobregat','Cataluña'),(7,'Kieran','Malik Burke','amet','Plaza','Ap #474-2092 Quis Av.',26,2,'D','56270','Santa Cruz de Tenerife','Canarias'),(9,'Kasper','Palmer Roberts','ante','Calle','Ap #444-7890 Nam St.',43,2,'D','8723','Gijon','Principado de Asturias'),(10,'Mannix','Wylie Duffy','augue','Avendia','881-4665 Pede. Street',52,6,'C','45179','Palencia','Castilla y Leon'),(11,'George','Xenos Villarreal','commodo','Plaza','837-9352 Nostra, Road',40,2,'B','73842','Zaragoza','Aragon'),(12,'Malcolm','Kyle Michael','commodo','Avendia','Ap #195-7361 Nulla St.',57,9,'C','47844','Murcia','Murcia'),(13,'Clinton','Porter Buck','congue','Avendia','7016 Consectetuer Rd.',49,0,'C','88213','Donosti','Pais Vasco'),(14,'Charles','Zeus Baird','consectetuer','Calle','991-1071 Urna, Av.',87,3,'F','32964','Torrejon de Ardoz','Comunidad de Madrid'),(15,'Alden','Valentine Lucas','Cras','Avendia','7327 Morbi Rd.',14,6,'A','24098','Getafe','Comunidad de Madrid'),(16,'Alden','Nissim Tate','Cum','Plaza','P.O. Box 164, 1054 Amet, St.',93,3,'B','50669','Telde','Canarias'),(17,'Dalton','Carson Marshall','cursus','Plaza','1808 Nisl. Av.',2,8,'D','29912','Ourense','Galicia'),(18,'Warren','Oren Buckner','cursus','Avendia','435-9032 Egestas St.',62,5,'C','2904','Fuenlabrada','Comunidad de Madrid'),(19,'Alfonso','Lewis Dickerson','diam','Plaza','Ap #752-8655 Tempor Avenue',14,4,'C','50215','Alacant','Comunidad Valenciana'),(20,'Theodore','Yasir Britt','dictum','Calle','5965 Gravida Av.',22,8,'F','96515','Mataro','Cataluña'),(22,'Boris','Chandler Battle','dolor','Avendia','5702 Arcu Road',90,10,'B','84311','Elx','Comunidad Valenciana'),(23,'Magee','Baxter Fox','Duis','Avendia','Ap #994-7351 Aliquet Ave',42,0,'D','17733','Sabadell','Cataluña'),(24,'Dennis','Armand Blackwell','eget','Plaza','Ap #403-7822 Ornare, Street',88,2,'A','29113','Alcobendas','Comunidad de Madrid'),(25,'Colton','Yasir Cain','enim','Avendia','Ap #599-1761 Luctus Road',9,1,'B','42065','Palma de Mallorca','Islas Baleares'),(26,'Derek','Rigel Farley','enim','Avendia','P.O. Box 570, 7423 Pharetra. Rd.',72,5,'F','77814','Sabadell','Cataluña'),(27,'Hamilton','Duncan Kirby','enim','Calle','Ap #888-4255 Eu Rd.',76,6,'C','97796','Badalona','Cataluña'),(28,'Oren','Adam Sellers','erat','Calle','619-3008 Lorem Rd.',100,4,'D','25163','Torrevieja','Comunidad Valenciana'),(29,'Troy','Hilel Delacruz','eros','Calle','185-1850 Quis Road',14,4,'B','16845','Torrejon de Ardoz','Comunidad de Madrid'),(30,'Ferris','Jordan Schroeder','et','Calle','P.O. Box 788, 8567 Et St.',71,5,'B','33895','Parla','Comunidad de Madrid'),(31,'Emerson','Xenos Charles','eu','Plaza','184-5820 Turpis. Road',6,3,'B','81665','Alacant','Comunidad Valenciana'),(32,'Jared','Tanner Raymond','eu','Calle','397-5479 Nisl. Ave',23,7,'D','1984','Jaen','Andalucia'),(33,'Moses','Ezra Richards','eu','Plaza','651-1276 Euismod Street',58,9,'B','1221','Alcorcon','Comunidad de Madrid'),(35,'Deacon','Gavin Arnold','facilisis','Plaza','443-512 Id St.',77,4,'A','57593','Elx','Comunidad Valenciana'),(36,'Harding','Aladdin Burt','facilisis','Plaza','5911 Ut St.',64,9,'B','94957','Teruel','Aragon'),(37,'Hector','Emmanuel Sawyer','facilisis','Calle','Ap #915-4703 Auctor Rd.',72,2,'F','9626','Castello','Comunidad Valenciana'),(38,'Cyrus','Brent Velazquez','faucibus','Calle','Ap #108-8830 Libero. Street',60,4,'A','54920','Lugo','Galicia'),(39,'Ray','Bruno Hensley','felis.','Calle','P.O. Box 841, 7116 Diam Rd.',58,3,'C','97312','Elx','Comunidad Valenciana'),(40,'Phillip','Oren Fitzpatrick','fermentum','Calle','3331 Ut Avenue',71,5,'A','85992','Baracaldo','Pais Vasco'),(41,'Jeremy','Arsenio Wong','feugiat','Avendia','1892 Felis, Ave',86,7,'B','10219','Pamplona','Comunidad Foral de Navarra'),(42,'Keith','Basil Preston','Fusce','Calle','820-9639 Maecenas St.',89,0,'B','61028','Alacant','Comunidad Valenciana'),(43,'Otto','Mannix Wilson','habitant','Calle','566-4276 Dictum Rd.',37,6,'C','40794','Santa Coloma de Gramenet','Cataluña'),(44,'Arden','James Cooper','hymenaeos','Calle','8909 Consequat, Street',18,6,'F','73158','Barcelona','Cataluña'),(45,'Thomas','Justin Alexander','iaculis','Avendia','168-2069 Sed Road',85,1,'C','75862','Valencia','Comunidad Valenciana'),(46,'Melvin','Gavin Hampton','iaculis','Avendia','Ap #621-5405 Leo. Ave',57,4,'A','58033','Torrejon de Ardoz','Comunidad de Madrid'),(47,'Akeem','Ishmael Blackwell','id','Avendia','957-1867 Nunc. Rd.',12,1,'D','97922','Torrejon de Ardoz','Comunidad de Madrid'),(48,'Roth','Cairo Gay','in','Plaza','P.O. Box 540, 6461 Ante Avenue',77,8,'A','51791','Badalona','Cataluña'),(49,'Raja','Gavin Newton','interdum','Plaza','366-5035 In St.',16,10,'F','32000','Santa Coloma de Gramenet','Cataluña'),(50,'Elton','Guy Floyd','ipsum','Calle','814-3894 Dictum Avenue',53,7,'D','27672','Madrid','Comunidad de Madrid'),(51,'Jorge','Cardozo Jimenez','Jorgito','Avenida','Castellana',16,0,'','28100','Madrid','Comunidad de Madrid'),(53,'Griffin','Murphy Nicholson','ligula','Avendia','P.O. Box 950, 3316 Molestie Rd.',11,9,'A','37626','Marbella','Andalucia'),(54,'Michael','Rudyard Leonard','ligula','Plaza','P.O. Box 730, 1041 Eu, Rd.',82,5,'C','76532','San Cristobal de la Laguna','Canarias'),(55,'Zephania','Hyatt Luna','lorem','Avendia','Ap #481-8961 Aliquam St.',35,5,'F','36757','Sabadell','Cataluña'),(56,'Brett','Trevor Shields','Maecenas','Avendia','4967 Fringilla Rd.',23,4,'B','6957','Palencia','Castilla y Leon'),(57,'Abdul','Burke Sharpe','magna','Avendia','P.O. Box 694, 6362 Cras St.',43,4,'B','85261','Valencia','Comunidad Valenciana'),(58,'Zephania','Ian Morin','magnis','Plaza','P.O. Box 763, 969 Commodo Rd.',98,8,'D','24849','Torrejon de Ardoz','Comunidad de Madrid'),(59,'Aladdin','Paul Warren','massa','Plaza','4256 Nam St.',44,3,'F','35872','Tarrasa','Cataluña'),(60,'Tad','Caesar Keller','mattis','Calle','P.O. Box 329, 1813 Magnis Street',20,7,'B','88320','Gasteiz','Pais Vasco'),(61,'Anthony','Quinn Calhoun','mauris','Plaza','2407 Condimentum. Street',42,4,'D','66852','Badalona','Cataluña'),(62,'Orson','Curran Walter','Mauris','Plaza','Ap #271-4041 Tellus Rd.',78,5,'A','45795','Alcobendas','Comunidad de Madrid'),(63,'Barry','Vance Parrish','mauris','Avendia','4564 Maecenas Rd.',72,8,'A','69733','Madrid','Comunidad de Madrid'),(64,'Cooper','Brock Townsend','molestie','Calle','482-9088 Nunc Street',93,5,'F','41572','Cartagena','Murcia'),(65,'Ciaran','Nissim Donovan','mollis','Plaza','P.O. Box 177, 9624 Libero Av.',11,6,'D','15412','Bilbo','Pais Vasco'),(66,'Hayes','Derek Burns','montes','Avendia','229-8427 Aliquam Rd.',13,6,'B','64699','Cadiz','Andalucia'),(67,'Kareem','Honorato Colon','montes','Avendia','Ap #712-5270 Aliquam Rd.',17,3,'C','88317','Tarrasa','Cataluña'),(68,'Reece','Jelani Freeman','mus.','Avendia','Ap #625-3796 Quisque St.',6,0,'D','26506','Baracaldo','Pais Vasco'),(70,'Dominic','Barrett Patrick','neque','Plaza','P.O. Box 892, 8473 Vitae Street',71,9,'C','46716','Badajoz','Extremadura'),(71,'Leonard','Orson Gray','neque','Plaza','9164 Mi St.',61,5,'F','83757','Pamplona','Comunidad Foral de Navarra'),(72,'Jamal','Steel Flynn','netus','Calle','P.O. Box 238, 9914 Habitant Rd.',8,10,'F','90395','Gijon','Principado de Asturias'),(73,'Vincent','Mufutau Mcintosh','non','Plaza','Ap #840-6612 Neque Avenue',48,9,'C','26106','Pamplona','Comunidad Foral de Navarra'),(74,'Elijah','Camden Sullivan','non','Calle','7327 Integer St.',77,0,'B','65747','Ciudad Real','Castilla - La Mancha'),(75,'Warren','Arsenio William','Nulla','Plaza','8595 Non, Avenue',80,3,'C','17514','Ciudad Real','Castilla - La Mancha'),(76,'Nasim','Edan Yates','nunc','Calle','Ap #625-559 Mauris. St.',39,5,'F','84271','Alacant','Comunidad Valenciana'),(77,'Tarik','Wallace Chen','nunc','Avendia','624-5961 Congue. St.',88,10,'D','94027','Parla','Comunidad de Madrid'),(78,'Salvador','Jonas Franks','orci','Plaza','P.O. Box 458, 6372 Sem St.',13,3,'A','17637','Getafe','Comunidad de Madrid'),(79,'Abdul','Perry Travis','ornare','Plaza','2629 Mollis Avenue',89,9,'B','13996','L Hospitalet de Llobregat','Cataluña'),(80,'Brandon','Jasper Hancock','Proin','Avendia','172-8569 Gravida Rd.',7,10,'C','35062','Ourense','Galicia'),(81,'Dexter','Lyle Atkinson','Proin','Avendia','4004 Vitae Rd.',62,3,'F','18188','Teruel','Aragon'),(82,'Berk','Hector Weber','quis','Calle','978-7004 Sociis Road',52,7,'C','53794','Murcia','Murcia'),(83,'Byron','Armand Stafford','Quisque','Avendia','1336 Mauris St.',48,10,'B','84578','Badalona','Cataluña'),(84,'Gabriel','Byron Bass','ridiculus','Plaza','P.O. Box 258, 1909 Nulla Av.',86,7,'F','94303','Caceres','Extremadura'),(85,'Elton','Oleg Bean','sapien','Avendia','620-6981 Nam Av.',95,10,'A','11607','Palma de Mallorca','Islas Baleares'),(86,'Simon','Brady Howard','scelerisque','Calle','Ap #961-1952 Mauris Road',26,2,'F','57170','Elx','Comunidad Valenciana'),(87,'Jacob','Aaron Bradford','sed','Plaza','8231 Ante Avenue',38,0,'B','89349','Palma de Mallorca','Islas Baleares'),(88,'Trevor','Sawyer Moses','sociis','Plaza','P.O. Box 852, 7819 Erat Rd.',14,6,'F','82510','Pamplona','Comunidad Foral de Navarra'),(89,'Driscoll','Jameson Christian','Suspendisse','Avendia','766-4147 Velit Road',15,8,'C','21237','Albacete','Castilla - La Mancha'),(90,'Tyrone','Solomon Grant','tellus','Plaza','8196 Dictum Rd.',18,1,'F','84478','Sevilla','Andalucia'),(91,'Ignatius','Amos Cooley','tellus','Avendia','P.O. Box 638, 7633 Amet, St.',44,3,'C','98822','Tarragona','Cataluña'),(92,'Trevor','Tad Solis','tellus','Plaza','Ap #847-442 Justo St.',18,10,'A','39962','Reus','Cataluña'),(93,'Acton','Owen Mcleod','tincidunt','Plaza','914-1381 Ullamcorper St.',3,1,'D','28051','Gijon','Principado de Asturias'),(94,'Marvin','Forrest Reyes','tincidunt','Avendia','1715 Morbi St.',64,2,'D','56402','Avila','Castilla y Leon'),(95,'Jorge','Ramirez','Toro Bravo','Calle','EspaÃ±a',368,3,'B','29400','Ronda','Malaga'),(96,'Carl','Hammett Branch','tristique','Plaza','P.O. Box 482, 409 Consequat Av.',63,9,'A','41104','Pamplona','Comunidad Foral de Navarra'),(97,'Connor','Mannix Torres','turpis','Calle','Ap #741-3708 Nunc St.',19,9,'A','86499','Las Palmas','Canarias'),(98,'Price','Elliott Sutton','ut','Avendia','P.O. Box 130, 2675 Eu, Ave',37,3,'F','61867','Cuenca','Castilla - La Mancha'),(99,'Howard','Vernon Hawkins','varius','Plaza','258 Ridiculus St.',97,10,'A','8241','Salamanca','Castilla y Leon'),(100,'Giacomo','Walker Hebert','vehicula','Plaza','659-8470 Ultricies Ave',62,6,'B','87999','Mataro','Cataluña'),(101,'Felix','Channing Howe','Vivamus','Plaza','7658 Ultricies St.',7,2,'F','47279','Gijon','Asturias'),(102,'Aladdin','Chase Banks','vulputate','Calle','Ap #792-8740 Vitae, Rd.',96,7,'D','30672','Parla','Comunidad de Madrid'),(121,'Claudio','Lopez','Boby','calle','Salta',1755,1,'B','2000','Rosario','Santa Fe'),(123,'Manuel','Carrasco','Chicharrillas',NULL,NULL,0,0,NULL,NULL,NULL,NULL),(124,'Pedro','Picapiedra','Pedrito',NULL,NULL,0,0,NULL,NULL,NULL,NULL),(125,'Benito','Camela','Graciosillo',NULL,NULL,0,0,NULL,NULL,NULL,NULL),(126,'Leo','Poco','Zote',NULL,NULL,0,0,NULL,NULL,NULL,NULL),(127,'Elton','Tin','Avispao','urbanizacion','una cualquiera',1,0,'1','12345','Cualquiera','otra');
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correos`
--

DROP TABLE IF EXISTS `correos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `correos` (
  `id_correo` int NOT NULL AUTO_INCREMENT,
  `fk_contacto` int DEFAULT NULL,
  `correo` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_correo`),
  KEY `id_contacto_idx` (`fk_contacto`),
  CONSTRAINT `id_contacto` FOREIGN KEY (`fk_contacto`) REFERENCES `contactos` (`idcontactos`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correos`
--

LOCK TABLES `correos` WRITE;
/*!40000 ALTER TABLE `correos` DISABLE KEYS */;
INSERT INTO `correos` VALUES (7,5,'jorge.ramirez@gmail.com'),(8,6,'toro_bravo@gmail.com'),(9,7,'tristique.senectus@egestas.com'),(11,9,'urna.Ut@eulacus.com'),(12,10,'ut@Nullamfeugiatplacerat.com'),(13,11,'Donec.feugiat.metus@Suspendisse.com'),(14,12,'sed.est@ultrices.ca'),(15,13,'et@orci.org'),(16,13,'gravida.sagittis.Duis@nequepellentesquemassa.com'),(17,14,'egestas@ante.org'),(18,14,'dictum.mi@habitant.com'),(19,15,'In@NuncmaurisMorbi.net'),(20,15,'dictum@ac.net'),(21,16,'laoreet@aliquetmagnaa.edu'),(22,16,'vehicula.Pellentesque.tincidunt@magnaPhasellusdolor.co.uk'),(23,17,'lacinia.at.iaculis@sitamet.co.uk'),(24,18,'sit@Aliquam.co.uk'),(25,19,'Nunc@ac.com'),(26,19,'et.lacinia.vitae@Sedcongue.ca'),(27,20,'Nulla.interdum@nectempus.edu'),(30,22,'condimentum.Donec@Loremipsumdolor.ca'),(31,22,'eget@estcongue.net'),(32,23,'urna.et@Pellentesquehabitantmorbi.edu'),(34,25,'Sed.et@Pellentesqueut.net'),(35,26,'nec.mauris.blandit@auctorveliteget.co.uk'),(36,27,'id@interdumlibero.co.uk'),(38,29,'Pellentesque.tincidunt@etnetuset.ca'),(39,30,'magna.Suspendisse.tristique@scelerisquedui.com'),(40,31,'ac@massa.net'),(41,32,'dictum.eu.placerat@at.net'),(42,33,'tincidunt@non.edu'),(44,35,'sem.vitae@in.org'),(46,37,'taciti.sociosqu.ad@at.ca'),(47,38,'convallis.ante.lectus@libero.co.uk'),(48,39,'adipiscing@lacus.ca'),(49,40,'Nunc@ac.com'),(51,42,'semper.pretium@dolor.ca'),(52,43,'laoreet@aliquetmagnaa.edu'),(53,44,'ipsum@consectetuermauris.ca'),(54,44,'eu.dolor.egestas@Suspendissecommodo.edu'),(55,45,'vitae.odio.sagittis@nonlaciniaat.com'),(56,46,'neque@quisturpis.ca'),(57,47,'Sed@loremut.net'),(58,47,'eu.elit@fringillaestMauris.net'),(59,48,'dolor.egestas@ipsum.co.uk'),(60,49,'eu.dolor.egestas@Suspendissecommodo.edu'),(61,50,'sit.amet@vitaealiquetnec.ca'),(62,51,'enim.nisl@MorbimetusVivamus.com'),(65,53,'porta.elit.a@Mauris.co.uk'),(66,54,'arcu@etcommodo.com'),(67,55,'Cras@arcuCurabitur.net'),(68,56,'Nulla.interdum@nectempus.edu'),(69,56,'natoque@Mauris.edu'),(70,57,'neque@quisturpis.ca'),(71,57,'lacus.Aliquam.rutrum@tempusloremfringilla.org'),(72,58,'Ut.sagittis.lobortis@fringilla.org'),(73,58,'at@dolor.org'),(74,59,'toro_bravo@gmail.com'),(75,59,'Vivamus@leoinlobortis.edu'),(76,60,'condimentum.Donec@Loremipsumdolor.ca'),(77,61,'id.blandit.at@enimnon.net'),(78,61,'metus.vitae@nec.co.uk'),(79,62,'In@NuncmaurisMorbi.net'),(80,63,'et.commodo.at@utpharetra.com'),(81,63,'adipiscing@lacus.ca'),(82,64,'pellentesque.Sed@nisiCumsociis.ca'),(83,65,'Pellentesque.tincidunt@etnetuset.ca'),(84,65,'faucibus.leo.in@Morbiaccumsanlaoreet.edu'),(85,66,'dui.Fusce@quis.co.uk'),(86,67,'eget.magna@feugiat.com'),(87,68,'velit.eget@mauris.net'),(89,70,'Proin.ultrices.Duis@eget.org'),(90,71,'Cras@ametnulla.net'),(91,72,'dictum.ultricies.ligula@lectusCum.ca'),(92,73,'adipiscing.lacus@urnaNullamlobortis.co.uk'),(93,74,'odio@pharetra.net'),(94,75,'natoque.penatibus.et@pede.edu'),(95,76,'eu.elit@fringillaestMauris.net'),(96,77,'libero.at@auctorMauris.co.uk'),(97,78,'augue.eu@Sednunc.edu'),(98,79,'nulla@lorem.ca'),(99,79,'arcu@etcommodo.com'),(100,80,'libero.at@auctorMauris.co.uk'),(101,80,'ac.metus.vitae@ornarefacilisiseget.ca'),(102,81,'Etiam.gravida@nectellus.org'),(103,82,'velit.eget@mauris.net'),(104,82,'Phasellus.dolor@liberolacusvarius.co.uk'),(105,83,'Suspendisse@tincidunt.ca'),(106,83,'vitae.odio.sagittis@nonlaciniaat.com'),(107,84,'Ut.tincidunt.vehicula@dictumplacerat.co.uk'),(108,85,'venenatis.a@amifringilla.com'),(109,86,'dapibus@egestas.co.uk'),(111,88,'Mauris.quis@Proinnon.co.uk'),(112,89,'conubia.nostra@consequatdolor.edu'),(113,90,'gravida.sagittis.Duis@nequepellentesquemassa.com'),(115,92,'dictum.mi@habitant.com'),(116,93,'Aliquam@liberoettristique.ca'),(117,93,'tincidunt@non.edu'),(118,94,'Nulla.semper@Nam.com'),(119,95,'pharetra.ut@orciDonecnibh.ca'),(120,96,'Mauris.quis@Proinnon.co.uk'),(121,96,'pharetra.felis.eget@dictumeueleifend.org'),(122,97,'in.aliquet.lobortis@pharetraQuisqueac.net'),(123,98,'metus.vitae@nec.co.uk'),(124,99,'Integer.urna@ProinultricesDuis.co.uk'),(126,101,'neque@auctornon.net'),(127,102,'tincidunt@orci.net'),(128,102,'enim.consequat.purus@Sedetlibero.ca'),(130,87,'ullamcorper.Duis@pedemalesuadavel.org'),(133,4,'epelayo@suempresa.com'),(134,28,'tincidunt@orci.net'),(135,36,'Aenean.egestas@et.org'),(136,91,'quam.dignissim@eget.com'),(137,24,'urna@ornarefacilisis.co.uk'),(149,100,'eleifend.vitae.erat@blanditmattisCras.ca'),(150,100,'plopezgrieco@gmail.com'),(151,100,'nuevo@gmail.com'),(152,127,'correo@correo.es');
/*!40000 ALTER TABLE `correos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefonos`
--

DROP TABLE IF EXISTS `telefonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefonos` (
  `id_telefono` int NOT NULL AUTO_INCREMENT,
  `fk_contacto` int DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_telefono`),
  KEY `contactos_idx` (`fk_contacto`),
  CONSTRAINT `contactos` FOREIGN KEY (`fk_contacto`) REFERENCES `contactos` (`idcontactos`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefonos`
--

LOCK TABLES `telefonos` WRITE;
/*!40000 ALTER TABLE `telefonos` DISABLE KEYS */;
INSERT INTO `telefonos` VALUES (9,5,'605240353'),(10,5,'606278042'),(11,6,'602828314'),(12,7,'604468766'),(14,9,'608822357'),(15,9,'607321648'),(16,10,'608611984'),(17,10,'602868086'),(18,11,'602776336'),(19,11,'607003433'),(20,12,'606233210'),(21,12,'609229263'),(22,13,'604503826'),(23,13,'608656607'),(24,14,'609139285'),(26,14,'602537821'),(27,15,'608279215'),(28,16,'605336519'),(29,16,'600816364'),(30,17,'601554414'),(31,17,'602659752'),(32,18,'606135984'),(33,19,'603465717'),(34,19,'609984415'),(35,20,'608471748'),(36,20,'603744018'),(38,22,'602225891'),(39,23,'600344325'),(40,23,'603562661'),(43,25,'609314064'),(44,25,'603548872'),(45,26,'609661983'),(46,26,'605915924'),(47,27,'601438217'),(50,29,'607238641'),(51,29,'605878501'),(52,29,'605265541'),(53,30,'606792595'),(54,30,'600444308'),(55,31,'601207912'),(56,31,'608835448'),(57,32,'602358405'),(58,32,'608526117'),(59,33,'600943910'),(63,35,'603635907'),(64,35,'602686512'),(67,37,'608632623'),(68,38,'606635452'),(69,38,'603688996'),(70,39,'607055797'),(71,39,'604299218'),(72,40,'609485586'),(73,40,'608313269'),(75,42,'605843574'),(76,42,'608367272'),(77,42,'607065533'),(78,43,'608141488'),(79,43,'604982025'),(80,44,'605199212'),(81,44,'601928527'),(82,45,'606710433'),(83,46,'607313789'),(84,46,'606397057'),(85,47,'605430502'),(86,47,'602755472'),(87,48,'606462868'),(88,48,'608556316'),(89,49,'607431662'),(90,49,'600020566'),(91,50,'605190656'),(92,50,'609140289'),(93,51,'604202135'),(94,51,'609415525'),(95,51,'606475065'),(98,53,'603700566'),(99,53,'604928293'),(100,54,'607885761'),(101,54,'601642331'),(102,54,'609535314'),(103,55,'601145639'),(104,55,'605689247'),(105,56,'609414659'),(106,56,'602955870'),(107,57,'602287533'),(108,57,'602138215'),(109,58,'606649256'),(110,58,'608368367'),(111,58,'602383463'),(112,59,'605093801'),(113,60,'600427598'),(114,60,'608825771'),(115,61,'601413453'),(116,61,'607700685'),(117,62,'608483063'),(118,62,'605962200'),(119,63,'600328464'),(120,63,'606413076'),(121,64,'605739383'),(122,64,'603394390'),(123,65,'601280903'),(124,66,'606702224'),(125,67,'605813957'),(126,67,'604143395'),(127,67,'606371304'),(128,68,'608592148'),(129,68,'608213628'),(132,70,'604060176'),(133,70,'604905766'),(134,71,'604873885'),(135,71,'608955145'),(136,72,'604019686'),(137,72,'600394541'),(138,73,'607530654'),(139,74,'601327804'),(140,74,'602011271'),(141,75,'603078930'),(142,75,'607813718'),(143,76,'609069380'),(144,76,'608370629'),(145,77,'604503789'),(146,78,'602882477'),(147,78,'608663151'),(148,79,'602456281'),(149,79,'603346214'),(150,80,'606208992'),(151,80,'604966869'),(152,81,'609960019'),(153,82,'608012191'),(154,82,'604158134'),(155,83,'609777446'),(156,84,'609960855'),(157,84,'600839705'),(158,85,'600054458'),(159,85,'600565564'),(160,86,'605263899'),(161,86,'602817252'),(163,88,'608084741'),(164,88,'609088030'),(165,89,'606667640'),(166,90,'604291174'),(167,90,'606550034'),(170,92,'601167912'),(171,92,'600738023'),(172,93,'606988799'),(173,93,'604416690'),(174,94,'608724159'),(175,94,'607155172'),(176,95,'608832399'),(177,95,'604903645'),(178,95,'600072626'),(179,96,'609316876'),(180,96,'605052709'),(181,97,'605943865'),(182,97,'601988815'),(183,97,'603975849'),(184,98,'604398162'),(185,98,'607116342'),(186,99,'601651202'),(187,99,'604903356'),(188,100,'608972074'),(189,100,'602327657'),(190,101,'602298622'),(191,101,'609403018'),(192,102,'606184189'),(193,102,'601336719'),(201,57,'607607607'),(202,100,'12345678'),(203,123,'603423887'),(204,123,'243563098'),(205,124,'123456789'),(206,124,'987654321'),(207,125,'123456789'),(208,125,'987654321'),(209,126,''),(210,127,'123456789'),(211,127,'987654321');
/*!40000 ALTER TABLE `telefonos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-30 12:10:21
CREATE DATABASE  IF NOT EXISTS `13_ejercicio_jpa` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `13_ejercicio_jpa`;
-- MySQL dump 10.13  Distrib 8.0.42, for macos15 (x86_64)
--
-- Host: 127.0.0.1    Database: 13_ejercicio_jpa
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(255) DEFAULT NULL,
  `salarioConvenio` double NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'ADMINISTRATIVO',1035.5),(2,'JEFE SERVICIO',2000),(3,'ADMINISTRATIVO',1035.5),(4,'ADMINISTRATIVO',1035.5);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `categoria` varchar(255) DEFAULT NULL,
  `nroCliente` int NOT NULL,
  `idRol` int NOT NULL,
  PRIMARY KEY (`idRol`),
  CONSTRAINT `FK_d6ch4icoq4kp9alhj8ckj3mko` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('ESPORADICO',135,1),('VIP',12,4),('GRAN EMPRESA',135,6),('VIP',12,9),('ESPORADICO',135,12),('VIP',12,15),('ESPORADICO',135,17),('VIP',12,20);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes_productos`
--

DROP TABLE IF EXISTS `clientes_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes_productos` (
  `idrol` int NOT NULL,
  `idProducto` int NOT NULL,
  KEY `FK_fo288cseoqwqdivy6n0h0n9qa` (`idrol`),
  KEY `FL_cliprod_productos` (`idProducto`),
  CONSTRAINT `FK_fo288cseoqwqdivy6n0h0n9qa` FOREIGN KEY (`idrol`) REFERENCES `clientes` (`idRol`),
  CONSTRAINT `FL_cliprod_productos` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_productos`
--

LOCK TABLES `clientes_productos` WRITE;
/*!40000 ALTER TABLE `clientes_productos` DISABLE KEYS */;
INSERT INTO `clientes_productos` VALUES (4,1),(1,1),(1,2),(9,3),(6,3),(6,4),(15,5),(12,5),(12,6),(20,7),(17,7),(17,8);
/*!40000 ALTER TABLE `clientes_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaboradores`
--

DROP TABLE IF EXISTS `colaboradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colaboradores` (
  `nroProveedor` int NOT NULL,
  `servicio` varchar(255) DEFAULT NULL,
  `idRol` int NOT NULL,
  PRIMARY KEY (`idRol`),
  CONSTRAINT `FK_gtat517fmia08peer5kmf9uru` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaboradores`
--

LOCK TABLES `colaboradores` WRITE;
/*!40000 ALTER TABLE `colaboradores` DISABLE KEYS */;
INSERT INTO `colaboradores` VALUES (123456,'Servicio Medico',2),(123456,'Informatica',3),(123456,'Servicio Medico',7),(123456,'Informatica',8),(123321,'Mantenimiento',11),(123456,'Servicio Medico',13),(123456,'Informatica',14),(123456,'Servicio Medico',18),(123456,'Informatica',19),(123321,'Mantenimiento',22);
/*!40000 ALTER TABLE `colaboradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `nroEmpleado` int NOT NULL,
  `idRol` int NOT NULL,
  `idcategoria` int DEFAULT NULL,
  PRIMARY KEY (`idRol`),
  KEY `FK_hb2ckqvwo1x8cwe6vsixqxo9x` (`idcategoria`),
  CONSTRAINT `FK_4d4cvmb7dkv2399wy0gnm90e5` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`),
  CONSTRAINT `FK_hb2ckqvwo1x8cwe6vsixqxo9x` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (12345,5,1),(54321,10,2),(12345,16,3),(12345,21,4);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `idPersona` int NOT NULL AUTO_INCREMENT,
  `apellidos` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'Marcos'),(2,'Lopez'),(3,'Ramirez'),(4,'Bustamante'),(5,'Juarez'),(6,'Otro Lopez'),(7,'Perez'),(8,'Pedrito'),(9,'Marcos'),(10,'Lopez'),(11,'Ramirez'),(12,'Bustamante'),(13,'Marcos'),(14,'Lopez'),(15,'Ramirez'),(16,'Bustamante');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProducto` int NOT NULL AUTO_INCREMENT,
  `precio` double NOT NULL,
  `producto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,155.8,'disco externo usb'),(2,12,'cable hdmi 1.5m.'),(3,1000,'PC X3456'),(4,22,'teclado USB'),(5,155.8,'disco externo usb'),(6,12,'cable hdmi 1.5m.'),(7,155.8,'disco externo usb'),(8,12,'cable hdmi 1.5m.');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `idRol` int NOT NULL AUTO_INCREMENT,
  `rol` varchar(255) DEFAULT NULL,
  `idPersona` int DEFAULT NULL,
  PRIMARY KEY (`idRol`),
  KEY `FK_roles_personas` (`idPersona`),
  CONSTRAINT `FK_roles_personas` FOREIGN KEY (`idPersona`) REFERENCES `personas` (`idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'CLIENTE',3),(2,'COLABORADOR',1),(3,'COLABORADOR',2),(4,'CLIENTE',2),(5,'EMPLEADO',4),(6,'CLIENTE',7),(7,'COLABORADOR',5),(8,'COLABORADOR',6),(9,'EMPLEADO',2),(10,'EMPLEADO',8),(11,'COLABORADOR',8),(12,'CLIENTE',11),(13,'COLABORADOR',9),(14,'COLABORADOR',10),(15,'CLIENTE',2),(16,'EMPLEADO',12),(17,'CLIENTE',15),(18,'COLABORADOR',13),(19,'COLABORADOR',14),(20,'CLIENTE',2),(21,'EMPLEADO',16),(22,'COLABORADOR',16);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-30 12:10:21
CREATE DATABASE  IF NOT EXISTS `10_jardineria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `10_jardineria`;
-- MySQL dump 10.13  Distrib 8.0.42, for macos15 (x86_64)
--
-- Host: 127.0.0.1    Database: 10_jardineria
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(50) NOT NULL,
  `nombre_contacto` varchar(30) DEFAULT NULL,
  `apellido_contacto` varchar(30) DEFAULT NULL,
  `telefono` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `linea_direccion1` varchar(50) NOT NULL,
  `linea_direccion2` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) NOT NULL,
  `region` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `fk_empleado_rep_ventas` int unsigned DEFAULT NULL,
  `limite_credito` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `fk_empleado_rep_ventas` (`fk_empleado_rep_ventas`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`fk_empleado_rep_ventas`) REFERENCES `empleados` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'GoldFish Garden','Daniel G','GoldFish','5556901745','5556901746','False Street 52 2 A',NULL,'San Francisco',NULL,'USA','24006',19,3000.00),(3,'Gardening Associates','Anne','Wright','5557410345','5557410346','Wall-e Avenue',NULL,'Miami','Miami','USA','24010',19,6000.00),(4,'Gerudo Valley','Link','Flaute','5552323129','5552323128','Oaks Avenue nº22',NULL,'New York',NULL,'USA','85495',22,12000.00),(5,'Tendo Garden','Akane','Tendo','55591233210','55591233211','Null Street nº69',NULL,'Miami',NULL,'USA','696969',22,600000.00),(6,'Lasas S.A.','Antonio','Lasas','34916540145','34914851312','C/Leganes 15',NULL,'Fuenlabrada','Madrid','Spain','28945',8,154310.00),(7,'Beragua','Jose','Bermejo','654987321','916549872','C/pintor segundo','Getafe','Madrid','Madrid','Spain','28942',11,20000.00),(8,'Club Golf Puerta del hierro','Paco','Lopez','62456810','919535678','C/sinesio delgado','Madrid','Madrid','Madrid','Spain','28930',11,40000.00),(9,'Naturagua','Guillermo','Rengifo','689234750','916428956','C/majadahonda','Boadilla','Madrid','Madrid','Spain','28947',11,32000.00),(10,'DaraDistribuciones','David','Serrano','675598001','916421756','C/azores','Fuenlabrada','Madrid','Madrid','Spain','28946',11,50000.00),(11,'Madrileña de riegos','Jose','Tacaño','655983045','916689215','C/Lagañas','Fuenlabrada','Madrid','Madrid','Spain','28943',11,20000.00),(12,'Lasas S.A.','Antonio','Lasas','34916540145','34914851312','C/Leganes 15',NULL,'Fuenlabrada','Madrid','Spain','28945',8,154310.00),(13,'Camunas Jardines S.L.','Pedro','Camunas','34914873241','34914871541','C/Virgenes 45','C/Princesas 2 1ºB','San Lorenzo del Escorial','Madrid','Spain','28145',8,16481.00),(14,'Dardena S.A.','Juan','Rodriguez','34912453217','34912484764','C/Nueva York 74',NULL,'Madrid','Madrid','Spain','28003',8,321000.00),(15,'Jardin de Flores','Javier','Villar','654865643','914538776','C/ Oña 34',NULL,'Madrid','Madrid','Spain','28950',30,40000.00),(16,'Flores Marivi','Maria','Rodriguez','666555444','912458657','C/Leganes24',NULL,'Fuenlabrada','Madrid','Spain','28945',5,1500.00),(17,'Flowers, S.A','Beatriz','Fernandez','698754159','978453216','C/Luis Salquillo4',NULL,'Montornes del valles','Barcelona','Spain','24586',5,3500.00),(18,'Naturajardin','Victoria','Cruz','612343529','916548735','Plaza Magallón 15',NULL,'Madrid','Madrid','Spain','28011',30,5050.00),(19,'Golf S.A.','Luis','Martinez','916458762','912354475','C/Estancado',NULL,'Santa cruz de Tenerife','Islas Canarias','Spain','38297',12,30000.00),(20,'Americh Golf Management SL','Mario','Suarez','964493072','964493063','C/Letardo',NULL,'Barcelona','Cataluña','Spain','12320',12,20000.00),(21,'Aloha','Cristian','Rodrigez','916485852','914489898','C/Roman 3',NULL,'Canarias','Canarias','Spain','35488',12,50000.00),(22,'El Prat','Francisco','Camacho','916882323','916493211','Avenida Tibidabo',NULL,'Barcelona','Cataluña','Spain','12320',12,30000.00),(23,'Sotogrande','Maria','Santillana','915576622','914825645','C/Paseo del Parque',NULL,'Sotogrande','Cadiz','Spain','11310',12,60000.00),(24,'Vivero Humanes','Federico','Gomez','654987690','916040875','C/Miguel Echegaray 54',NULL,'Humanes','Madrid','Spain','28970',30,7430.00),(25,'Fuenla City','Tony','Muñoz Mena','675842139','915483754','C/Callo 52',NULL,'Fuenlabrada','Madrid','Spain','28574',5,4500.00),(26,'Jardines y Mansiones Cactus SL','Eva María','Sánchez','916877445','914477777','Polígono Industrial Maspalomas, Nº52','Móstoles','Madrid','Madrid','Spain','29874',9,76000.00),(27,'Jardinerías Matías SL','Matías','San Martín','916544147','917897474','C/Francisco Arce, Nº44','Bustarviejo','Madrid','Madrid','Spain','37845',9,100500.00),(28,'Agrojardin','Benito','Lopez','675432926','916549264','C/Mar Caspio 43',NULL,'Getafe','Madrid','Spain','28904',30,8040.00),(29,'Top Campo','Joseluis','Sanchez','685746512','974315924','C/Ibiza 32',NULL,'Humanes','Madrid','Spain','28574',5,5500.00),(30,'Jardineria Sara','Sara','Marquez','675124537','912475843','C/Lima 1',NULL,'Fuenlabrada','Madrid','Spain','27584',5,7500.00),(31,'Campohermoso','Luis','Jimenez','645925376','916159116','C/Peru 78',NULL,'Fuenlabrada','Madrid','Spain','28945',30,3250.00),(32,'france telecom','FraÃ§ois','Toulou','(33)5120578961','(33)5120578961','6 place d Alleray 15Ã¨me',NULL,'Paris',NULL,'France','75010',16,10000.00),(33,'Musée du Louvre','Pierre','Delacroux','(33)0140205050','(33)0140205442','Quai du Louvre',NULL,'Paris',NULL,'France','75058',16,30000.00),(35,'Tutifruti S.A','Jacob','Jones','2 9261-2433','2 9283-1695','level 24, St. Martins Tower.-31 Market St.',NULL,'Sydney','Nueva Gales del Sur','Australia','2000',31,10000.00),(36,'Flores S.L.','Antonio','Romero','654352981','685249700','Avenida España',NULL,'Madrid','Fuenlabrada','Spain','29643',18,6000.00),(37,'The Magic Garden','Richard','Mcain','926523468','9364875882','Lihgting Park',NULL,'London','London','United Kingdom','65930',18,10000.00),(38,'El Jardin Viviente S.L','Justin','Smith','2 8005-7161','2 8005-7162','176 Cumberland Street The rocks',NULL,'Sydney','Nueva Gales del Sur','Australia','2003',31,8000.00);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_pedido`
--

DROP TABLE IF EXISTS `detalles_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalles_pedido` (
  `fk_pedido` int unsigned NOT NULL,
  `fk_producto` int unsigned NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unidad` decimal(15,2) NOT NULL,
  `numero_linea` smallint NOT NULL,
  PRIMARY KEY (`fk_pedido`,`fk_producto`),
  KEY `fk_producto` (`fk_producto`),
  CONSTRAINT `detalles_pedido_ibfk_1` FOREIGN KEY (`fk_pedido`) REFERENCES `pedidos` (`id_pedido`),
  CONSTRAINT `detalles_pedido_ibfk_2` FOREIGN KEY (`fk_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_pedido`
--

LOCK TABLES `detalles_pedido` WRITE;
/*!40000 ALTER TABLE `detalles_pedido` DISABLE KEYS */;
INSERT INTO `detalles_pedido` VALUES (1,87,10,70.00,3),(1,151,40,4.00,1),(1,165,25,4.00,2),(1,265,15,19.00,4),(1,276,23,14.00,5),(2,57,3,29.00,6),(2,58,7,8.00,7),(2,164,50,4.00,3),(2,165,20,5.00,2),(2,183,12,6.00,5),(2,251,67,64.00,1),(2,271,5,462.00,4),(3,66,120,9.00,6),(3,146,32,5.00,4),(3,147,11,5.00,5),(3,237,30,266.00,1),(3,241,15,65.00,2),(3,242,24,25.00,3),(4,48,12,8.00,7),(4,51,42,8.00,6),(4,58,42,9.00,8),(4,176,3,6.00,5),(4,179,4,6.00,3),(4,180,17,9.00,4),(4,181,38,10.00,2),(4,246,21,59.00,1),(8,23,3,11.00,1),(8,25,1,32.00,2),(8,26,10,100.00,3),(9,5,80,1.00,3),(9,12,450,1.00,2),(9,23,80,8.00,1),(9,89,15,91.00,2),(10,104,5,70.00,2),(10,114,30,75.00,1),(10,258,5,64.00,3),(11,10,180,1.00,3),(11,271,80,8.00,1),(12,13,290,1.00,1),(13,1,5,14.00,1),(13,2,12,14.00,2),(13,26,5,100.00,3),(14,17,8,11.00,2),(14,28,13,57.00,1),(15,106,4,13.00,3),(15,125,2,6.00,2),(15,180,6,10.00,1),(15,227,9,10.00,4),(16,4,12,12.00,1),(16,53,10,9.00,2),(17,1,5,14.00,1),(17,3,5,12.00,3),(17,54,5,9.00,2),(17,84,5,22.00,4),(17,160,5,18.00,5),(18,3,4,12.00,2),(18,38,2,4.00,1),(18,183,10,6.00,3),(19,4,9,12.00,5),(19,39,6,8.00,4),(19,96,1,32.00,2),(19,106,5,13.00,1),(19,232,20,4.00,3),(20,1,14,14.00,1),(20,4,8,12.00,2),(21,2,5,14.00,3),(21,33,22,4.00,1),(21,72,3,8.00,2),(22,264,1,6.00,1),(23,6,110,1.00,4),(23,24,50,22.00,3),(23,107,4,70.00,2),(23,273,30,5.00,1),(24,3,3,15.00,1),(24,15,4,7.00,4),(24,39,2,7.00,2),(24,265,10,20.00,3),(25,98,15,69.00,1),(25,112,4,30.00,3),(25,117,10,30.00,2),(26,30,9,25.00,3),(26,212,4,25.00,1),(26,242,14,25.00,2),(27,125,22,6.00,2),(27,126,22,6.00,3),(27,210,40,6.00,1),(28,26,8,99.00,3),(28,237,3,266.00,2),(28,271,1,462.00,1),(29,104,4,70.00,4),(29,112,4,28.00,1),(29,117,20,31.00,5),(29,153,2,111.00,2),(29,184,10,9.00,3),(30,8,10,1.00,6),(30,25,2,32.00,2),(30,27,2,19.00,3),(30,93,4,31.00,5),(30,111,10,45.00,1),(30,144,5,5.00,4),(31,13,25,2.00,3),(31,19,1,20.00,1),(31,57,6,29.00,2),(32,1,1,14.00,4),(32,2,4,15.00,5),(32,3,1,15.00,3),(32,152,29,100.00,2),(32,217,5,20.00,1),(33,32,423,2.00,4),(33,45,120,8.00,3),(33,238,212,10.00,2),(33,271,150,462.00,1),(34,46,56,7.00,4),(34,90,12,29.00,3),(34,196,20,18.00,1),(34,198,24,18.00,2),(35,2,12,14.00,4),(35,65,55,8.00,3),(35,189,3,10.00,2),(35,205,36,10.00,1),(35,249,72,10.00,5),(36,4,4,12.00,2),(36,15,2,7.00,3),(36,171,6,7.00,4),(36,227,1,12.00,5),(36,276,15,13.00,1),(37,22,4,70.00,1),(37,76,203,8.00,2),(37,200,38,10.00,3),(38,1,5,14.00,1),(38,2,2,14.00,2),(39,3,3,12.00,1),(39,4,6,12.00,2),(40,5,4,1.00,1),(40,6,8,1.00,2),(41,7,5,1.00,1),(41,8,5,1.00,2),(42,9,3,1.00,1),(42,10,1,1.00,2),(43,11,9,1.00,1),(44,12,5,1.00,1),(45,13,6,1.00,1),(45,14,4,1.00,2),(46,15,4,7.00,1),(46,16,8,7.00,2),(47,17,9,11.00,1),(47,18,5,13.00,2),(48,19,1,18.00,1),(48,20,1,25.00,2),(48,258,50,64.00,1),(48,260,45,49.00,2),(48,261,50,19.00,3),(49,228,50,10.00,1),(49,229,10,10.00,2),(49,230,5,5.00,3),(50,249,12,10.00,1),(50,250,15,38.00,2),(50,251,44,64.00,3),(51,233,50,10.00,1),(51,234,80,39.00,2),(51,235,70,59.00,3),(52,87,10,70.00,1),(53,35,1,7.00,1),(53,107,1,70.00,3),(53,108,2,11.00,2),(53,140,6,7.00,4),(54,1,3,14.00,3),(54,17,45,10.00,2),(54,33,5,4.00,1),(54,100,3,22.00,4),(54,140,8,7.00,6),(54,147,3,5.00,5),(54,192,2,10.00,7),(55,139,9,7.00,1),(55,237,2,266.00,2),(55,251,6,64.00,5),(55,267,2,64.00,4),(55,271,1,462.00,3),(56,153,1,115.00,5),(56,154,10,18.00,6),(56,203,1,6.00,3),(56,220,3,10.00,4),(56,231,4,4.00,2),(56,274,3,10.00,1),(57,89,6,91.00,4),(57,103,3,49.00,3),(57,106,2,13.00,1),(57,117,6,9.00,2),(58,126,65,18.00,3),(58,163,80,4.00,1),(58,196,69,15.00,2),(58,201,150,15.00,4),(59,87,10,70.00,1),(60,87,10,70.00,1),(61,87,10,70.00,1),(62,87,10,70.00,1),(63,87,10,70.00,1),(64,87,10,70.00,1),(65,87,10,70.00,1),(66,87,10,70.00,1),(67,87,10,70.00,1),(68,87,10,70.00,1),(74,87,15,70.00,1),(74,251,34,64.00,2),(74,271,42,8.00,3),(75,10,60,1.00,2),(75,109,24,22.00,3),(75,181,46,10.00,1),(76,13,250,1.00,5),(76,100,40,22.00,3),(76,109,24,22.00,4),(76,117,35,9.00,1),(76,220,25,10.00,2),(77,3,34,12.00,2),(77,4,15,12.00,1),(78,72,25,8.00,2),(78,107,56,70.00,3),(78,181,42,10.00,4),(78,232,30,4.00,1),(79,264,50,6.00,1),(80,26,40,100.00,3),(80,53,47,9.00,2),(80,160,75,18.00,1),(81,232,30,4.00,1),(82,251,34,64.00,1),(83,232,30,4.00,1),(89,25,3,32.00,2),(89,46,15,7.00,6),(89,60,12,8.00,4),(89,86,5,49.00,1),(89,109,4,22.00,3),(89,181,8,10.00,5),(90,5,19,1.00,1),(90,6,10,1.00,2),(90,7,12,1.00,3),(91,17,52,11.00,1),(91,18,14,13.00,2),(91,19,35,18.00,3),(92,25,12,23.00,1),(92,26,20,100.00,2),(92,27,30,21.00,3),(93,73,25,9.00,1),(93,77,51,11.00,2),(93,80,3,32.00,3),(94,1,12,14.00,1),(94,26,33,100.00,3),(94,57,79,29.00,2),(95,16,9,7.00,2),(95,96,6,32.00,1),(95,104,5,70.00,3),(96,61,6,8.00,1),(96,79,16,7.00,4),(96,92,10,22.00,3),(96,113,4,70.00,2),(97,59,12,8.00,1),(97,73,14,9.00,2),(97,180,10,10.00,3),(98,50,14,8.00,4),(98,75,16,8.00,3),(98,80,8,32.00,1),(98,101,18,6.00,5),(98,107,6,70.00,2),(99,181,15,10.00,2),(99,251,30,64.00,1),(100,109,20,22.00,1),(100,117,40,9.00,2),(101,10,50,1.00,1),(101,13,159,1.00,2),(102,3,32,12.00,2),(102,4,23,12.00,1),(103,72,12,8.00,2),(103,232,52,4.00,1),(104,107,9,70.00,1),(104,181,113,10.00,2),(105,251,21,64.00,2),(105,264,27,6.00,1),(106,13,231,1.00,1),(106,160,47,18.00,2),(107,4,143,12.00,2),(107,26,15,100.00,1),(108,72,53,8.00,1),(108,232,59,4.00,2),(109,38,8,4.00,5),(109,53,12,9.00,3),(109,63,14,8.00,4),(109,128,20,10.00,1),(109,143,10,5.00,2),(109,149,3,5.00,6),(109,154,2,18.00,7),(110,14,6,1.00,3),(110,15,14,7.00,1),(110,31,1,45.00,2),(111,87,10,70.00,1),(112,87,10,70.00,1),(113,87,10,70.00,1),(114,87,10,70.00,1),(115,87,10,70.00,1),(116,2,5,14.00,1),(116,5,32,1.00,2),(116,9,18,1.00,5),(116,50,13,8.00,3),(116,224,10,4.00,4),(117,99,2,15.00,1),(117,102,1,32.00,3),(117,170,17,4.00,2),(117,203,4,6.00,4),(118,87,10,70.00,1),(119,87,10,70.00,1),(120,87,10,70.00,1),(121,87,10,70.00,1),(122,87,10,70.00,1),(123,87,10,70.00,1),(124,87,10,70.00,1),(125,87,10,70.00,1),(126,87,10,70.00,1),(127,87,10,70.00,1),(128,8,15,1.00,1),(128,174,18,2.00,2);
/*!40000 ALTER TABLE `detalles_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleado` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50) DEFAULT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fk_oficina` int unsigned NOT NULL,
  `fk_jefe` int unsigned DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`),
  KEY `fk_oficina` (`fk_oficina`),
  KEY `fk_jefe` (`fk_jefe`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`fk_oficina`) REFERENCES `oficinas` (`id_oficina`),
  CONSTRAINT `empleados_ibfk_2` FOREIGN KEY (`fk_jefe`) REFERENCES `empleados` (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Marcos','Magaña','Perez','3897','marcos@jardineria.es',8,NULL,'Director General'),(2,'Ruben','López','Martinez','2899','rlopez@jardineria.es',8,1,'Subdirector Marketing'),(3,'Alberto','Soria','Carrasco','2837','asoria@jardineria.es',8,2,'Subdirector Ventas'),(4,'Maria','Solís','Jerez','2847','msolis@jardineria.es',8,2,'Secretaria'),(5,'Felipe','Rosas','Marquez','2844','frosas@jardineria.es',8,3,'Representante Ventas'),(6,'Juan Carlos','Ortiz','Serrano','2845','cortiz@jardineria.es',8,3,'Representante Ventas'),(7,'Carlos','Soria','Jimenez','2444','csoria@jardineria.es',4,3,'Director Oficina'),(8,'Mariano','López','Murcia','2442','mlopez@jardineria.es',4,7,'Representante Ventas'),(9,'Lucio','Campoamor','Martín','2442','lcampoamor@jardineria.es',4,7,'Representante Ventas'),(10,'Hilario','Rodriguez','Huertas','2444','hrodriguez@jardineria.es',4,7,'Representante Ventas'),(11,'Emmanuel','Magaña','Perez','2518','manu@jardineria.es',1,3,'Director Oficina'),(12,'José Manuel','Martinez','De la Osa','2519','jmmart@hotmail.es',1,11,'Representante Ventas'),(13,'David','Palma','Aceituno','2519','dpalma@jardineria.es',1,11,'Representante Ventas'),(14,'Oscar','Palma','Aceituno','2519','opalma@jardineria.es',1,11,'Representante Ventas'),(15,'Francois','Fignon','','9981','ffignon@gardening.com',5,3,'Director Oficina'),(16,'Lionel','Narvaez','','9982','lnarvaez@gardening.com',5,15,'Representante Ventas'),(17,'Laurent','Serra','','9982','lserra@gardening.com',5,15,'Representante Ventas'),(18,'Michael','Bolton','','7454','mbolton@gardening.com',6,3,'Director Oficina'),(19,'Walter Santiago','Sanchez','Lopez','7454','wssanchez@gardening.com',6,18,'Representante Ventas'),(20,'Hilary','Washington','','7565','hwashington@gardening.com',2,3,'Director Oficina'),(21,'Marcus','Paxton','','7565','mpaxton@gardening.com',2,20,'Representante Ventas'),(22,'Lorena','Paxton','','7665','lpaxton@gardening.com',2,20,'Representante Ventas'),(23,'Nei','Nishikori','','8734','nnishikori@gardening.com',9,3,'Director Oficina'),(24,'Narumi','Riko','','8734','nriko@gardening.com',9,23,'Representante Ventas'),(25,'Takuma','Nomura','','8735','tnomura@gardening.com',9,23,'Representante Ventas'),(26,'Amy','Johnson','','3321','ajohnson@gardening.com',3,3,'Director Oficina'),(27,'Larry','Westfalls','','3322','lwestfalls@gardening.com',3,26,'Representante Ventas'),(28,'John','Walton','','3322','jwalton@gardening.com',3,26,'Representante Ventas'),(29,'Kevin','Fallmer','','3210','kfalmer@gardening.com',7,3,'Director Oficina'),(30,'Julian','Bellinelli','','3211','jbellinelli@gardening.com',7,29,'Representante Ventas'),(31,'Mariko','Kishi','','3211','mkishi@gardening.com',7,29,'Representante Ventas');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamas_productos`
--

DROP TABLE IF EXISTS `gamas_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gamas_productos` (
  `id_gama` int unsigned NOT NULL AUTO_INCREMENT,
  `gama` varchar(50) NOT NULL,
  `descripcion_texto` text,
  `descripcion_html` text,
  PRIMARY KEY (`id_gama`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamas_productos`
--

LOCK TABLES `gamas_productos` WRITE;
/*!40000 ALTER TABLE `gamas_productos` DISABLE KEYS */;
INSERT INTO `gamas_productos` VALUES (1,'Herbaceas','Plantas para jardin decorativas',NULL),(2,'Herramientas','Herramientas para todo tipo de acción',NULL),(3,'Aromáticas','Plantas aromáticas',NULL),(4,'Frutales','Árboles pequeños de producción frutal',NULL),(5,'Ornamentales','Plantas vistosas para la decoración del jardín',NULL);
/*!40000 ALTER TABLE `gamas_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `listado_pagos_clientes`
--

DROP TABLE IF EXISTS `listado_pagos_clientes`;
/*!50001 DROP VIEW IF EXISTS `listado_pagos_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `listado_pagos_clientes` AS SELECT 
 1 AS `id_cliente`,
 1 AS `nombre`,
 1 AS `telefono`,
 1 AS `ciudad`,
 1 AS `pais`,
 1 AS `fecha_pago`,
 1 AS `total`,
 1 AS `id_transaccion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listado_pedidos_clientes`
--

DROP TABLE IF EXISTS `listado_pedidos_clientes`;
/*!50001 DROP VIEW IF EXISTS `listado_pedidos_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `listado_pedidos_clientes` AS SELECT 
 1 AS `id_cliente`,
 1 AS `nombre`,
 1 AS `telefono`,
 1 AS `ciudad`,
 1 AS `pais`,
 1 AS `id_pedido`,
 1 AS `fecha_pedido`,
 1 AS `fecha_esperada`,
 1 AS `fecha_entrega`,
 1 AS `total_pedido`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `oficinas`
--

DROP TABLE IF EXISTS `oficinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oficinas` (
  `id_oficina` int unsigned NOT NULL AUTO_INCREMENT,
  `oficina` varchar(10) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `pais` varchar(45) NOT NULL,
  `region` varchar(45) DEFAULT NULL,
  `codigo_postal` varchar(10) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `linea_direccion1` varchar(50) NOT NULL,
  `linea_direccion2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_oficina`),
  UNIQUE KEY `oficina` (`oficina`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oficinas`
--

LOCK TABLES `oficinas` WRITE;
/*!40000 ALTER TABLE `oficinas` DISABLE KEYS */;
INSERT INTO `oficinas` VALUES (1,'BCN-ES','Barcelona','España','Barcelona','08019','+34 93 3561182','Avenida Diagonal, 38','3A escalera Derecha'),(2,'BOS-USA','Boston','EEUU','MA','02108','+1 215 837 0825','1550 Court Place','Suite 102'),(3,'LON-UK','Londres','Inglaterra','EMEA','EC2N 1HN','+44 20 78772041','52 Old Broad Street','Ground Floor'),(4,'MAD-ES','Madrid','España','Madrid','28032','+34 91 7514487','Bulevar Indalecio Prieto, 32',''),(5,'PAR-FR','Paris','Francia','EMEA','75017','+33 14 723 4404','29 Rue Jouffroy d\'abbans',''),(6,'SFC-USA','San Francisco','EEUU','CA','94080','+1 650 219 4782','100 Market Street','Suite 300'),(7,'SYD-AU','Sydney','Australia','APAC','NSW 2010','+61 2 9264 2451','5-11 Wentworth Avenue','Floor #2'),(8,'TAL-ES','Talavera de la Reina','España','Castilla-LaMancha','45632','+34 925 867231','Francisco Aguirre, 32','5º piso (exterior)'),(9,'TOK-JP','Tokyo','Japón','Chiyoda-Ku','102-8578','+81 33 224 5000','4-1 Kioicho','');
/*!40000 ALTER TABLE `oficinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `id_transaccion` varchar(50) NOT NULL,
  `fk_cliente` int unsigned NOT NULL,
  `forma_pago` varchar(40) NOT NULL,
  `fecha_pago` date NOT NULL,
  `total` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id_transaccion`),
  KEY `pagos_ibfk_1` (`fk_cliente`),
  CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`fk_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES ('ak-std-000001',1,'PayPal','2008-11-10',2000.00),('ak-std-000002',1,'PayPal','2008-12-10',2000.00),('ak-std-000003',3,'PayPal','2009-01-16',5000.00),('ak-std-000004',3,'PayPal','2009-02-16',5000.00),('ak-std-000005',3,'PayPal','2009-02-19',926.00),('ak-std-000006',4,'PayPal','2007-01-08',20000.00),('ak-std-000007',4,'PayPal','2007-01-08',20000.00),('ak-std-000008',4,'PayPal','2007-01-08',20000.00),('ak-std-000009',4,'PayPal','2007-01-08',20000.00),('ak-std-000010',4,'PayPal','2007-01-08',1849.00),('ak-std-000011',5,'Transferencia','2006-01-18',23794.00),('ak-std-000012',7,'Cheque','2009-01-13',2390.00),('ak-std-000013',9,'PayPal','2009-01-06',929.00),('ak-std-000014',13,'PayPal','2008-08-04',2246.00),('ak-std-000015',14,'PayPal','2008-07-15',4160.00),('ak-std-000016',15,'PayPal','2009-01-15',2081.00),('ak-std-000017',16,'PayPal','2009-02-16',4399.00),('ak-std-000018',19,'PayPal','2009-03-06',232.00),('ak-std-000019',23,'PayPal','2009-03-26',272.00),('ak-std-000020',26,'PayPal','2008-03-18',18846.00),('ak-std-000021',27,'PayPal','2009-02-08',10972.00),('ak-std-000022',28,'PayPal','2009-01-13',8489.00),('ak-std-000024',30,'PayPal','2009-01-16',7863.00),('ak-std-000025',35,'PayPal','2007-10-06',3321.00),('ak-std-000026',38,'PayPal','2006-05-26',1171.00),('ak-std-000035',15,'PayPal','2009-02-15',10000.00);
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id_pedido` int unsigned NOT NULL AUTO_INCREMENT,
  `fecha_pedido` date NOT NULL,
  `fecha_esperada` date NOT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `estado` varchar(15) NOT NULL,
  `comentarios` text,
  `fk_cliente` int unsigned NOT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `fk_cliente` (`fk_cliente`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`fk_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'2006-01-17','2006-01-19','2006-01-19','Entregado','Pagado a plazos',5),(2,'2007-10-23','2007-10-28','2007-10-26','Entregado','La entrega llego antes de lo esperado',5),(3,'2008-06-20','2008-06-25',NULL,'Rechazado','Limite de credito superado',5),(4,'2009-01-20','2009-01-26',NULL,'Pendiente',NULL,5),(8,'2008-11-09','2008-11-14','2008-11-14','Entregado','El cliente paga la mitad con tarjeta y la otra mitad con efectivo, se le realizan dos facturas',1),(9,'2008-12-22','2008-12-27','2008-12-28','Entregado','El cliente comprueba la integridad del paquete, todo correcto',1),(10,'2009-01-15','2009-01-20',NULL,'Pendiente','El cliente llama para confirmar la fecha - Esperando al proveedor',3),(11,'2009-01-20','2009-01-27',NULL,'Pendiente','El cliente requiere que el pedido se le entregue de 16:00h a 22:00h',1),(12,'2009-01-22','2009-01-27',NULL,'Pendiente','El cliente requiere que el pedido se le entregue de 9:00h a 13:00h',1),(13,'2009-01-12','2009-01-14','2009-01-15','Entregado',NULL,7),(14,'2009-01-02','2009-01-02',NULL,'Rechazado','mal pago',7),(15,'2009-01-09','2009-01-12','2009-01-11','Entregado',NULL,7),(16,'2009-01-06','2009-01-07','2009-01-15','Entregado',NULL,7),(17,'2009-01-08','2009-01-09','2009-01-11','Entregado','mal estado',7),(18,'2009-01-05','2009-01-06','2009-01-07','Entregado',NULL,9),(19,'2009-01-18','2009-02-12',NULL,'Pendiente','entregar en murcia',9),(20,'2009-01-20','2009-02-15',NULL,'Pendiente',NULL,9),(21,'2009-01-09','2009-01-09','2009-01-09','Rechazado','mal pago',9),(22,'2009-01-11','2009-01-11','2009-01-13','Entregado',NULL,9),(23,'2008-12-30','2009-01-10',NULL,'Rechazado','El pedido fue anulado por el cliente',5),(24,'2008-07-14','2008-07-31','2008-07-25','Entregado',NULL,14),(25,'2009-02-02','2009-02-08',NULL,'Rechazado','El cliente carece de saldo en la cuenta asociada',1),(26,'2009-02-06','2009-02-12',NULL,'Rechazado','El cliente anula la operacion para adquirir mas producto',3),(27,'2009-02-07','2009-02-13',NULL,'Entregado','El pedido aparece como entregado pero no sabemos en que fecha',3),(28,'2009-02-10','2009-02-17','2009-02-20','Entregado','El cliente se queja bastante de la espera asociada al producto',3),(29,'2008-08-01','2008-09-01','2008-09-01','Rechazado','El cliente no está conforme con el pedido',14),(30,'2008-08-03','2008-09-03','2008-08-31','Entregado',NULL,13),(31,'2008-09-04','2008-09-30','2008-10-04','Rechazado','El cliente ha rechazado por llegar 5 dias tarde',13),(32,'2007-01-07','2007-01-19','2007-01-27','Entregado','Entrega tardia, el cliente puso reclamacion',4),(33,'2007-05-20','2007-05-28',NULL,'Rechazado','El pedido fue anulado por el cliente',4),(34,'2007-06-20','2008-06-28','2008-06-28','Entregado','Pagado a plazos',4),(35,'2008-03-10','2009-03-20',NULL,'Rechazado','Limite de credito superado',4),(36,'2008-10-15','2008-12-15','2008-12-10','Entregado',NULL,14),(37,'2008-11-03','2009-11-13',NULL,'Pendiente','El pedido nunca llego a su destino',4),(38,'2009-03-05','2009-03-06','2009-03-07','Entregado',NULL,19),(39,'2009-03-06','2009-03-07','2009-03-09','Pendiente',NULL,19),(40,'2009-03-09','2009-03-10','2009-03-13','Rechazado',NULL,19),(41,'2009-03-12','2009-03-13','2009-03-13','Entregado',NULL,19),(42,'2009-03-22','2009-03-23','2009-03-27','Entregado',NULL,19),(43,'2009-03-25','2009-03-26','2009-03-28','Pendiente',NULL,23),(44,'2009-03-26','2009-03-27','2009-03-30','Pendiente',NULL,23),(45,'2009-04-01','2009-03-04','2009-03-07','Entregado',NULL,23),(46,'2009-04-03','2009-03-04','2009-03-05','Rechazado',NULL,23),(47,'2009-04-15','2009-03-17','2009-03-17','Entregado',NULL,23),(48,'2008-03-17','2008-03-30','2008-03-29','Entregado','Según el Cliente, el pedido llegó defectuoso',26),(49,'2008-07-12','2008-07-22','2008-07-30','Entregado','El pedido llegó 1 día tarde, pero no hubo queja por parte de la empresa compradora',26),(50,'2008-03-17','2008-08-09',NULL,'Pendiente','Al parecer, el pedido se ha extraviado a la altura de Sotalbo (Ávila)',26),(51,'2008-10-01','2008-10-14','2008-10-14','Entregado','Todo se entregó a tiempo y en perfecto estado, a pesar del pésimo estado de las carreteras.',26),(52,'2008-12-07','2008-12-21',NULL,'Pendiente','El transportista ha llamado a Eva María para indicarle que el pedido llegará más tarde de lo esperado.',26),(53,'2008-10-15','2008-11-15','2008-11-09','Entregado','El pedido llega 6 dias antes',13),(54,'2009-01-11','2009-02-11',NULL,'Pendiente',NULL,14),(55,'2008-12-10','2009-01-10','2009-01-11','Entregado','Retrasado 1 dia por problemas de transporte',14),(56,'2008-12-19','2009-01-20',NULL,'Rechazado','El cliente a anulado el pedido el dia 2009-01-10',13),(57,'2009-01-05','2009-02-05',NULL,'Pendiente',NULL,13),(58,'2009-01-24','2009-01-31','2009-01-30','Entregado','Todo correcto',3),(59,'2008-11-09','2008-11-14','2008-11-14','Entregado','El cliente paga la mitad con tarjeta y la otra mitad con efectivo, se le realizan dos facturas',1),(60,'2008-12-22','2008-12-27','2008-12-28','Entregado','El cliente comprueba la integridad del paquete, todo correcto',1),(61,'2009-01-15','2009-01-20',NULL,'Pendiente','El cliente llama para confirmar la fecha - Esperando al proveedor',3),(62,'2009-01-20','2009-01-27',NULL,'Pendiente','El cliente requiere que el pedido se le entregue de 16:00h a 22:00h',1),(63,'2009-01-22','2009-01-27',NULL,'Pendiente','El cliente requiere que el pedido se le entregue de 9:00h a 13:00h',1),(64,'2009-01-24','2009-01-31','2009-01-30','Entregado','Todo correcto',1),(65,'2009-02-02','2009-02-08',NULL,'Rechazado','El cliente carece de saldo en la cuenta asociada',1),(66,'2009-02-06','2009-02-12',NULL,'Rechazado','El cliente anula la operacion para adquirir mas producto',3),(67,'2009-02-07','2009-02-13',NULL,'Entregado','El pedido aparece como entregado pero no sabemos en que fecha',3),(68,'2009-02-10','2009-02-17','2009-02-20','Entregado','El cliente se queja bastante de la espera asociada al producto',3),(74,'2009-01-14','2009-01-22',NULL,'Rechazado','El pedido no llego el dia que queria el cliente por fallo del transporte',15),(75,'2009-01-11','2009-01-13','2009-01-13','Entregado','El pedido llego perfectamente',15),(76,'2008-11-15','2008-11-23','2008-11-23','Entregado',NULL,15),(77,'2009-01-03','2009-01-08',NULL,'Pendiente','El pedido no pudo ser entregado por problemas meteorologicos',15),(78,'2008-12-15','2008-12-17','2008-12-17','Entregado','Fue entregado, pero faltaba mercancia que sera entregada otro dia',15),(79,'2009-01-12','2009-01-13','2009-01-13','Entregado',NULL,28),(80,'2009-01-25','2009-01-26',NULL,'Pendiente','No terminó el pago',28),(81,'2009-01-18','2009-01-24',NULL,'Rechazado','Los producto estaban en mal estado',28),(82,'2009-01-20','2009-01-29','2009-01-29','Entregado','El pedido llego un poco mas tarde de la hora fijada',28),(83,'2009-01-24','2009-01-28',NULL,'Entregado',NULL,28),(89,'2007-10-05','2007-12-13','2007-12-10','Entregado','La entrega se realizo dias antes de la fecha esperada por lo que el cliente quedo satisfecho',35),(90,'2009-02-07','2008-02-17',NULL,'Pendiente','Debido a la nevada caída en la sierra, el pedido no podrá llegar hasta el día ',27),(91,'2009-03-18','2009-03-29','2009-03-27','Entregado','Todo se entregó a su debido tiempo, incluso con un día de antelación',27),(92,'2009-04-19','2009-04-30','2009-05-03','Entregado','El pedido se entregó tarde debido a la festividad celebrada en España durante esas fechas',27),(93,'2009-05-03','2009-05-30','2009-05-17','Entregado','El pedido se entregó antes de lo esperado.',27),(94,'2009-10-18','2009-11-01',NULL,'Pendiente','El pedido está en camino.',27),(95,'2008-01-04','2008-01-19','2008-01-19','Entregado',NULL,35),(96,'2008-03-20','2008-04-12','2008-04-13','Entregado','La entrega se retraso un dia',35),(97,'2008-10-08','2008-11-25','2008-11-25','Entregado',NULL,35),(98,'2009-01-08','2009-02-13',NULL,'Pendiente',NULL,35),(99,'2009-02-15','2009-02-27',NULL,'Pendiente',NULL,16),(100,'2009-01-10','2009-01-15','2009-01-15','Entregado','El pedido llego perfectamente',16),(101,'2009-03-07','2009-03-27',NULL,'Rechazado','El pedido fue rechazado por el cliente',16),(102,'2008-12-28','2009-01-08','2009-01-08','Entregado','Pago pendiente',16),(103,'2009-01-15','2009-01-20','2009-01-24','Pendiente',NULL,30),(104,'2009-03-02','2009-03-06','2009-03-06','Entregado',NULL,30),(105,'2009-02-14','2009-02-20',NULL,'Rechazado','el producto ha sido rechazado por la pesima calidad',30),(106,'2009-05-13','2009-05-15','2009-05-20','Pendiente',NULL,30),(107,'2009-04-06','2009-04-10','2009-04-10','Entregado',NULL,30),(108,'2009-04-09','2009-04-15','2009-04-15','Entregado',NULL,16),(109,'2006-05-25','2006-07-28','2006-07-28','Entregado',NULL,38),(110,'2007-03-19','2007-04-24','2007-04-24','Entregado',NULL,38),(111,'2008-03-05','2008-03-30','2008-03-30','Entregado',NULL,36),(112,'2009-03-05','2009-04-06','2009-05-07','Pendiente',NULL,36),(113,'2008-10-28','2008-11-09','2009-01-09','Rechazado','El producto ha sido rechazado por la tardanza de el envio',36),(114,'2009-01-15','2009-01-29','2009-01-31','Entregado','El envio llego dos dias más tarde debido al mal tiempo',36),(115,'2008-11-29','2009-01-26','2009-02-27','Pendiente',NULL,36),(116,'2008-06-28','2008-08-01','2008-08-01','Entregado',NULL,38),(117,'2008-08-25','2008-10-01',NULL,'Rechazado','El pedido ha sido rechazado por la acumulacion de pago pendientes del cliente',38),(118,'2009-02-15','2009-02-27',NULL,'Pendiente',NULL,16),(119,'2009-01-10','2009-01-15','2009-01-15','Entregado','El pedido llego perfectamente',16),(120,'2009-03-07','2009-03-27',NULL,'Rechazado','El pedido fue rechazado por el cliente',16),(121,'2008-12-28','2009-01-08','2009-01-08','Entregado','Pago pendiente',16),(122,'2009-04-09','2009-04-15','2009-04-15','Entregado',NULL,16),(123,'2009-01-15','2009-01-20','2009-01-24','Pendiente',NULL,30),(124,'2009-03-02','2009-03-06','2009-03-06','Entregado',NULL,30),(125,'2009-02-14','2009-02-20',NULL,'Rechazado','el producto ha sido rechazado por la pesima calidad',30),(126,'2009-05-13','2009-05-15','2009-05-20','Pendiente',NULL,30),(127,'2009-04-06','2009-04-10','2009-04-10','Entregado',NULL,30),(128,'2008-11-10','2008-12-10','2008-12-29','Rechazado','El pedido ha sido rechazado por el cliente por el retraso en la entrega',38);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int unsigned NOT NULL AUTO_INCREMENT,
  `codigo_internacional_producto` varchar(15) NOT NULL,
  `nombre` varchar(70) NOT NULL,
  `fk_gama` int unsigned NOT NULL,
  `dimensiones` varchar(25) DEFAULT NULL,
  `proveedor` varchar(50) DEFAULT NULL,
  `descripcion` text,
  `cantidad_en_stock` int NOT NULL,
  `precio_venta` decimal(15,2) NOT NULL,
  `precio_proveedor` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `fk_gama` (`fk_gama`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`fk_gama`) REFERENCES `gamas_productos` (`id_gama`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'11679','Sierra de Poda 400MM',2,'0,258','HiperGarden Tools','Gracias a la poda se consigue manipular un poco la naturaleza, dándole la forma que más nos guste. Este trabajo básico de jardinería también facilita que las plantas crezcan de un modo más equilibrado, y que las flores y los frutos vuelvan cada año con regularidad. Lo mejor es dar forma cuando los ejemplares son jóvenes, de modo que exijan pocos cuidados cuando sean adultos. Además de saber cuándo y cómo hay que podar, tener unas herramientas adecuadas para esta labor es también de vital importancia.',15,14.00,11.00),(2,'21636','Pala',2,'0,156','HiperGarden Tools','Palas de acero con cresta de corte en la punta para cortar bien el terreno. Buena penetración en tierras muy compactas.',15,14.00,13.00),(3,'22225','Rastrillo de Jardín',2,'1,064','HiperGarden Tools','Fabuloso rastillo que le ayudará a eliminar piedras, hojas, ramas y otros elementos incómodos en su jardín.',15,12.00,11.00),(4,'30310','Azadón',2,'0,168','HiperGarden Tools','Longitud:24cm. Herramienta fabricada en acero y pintura epoxi,alargando su durabilidad y preveniendo la corrosión.Diseño pensado para el ahorro de trabajo.',15,12.00,11.00),(5,'AR-001','Ajedrea',3,'15-20','Murcia Seasons','Planta aromática que fresca se utiliza para condimentar carnes y ensaladas, y seca, para pastas, sopas y guisantes',140,1.00,0.00),(6,'AR-002','Lavándula Dentata',3,'15-20','Murcia Seasons','Espliego de jardín, Alhucema rizada, Alhucema dentada, Cantueso rizado. Familia: Lamiaceae.Origen: España y Portugal. Mata de unos 60 cm de alto. Las hojas son aromáticas, dentadas y de color verde grisáceas.  Produce compactas espigas de flores pequeñas, ligeramente aromáticas, tubulares,de color azulado y con brácteas púrpuras.  Frutos: nuececillas alargadas encerradas en el tubo del cáliz.  Se utiliza en jardineria y no en perfumeria como otros cantuesos, espliegos y lavandas.  Tiene propiedades aromatizantes y calmantes. Adecuadas para la formación de setos bajos. Se dice que su aroma ahuyenta pulgones y otros insectos perjudiciales para las plantas vecinas.',140,1.00,0.00),(7,'AR-003','Mejorana',3,'15-20','Murcia Seasons','Origanum majorana. No hay que confundirlo con el orégano. Su sabor se parece más al tomillo, pero es más dulce y aromático.Se usan las hojas frescas o secas, picadas, machacadas o en polvo, en sopas, rellenos, quiches y tartas, tortillas, platos con papas y, como aderezo, en ramilletes de hierbas.El sabor delicado de la mejorana se elimina durante la cocción, de manera que es mejor agregarla cuando el plato esté en su punto o en aquéllos que apenas necesitan cocción.',140,1.00,0.00),(8,'AR-004','Melissa ',3,'15-20','Murcia Seasons','Es una planta perenne (dura varios años) conocida por el agradable y característico olor a limón que desprenden en verano. Nunca debe faltar en la huerta o jardín por su agradable aroma y por los variados usos que tiene: planta olorosa, condimentaria y medicinal. Su cultivo es muy fácil. Le va bien un suelo ligero, con buen drenaje y riego sin exceso. A pleno sol o por lo menos 5 horas de sol por día. Cada año, su abonado mineral correspondiente.En otoño, la melisa pierde el agradable olor a limón que desprende en verano sus flores azules y blancas. En este momento se debe cortar a unos 20 cm. del suelo. Brotará de forma densa en primavera.',140,1.00,0.00),(9,'AR-005','Mentha Sativa',3,'15-20','Murcia Seasons','¿Quién no conoce la Hierbabuena? Se trata de una plantita muy aromática, agradable y cultivada extensamente por toda España. Es hierba perenne (por tanto vive varios años, no es anual). Puedes cultivarla en maceta o plantarla en la tierra del jardín o en un rincón del huerto. Lo más importante es que cuente con bastante agua. En primavera debes aportar fertilizantes minerales. Vive mejor en semisombra que a pleno sol.Si ves orugas o los agujeros en hojas consecuencia de su ataque, retíralas una a una a mano; no uses insecticidas químicos.',140,1.00,0.00),(10,'AR-006','Petrosilium Hortense (Peregil)',3,'15-20','Murcia Seasons','Nombre científico o latino: Petroselinum hortense, Petroselinum crispum. Nombre común o vulgar: Perejil, Perejil rizado Familia: Umbelliferae (Umbelíferas). Origen: el origen del perejil se encuentra en el Mediterraneo. Esta naturalizada en casi toda Europa. Se utiliza como condimento y para adorno, pero también en ensaladas. Se suele regalar en las fruterías y verdulerías.El perejil lo hay de 2 tipos: de hojas planas y de hojas rizadas.',140,1.00,0.00),(11,'AR-007','Salvia Mix',3,'15-20','Murcia Seasons','La Salvia es un pequeño arbusto que llega hasta el metro de alto.Tiene una vida breve, de unos pocos años.En el jardín, como otras aromáticas, queda muy bien en una rocalla o para hacer una bordura perfumada a cada lado de un camino de Salvia. Abona después de cada corte y recorta el arbusto una vez pase la floración.',140,1.00,0.00),(12,'AR-008','Thymus Citriodra (Tomillo limón)',3,'15-20','Murcia Seasons','Nombre común o vulgar: Tomillo, Tremoncillo Familia: Labiatae (Labiadas).Origen: Región mediterránea.Arbustillo bajo, de 15 a 40 cm de altura. Las hojas son muy pequeñas, de unos 6 mm de longitud; según la variedad pueden ser verdes, verdes grisáceas, amarillas, o jaspeadas. Las flores aparecen de mediados de primavera hasta bien entrada la época estival y se presentan en racimos terminales que habitualmente son de color violeta o púrpura aunque también pueden ser blancas. Esta planta despide un intenso y típico aroma, que se incrementa con el roce. El tomillo resulta de gran belleza cuando está en flor. El tomillo atrae a avispas y abejas. En jardinería se usa como manchas, para hacer borduras, para aromatizar el ambiente, llenar huecos, cubrir rocas, para jardines en miniatura, etc. Arranque las flores y hojas secas del tallo y añadálos a un popurri, introdúzcalos en saquitos de hierbas o en la almohada.También puede usar las ramas secas con flores para añadir aroma y textura a cestos abiertos.',140,1.00,0.00),(13,'AR-009','Thymus Vulgaris',3,'15-20','Murcia Seasons','Nombre común o vulgar: Tomillo, Tremoncillo Familia: Labiatae (Labiadas). Origen: Región mediterránea. Arbustillo bajo, de 15 a 40 cm de altura. Las hojas son muy pequeñas, de unos 6 mm de longitud; según la variedad pueden ser verdes, verdes grisáceas, amarillas, o jaspeadas. Las flores aparecen de mediados de primavera hasta bien entrada la época estival y se presentan en racimos terminales que habitualmente son de color violeta o púrpura aunque también pueden ser blancas. Esta planta despide un intenso y típico aroma, que se incrementa con el roce. El tomillo resulta de gran belleza cuando está en flor. El tomillo atrae a avispas y abejas.\r\n En jardinería se usa como manchas, para hacer borduras, para aromatizar el ambiente, llenar huecos, cubrir rocas, para jardines en miniatura, etc. Arranque las flores y hojas secas del tallo y añadálos a un popurri, introdúzcalos en saquitos de hierbas o en la almohada. También puede usar las ramas secas con flores para añadir aroma y textura a cestos abiertos.',140,1.00,0.00),(14,'AR-010','Santolina Chamaecyparys',3,'15-20','Murcia Seasons','',140,1.00,0.00),(15,'FR-1','Expositor Cítricos Mix',4,'100-120','Frutales Talavera S.A','',15,7.00,5.00),(16,'FR-10','Limonero 2 años injerto',4,'','NaranjasValencianas.com','El limonero, pertenece al grupo de los cítricos, teniendo su origen hace unos 20 millones de años en el sudeste asiático. Fue introducido por los árabes en el área mediterránea entre los años 1.000 a 1.200, habiendo experimentando numerosas modificaciones debidas tanto a la selección natural mediante hibridaciones espontáneas como a las producidas por el hombre, en este caso buscando las necesidades del mercado.',15,7.00,5.00),(17,'FR-100','Nectarina',4,'8/10','Frutales Talavera S.A','Se trata de un árbol derivado por mutación de los melocotoneros comunes, y los únicos caracteres diferenciales son la ausencia de tomentosidad en la piel del fruto. La planta, si se deja crecer libremente, adopta un porte globoso con unas dimensiones medias de 4-6 metros',50,11.00,8.00),(18,'FR-101','Nogal',4,'8/10','Frutales Talavera S.A','',50,13.00,10.00),(19,'FR-102','Olea-Olivos',4,'8/10','Frutales Talavera S.A','Existen dos hipótesis sobre el origen del olivo, una que postula que proviene de las costas de Siria, Líbano e Israel y otra que considera que lo considera originario de Asia menor. La llegada a Europa probablemente tuvo lugar de mano de los Fenicios, en transito por Chipre, Creta, e Islas del Mar Egeo, pasando a Grecia y más tarde a Italia. Los primeros indicios de la presencia del olivo en las costas mediterráneas españolas coinciden con el dominio romano, aunque fueron posteriormente los árabes los que impulsaron su cultivo en Andalucía, convirtiendo a España en el primer país productor de aceite de oliva a nivel mundial.',50,18.00,14.00),(20,'FR-103','Olea-Olivos',4,'10/12','Frutales Talavera S.A','Existen dos hipótesis sobre el origen del olivo, una que postula que proviene de las costas de Siria, Líbano e Israel y otra que considera que lo considera originario de Asia menor. La llegada a Europa probablemente tuvo lugar de mano de los Fenicios, en transito por Chipre, Creta, e Islas del Mar Egeo, pasando a Grecia y más tarde a Italia. Los primeros indicios de la presencia del olivo en las costas mediterráneas españolas coinciden con el dominio romano, aunque fueron posteriormente los árabes los que impulsaron su cultivo en Andalucía, convirtiendo a España en el primer país productor de aceite de oliva a nivel mundial.',50,25.00,20.00),(21,'FR-104','Olea-Olivos',4,'12/4','Frutales Talavera S.A','Existen dos hipótesis sobre el origen del olivo, una que postula que proviene de las costas de Siria, Líbano e Israel y otra que considera que lo considera originario de Asia menor. La llegada a Europa probablemente tuvo lugar de mano de los Fenicios, en transito por Chipre, Creta, e Islas del Mar Egeo, pasando a Grecia y más tarde a Italia. Los primeros indicios de la presencia del olivo en las costas mediterráneas españolas coinciden con el dominio romano, aunque fueron posteriormente los árabes los que impulsaron su cultivo en Andalucía, convirtiendo a España en el primer país productor de aceite de oliva a nivel mundial.',50,49.00,39.00),(22,'FR-105','Olea-Olivos',4,'14/16','Frutales Talavera S.A','Existen dos hipótesis sobre el origen del olivo, una que postula que proviene de las costas de Siria, Líbano e Israel y otra que considera que lo considera originario de Asia menor. La llegada a Europa probablemente tuvo lugar de mano de los Fenicios, en transito por Chipre, Creta, e Islas del Mar Egeo, pasando a Grecia y más tarde a Italia. Los primeros indicios de la presencia del olivo en las costas mediterráneas españolas coinciden con el dominio romano, aunque fueron posteriormente los árabes los que impulsaron su cultivo en Andalucía, convirtiendo a España en el primer país productor de aceite de oliva a nivel mundial.',50,70.00,56.00),(23,'FR-106','Peral',4,'8/10','Frutales Talavera S.A','Árbol piramidal, redondeado en su juventud, luego oval, que llega hasta 20 metros de altura y por término medio vive 65 años.Tronco alto, grueso, de corteza agrietada, gris, de la cual se destacan con frecuencia placas lenticulares.Las ramas se insertan formando ángulo agudo con el tronco (45º), de corteza lisa, primero verde y luego gris-violácea, con numerosas lenticelas.',50,11.00,8.00),(24,'FR-107','Peral',4,'10/12','Frutales Talavera S.A','Árbol piramidal, redondeado en su juventud, luego oval, que llega hasta 20 metros de altura y por término medio vive 65 años.Tronco alto, grueso, de corteza agrietada, gris, de la cual se destacan con frecuencia placas lenticulares.Las ramas se insertan formando ángulo agudo con el tronco (45º), de corteza lisa, primero verde y luego gris-violácea, con numerosas lenticelas.',50,22.00,17.00),(25,'FR-108','Peral',4,'12/14','Frutales Talavera S.A','Árbol piramidal, redondeado en su juventud, luego oval, que llega hasta 20 metros de altura y por término medio vive 65 años.Tronco alto, grueso, de corteza agrietada, gris, de la cual se destacan con frecuencia placas lenticulares.Las ramas se insertan formando ángulo agudo con el tronco (45º), de corteza lisa, primero verde y luego gris-violácea, con numerosas lenticelas.',50,32.00,25.00),(26,'FR-11','Limonero 30/40',4,'','NaranjasValencianas.com','El limonero, pertenece al grupo de los cítricos, teniendo su origen hace unos 20 millones de años en el sudeste asiático. Fue introducido por los árabes en el área mediterránea entre los años 1.000 a 1.200, habiendo experimentando numerosas modificaciones debidas tanto a la selección natural mediante hibridaciones espontáneas como a las producidas por el',15,100.00,80.00),(27,'FR-12','Kunquat ',4,'','NaranjasValencianas.com','su nombre científico se origina en honor a un hoticultor escocés que recolectó especímenes en China, (\"Fortunella\"), Robert Fortune (1812-1880), y \"margarita\", del latín margaritus-a-um = perla, en alusión a sus pequeños y brillantes frutos. Se trata de un arbusto o árbol pequeño de 2-3 m de altura, inerme o con escasas espinas.Hojas lanceoladas de 4-8 (-15) cm de longitud, con el ápice redondeado y la base cuneada.Tienen el margen crenulado en su mitad superior, el haz verde brillante y el envés más pálido.Pecíolo ligeramente marginado.Flores perfumadas solitarias o agrupadas en inflorescencias axilares, blancas.El fruto es lo más característico, es el más pequeño de todos los cítricos y el único cuya cáscara se puede comer.Frutos pequeños, con semillas, de corteza fina, dulce, aromática y comestible, y de pulpa naranja amarillenta y ligeramente ácida.Sus frutos son muy pequeños y tienen un carácter principalmente ornamental.',15,21.00,16.00),(28,'FR-13','Kunquat  EXTRA con FRUTA',4,'150-170','NaranjasValencianas.com','su nombre científico se origina en honor a un hoticultor escocés que recolectó especímenes en China, (\"Fortunella\"), Robert Fortune (1812-1880), y \"margarita\", del latín margaritus-a-um = perla, en alusión a sus pequeños y brillantes frutos. Se trata de un arbusto o árbol pequeño de 2-3 m de altura, inerme o con escasas espinas.Hojas lanceoladas de 4-8 (-15) cm de longitud, con el ápice redondeado y la base cuneada.Tienen el margen crenulado en su mitad superior, el haz verde brillante y el envés más pálido.Pecíolo ligeramente marginado.Flores perfumadas solitarias o agrupadas en inflorescencias axilares, blancas.El fruto es lo más característico, es el más pequeño de todos los cítricos y el único cuya cáscara se puede comer.Frutos pequeños, con semillas, de corteza fina, dulce, aromática y comestible, y de pulpa naranja amarillenta y ligeramente ácida.Sus frutos son muy pequeños y tienen un carácter principalmente ornamental.',15,57.00,45.00),(29,'FR-14','Calamondin Mini',4,'','Frutales Talavera S.A','Se trata de un pequeño arbolito de copa densa, con tendencia a la verticalidad, inerme o con cortas espinas. Sus hojas son pequeñas, elípticas de 5-10 cm de longitud, con los pecíolos estrechamente alados.Posee 1 o 2 flores en situación axilar, al final de las ramillas.Sus frutos son muy pequeños (3-3,5 cm de diámetro), con pocas semillas, esféricos u ovales, con la zona apical aplanada; corteza de color naranja-rojizo, muy fina y fácilmente separable de la pulpa, que es dulce, ácida y comestible..',15,10.00,8.00),(30,'FR-15','Calamondin Copa ',4,'','Frutales Talavera S.A','Se trata de un pequeño arbolito de copa densa, con tendencia a la verticalidad, inerme o con cortas espinas. Sus hojas son pequeñas, elípticas de 5-10 cm de longitud, con los pecíolos estrechamente alados.Posee 1 o 2 flores en situación axilar, al final de las ramillas.Sus frutos son muy pequeños (3-3,5 cm de diámetro), con pocas semillas, esféricos u ovales, con la zona apical aplanada; corteza de color naranja-rojizo, muy fina y fácilmente separable de la pulpa, que es dulce, ácida y comestible..',15,25.00,20.00),(31,'FR-16','Calamondin Copa EXTRA Con FRUTA',4,'100-120','Frutales Talavera S.A','Se trata de un pequeño arbolito de copa densa, con tendencia a la verticalidad, inerme o con cortas espinas. Sus hojas son pequeñas, elípticas de 5-10 cm de longitud, con los pecíolos estrechamente alados.Posee 1 o 2 flores en situación axilar, al final de las ramillas.Sus frutos son muy pequeños (3-3,5 cm de diámetro), con pocas semillas, esféricos u ovales, con la zona apical aplanada; corteza de color naranja-rojizo, muy fina y fácilmente separable de la pulpa, que es dulce, ácida y comestible..',15,45.00,36.00),(32,'FR-17','Rosal bajo 1Âª -En maceta-inicio brotación',4,'','Frutales Talavera S.A','',15,2.00,1.00),(33,'FR-18','ROSAL TREPADOR',4,'','Frutales Talavera S.A','',350,4.00,3.00),(34,'FR-19','Camelia Blanco, Chrysler Rojo, Soraya Naranja, ',4,'','NaranjasValencianas.com','',350,4.00,3.00),(35,'FR-2','Naranjo -Plantón joven 1 año injerto',4,'','NaranjasValencianas.com','El naranjo es un árbol pequeño, que no supera los 3-5 metros de altura, con una copa compacta, cónica, transformada en esérica gracias a la poda. Su tronco es de color gris y liso, y las hojas son perennes, coriáceas, de un verde intenso y brillante, con forma oval o elíptico-lanceolada. Poseen, en el caso del naranjo amargo, un típico peciolo alado en forma de Â‘corazónÂ’, que en el naranjo dulce es más estrecho y menos patente.',15,6.00,4.00),(36,'FR-20','Landora Amarillo, Rose Gaujard bicolor blanco-rojo',4,'','Frutales Talavera S.A','',350,4.00,3.00),(37,'FR-21','Kordes Perfect bicolor rojo-amarillo, Roundelay rojo fuerte',4,'','Frutales Talavera S.A','',350,4.00,3.00),(38,'FR-22','Pitimini rojo',4,'','Frutales Talavera S.A','',350,4.00,3.00),(39,'FR-23','Rosal copa ',4,'','Frutales Talavera S.A','',400,8.00,6.00),(40,'FR-24','Albaricoquero Corbato',4,'','Melocotones de Cieza S.A.','árbol que puede pasar de los 6 m de altura, en la región mediterránea con ramas formando una copa redondeada. La corteza del tronco es pardo-violácea, agrietada; las ramas son rojizas y extendidas cuando jóvenes y las ramas secundarias son cortas, divergentes y escasas. Las yemas latentes son frecuentes especialmente sobre las ramas viejas.',400,8.00,6.00),(41,'FR-25','Albaricoquero Moniqui',4,'','Melocotones de Cieza S.A.','árbol que puede pasar de los 6 m de altura, en la región mediterránea con ramas formando una copa redondeada. La corteza del tronco es pardo-violácea, agrietada; las ramas son rojizas y extendidas cuando jóvenes y las ramas secundarias son cortas, divergentes y escasas. Las yemas latentes son frecuentes especialmente sobre las ramas viejas.',400,8.00,6.00),(42,'FR-26','Albaricoquero Kurrot',4,'','Melocotones de Cieza S.A.','árbol que puede pasar de los 6 m de altura, en la región mediterránea con ramas formando una copa redondeada. La corteza del tronco es pardo-violácea, agrietada; las ramas son rojizas y extendidas cuando jóvenes y las ramas secundarias son cortas, divergentes y escasas. Las yemas latentes son frecuentes especialmente sobre las ramas viejas.',400,8.00,6.00),(43,'FR-27','Cerezo Burlat',4,'','Jerte Distribuciones S.L.','Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce (Prunus avium), el guindo (P. cerasus) y el cerezo \"Duke\", híbrido de los anteriores. Ambas especies son naturales del sureste de Europa y oeste de Asia. El cerezo dulce tuvo su origen probablemente en el mar Negro y en el mar Caspio, difundiéndose después hacia Europa y Asia, llevado por los pájaros y las migraciones humanas. Fue uno de los frutales más apreciados por los griegos y con el Imperio Romano se extendió a regiones muy diversas. En la actualidad, el cerezo se encuentra difundido por numerosas regiones y países del mundo con clima templado',400,8.00,6.00),(44,'FR-28','Cerezo Picota',4,'','Jerte Distribuciones S.L.','Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce (Prunus avium), el guindo (P. cerasus) y el cerezo \"Duke\", híbrido de los anteriores. Ambas especies son naturales del sureste de Europa y oeste de Asia. El cerezo dulce tuvo su origen probablemente en el mar Negro y en el mar Caspio, difundiéndose después hacia Europa y Asia, llevado por los pájaros y las migraciones humanas. Fue uno de los frutales más apreciados por los griegos y con el Imperio Romano se extendió a regiones muy diversas. En la actualidad, el cerezo se encuentra difundido por numerosas regiones y países del mundo con clima templado',400,8.00,6.00),(45,'FR-29','Cerezo Napoleón',4,'','Jerte Distribuciones S.L.','Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce (Prunus avium), el guindo (P. cerasus) y el cerezo \"Duke\", híbrido de los anteriores. Ambas especies son naturales del sureste de Europa y oeste de Asia. El cerezo dulce tuvo su origen probablemente en el mar Negro y en el mar Caspio, difundiéndose después hacia Europa y Asia, llevado por los pájaros y las migraciones humanas. Fue uno de los frutales más apreciados por los griegos y con el Imperio Romano se extendió a regiones muy diversas. En la actualidad, el cerezo se encuentra difundido por numerosas regiones y países del mundo con clima templado',400,8.00,6.00),(46,'FR-30','Naranjo 2 años injerto',4,'','NaranjasValencianas.com','El naranjo es un árbol pequeño, que no supera los 3-5 metros de altura, con una copa compacta, cónica, transformada en esérica gracias a la poda. Su tronco es de color gris y liso, y las hojas son perennes, coriáceas, de un verde intenso y brillante, con forma oval o elíptico-lanceolada. Poseen, en el caso del naranjo amargo, un típico peciolo alado en forma de Â‘corazónÂ’, que en el naranjo dulce es más estrecho y menos patente.',15,7.00,5.00),(47,'FR-30','Ciruelo R. Claudia Verde   ',4,'','Frutales Talavera S.A','árbol de tamaño mediano que alcanza una altura máxima de 5-6 m. Tronco de corteza pardo-azulada, brillante, lisa o agrietada longitudinalmente. Produce ramas alternas, pequeñas, delgadas, unas veces lisas, glabras y otras pubescentes y vellosas',400,8.00,6.00),(48,'FR-31','Ciruelo Santa Rosa',4,'','Frutales Talavera S.A','árbol de tamaño mediano que alcanza una altura máxima de 5-6 m. Tronco de corteza pardo-azulada, brillante, lisa o agrietada longitudinalmente. Produce ramas alternas, pequeñas, delgadas, unas veces lisas, glabras y otras pubescentes y vellosas',400,8.00,6.00),(49,'FR-32','Ciruelo Golden Japan',4,'','Frutales Talavera S.A','árbol de tamaño mediano que alcanza una altura máxima de 5-6 m. Tronco de corteza pardo-azulada, brillante, lisa o agrietada longitudinalmente. Produce ramas alternas, pequeñas, delgadas, unas veces lisas, glabras y otras pubescentes y vellosas',400,8.00,6.00),(50,'FR-33','Ciruelo Friar',4,'','Frutales Talavera S.A','árbol de tamaño mediano que alcanza una altura máxima de 5-6 m. Tronco de corteza pardo-azulada, brillante, lisa o agrietada longitudinalmente. Produce ramas alternas, pequeñas, delgadas, unas veces lisas, glabras y otras pubescentes y vellosas',400,8.00,6.00),(51,'FR-34','Ciruelo Reina C. De Ollins',4,'','Frutales Talavera S.A','árbol de tamaño mediano que alcanza una altura máxima de 5-6 m. Tronco de corteza pardo-azulada, brillante, lisa o agrietada longitudinalmente. Produce ramas alternas, pequeñas, delgadas, unas veces lisas, glabras y otras pubescentes y vellosas',400,8.00,6.00),(52,'FR-35','Ciruelo Claudia Negra',4,'','Frutales Talavera S.A','árbol de tamaño mediano que alcanza una altura máxima de 5-6 m. Tronco de corteza pardo-azulada, brillante, lisa o agrietada longitudinalmente. Produce ramas alternas, pequeñas, delgadas, unas veces lisas, glabras y otras pubescentes y vellosas',400,8.00,6.00),(53,'FR-36','Granado Mollar de Elche',4,'','Frutales Talavera S.A','pequeño árbol caducifolio, a veces con porte arbustivo, de 3 a 6 m de altura, con el tronco retorcido. Madera dura y corteza escamosa de color grisáceo. Las ramitas jóvenes son más o menos cuadrangulares o angostas y de cuatro alas, posteriormente se vuelven redondas con corteza de color café grisáceo, la mayoría de las ramas, pero especialmente las pequeñas ramitas axilares, son en forma de espina o terminan en una espina aguda; la copa es extendida.',400,9.00,7.00),(54,'FR-37','Higuera Napolitana',4,'','Frutales Talavera S.A','La higuera (Ficus carica L.) es un árbol típico de secano en los países mediterráneos. Su rusticidad y su fácil multiplicación hacen de la higuera un frutal muy apropiado para el cultivo extensivo.. Siempre ha sido considerado como árbol que no requiere cuidado alguno una vez plantado y arraigado, limitándose el hombre a recoger de él los frutos cuando maduran, unos para consumo en fresco y otros para conserva. Las únicas higueras con cuidados culturales esmerados, en muchas comarcas, son las brevales, por el interés económico de su primera cosecha, la de brevas.',400,9.00,7.00),(55,'FR-38','Higuera Verdal',4,'','Frutales Talavera S.A','La higuera (Ficus carica L.) es un árbol típico de secano en los países mediterráneos. Su rusticidad y su fácil multiplicación hacen de la higuera un frutal muy apropiado para el cultivo extensivo.. Siempre ha sido considerado como árbol que no requiere cuidado alguno una vez plantado y arraigado, limitándose el hombre a recoger de él los frutos cuando maduran, unos para consumo en fresco y otros para conserva. Las únicas higueras con cuidados culturales esmerados, en muchas comarcas, son las brevales, por el interés económico de su primera cosecha, la de brevas.',400,9.00,7.00),(56,'FR-39','Higuera Breva',4,'','Frutales Talavera S.A','La higuera (Ficus carica L.) es un árbol típico de secano en los países mediterráneos. Su rusticidad y su fácil multiplicación hacen de la higuera un frutal muy apropiado para el cultivo extensivo.. Siempre ha sido considerado como árbol que no requiere cuidado alguno una vez plantado y arraigado, limitándose el hombre a recoger de él los frutos cuando maduran, unos para consumo en fresco y otros para conserva. Las únicas higueras con cuidados culturales esmerados, en muchas comarcas, son las brevales, por el interés económico de su primera cosecha, la de brevas.',400,9.00,7.00),(57,'FR-4','Naranjo calibre 8/10',4,'','NaranjasValencianas.com','El naranjo es un árbol pequeño, que no supera los 3-5 metros de altura, con una copa compacta, cónica, transformada en esérica gracias a la poda. Su tronco es de color gris y liso, y las hojas son perennes, coriáceas, de un verde intenso y brillante, con forma oval o elíptico-lanceolada. Poseen, en el caso del naranjo amargo, un típico peciolo alado en forma de Â‘corazónÂ’, que en el naranjo dulce es más estrecho y menos patente.',15,29.00,23.00),(58,'FR-40','Manzano Starking Delicious',4,'','Frutales Talavera S.A','alcanza como máximo 10 m. de altura y tiene una copa globosa. Tronco derecho que normalmente alcanza de 2 a 2,5 m. de altura, con corteza cubierta de lenticelas, lisa, adherida, de color ceniciento verdoso sobre los ramos y escamosa y gris parda sobre las partes viejas del árbol. Tiene una vida de unos 60-80 años. Las ramas se insertan en ángulo abierto sobre el tallo, de color verde oscuro, a veces tendiendo a negruzco o violáceo. Los brotes jóvenes terminan con frecuencia en una espina',400,8.00,6.00),(59,'FR-41','Manzano Reineta',4,'','Frutales Talavera S.A','alcanza como máximo 10 m. de altura y tiene una copa globosa. Tronco derecho que normalmente alcanza de 2 a 2,5 m. de altura, con corteza cubierta de lenticelas, lisa, adherida, de color ceniciento verdoso sobre los ramos y escamosa y gris parda sobre las partes viejas del árbol. Tiene una vida de unos 60-80 años. Las ramas se insertan en ángulo abierto sobre el tallo, de color verde oscuro, a veces tendiendo a negruzco o violáceo. Los brotes jóvenes terminan con frecuencia en una espina',400,8.00,6.00),(60,'FR-42','Manzano Golden Delicious',4,'','Frutales Talavera S.A','alcanza como máximo 10 m. de altura y tiene una copa globosa. Tronco derecho que normalmente alcanza de 2 a 2,5 m. de altura, con corteza cubierta de lenticelas, lisa, adherida, de color ceniciento verdoso sobre los ramos y escamosa y gris parda sobre las partes viejas del árbol. Tiene una vida de unos 60-80 años. Las ramas se insertan en ángulo abierto sobre el tallo, de color verde oscuro, a veces tendiendo a negruzco o violáceo. Los brotes jóvenes terminan con frecuencia en una espina',400,8.00,6.00),(61,'FR-43','Membrillero Gigante de Wranja',4,'','Frutales Talavera S.A','',400,8.00,6.00),(62,'FR-44','Melocotonero Spring Crest',4,'','Melocotones de Cieza S.A.','Árbol caducifolio de porte bajo con corteza lisa, de color ceniciento. Sus hojas son alargadas con el margen ligeramente aserrado, de color verde brillante, algo más claras por el envés. El melocotonero está muy arraigado en la cultura asiática.\r\nEn Japón, el noble heroe Momotaro, una especie de Cid japonés, nació del interior de un enorme melocotón que flotaba río abajo.\r\nEn China se piensa que comer melocotón confiere longevidad al ser humano, ya que formaba parte de la dieta de sus dioses inmortales.',400,8.00,6.00),(63,'FR-45','Melocotonero Amarillo de Agosto',4,'','Melocotones de Cieza S.A.','Árbol caducifolio de porte bajo con corteza lisa, de color ceniciento. Sus hojas son alargadas con el margen ligeramente aserrado, de color verde brillante, algo más claras por el envés. El melocotonero está muy arraigado en la cultura asiática.\r\nEn Japón, el noble heroe Momotaro, una especie de Cid japonés, nació del interior de un enorme melocotón que flotaba río abajo.\r\nEn China se piensa que comer melocotón confiere longevidad al ser humano, ya que formaba parte de la dieta de sus dioses inmortales.',400,8.00,6.00),(64,'FR-46','Melocotonero Federica',4,'','Melocotones de Cieza S.A.','Árbol caducifolio de porte bajo con corteza lisa, de color ceniciento. Sus hojas son alargadas con el margen ligeramente aserrado, de color verde brillante, algo más claras por el envés. El melocotonero está muy arraigado en la cultura asiática.\r\nEn Japón, el noble heroe Momotaro, una especie de Cid japonés, nació del interior de un enorme melocotón que flotaba río abajo.\r\nEn China se piensa que comer melocotón confiere longevidad al ser humano, ya que formaba parte de la dieta de sus dioses inmortales.',400,8.00,6.00),(65,'FR-47','Melocotonero Paraguayo',4,'','Melocotones de Cieza S.A.','Árbol caducifolio de porte bajo con corteza lisa, de color ceniciento. Sus hojas son alargadas con el margen ligeramente aserrado, de color verde brillante, algo más claras por el envés. El melocotonero está muy arraigado en la cultura asiática.\r\nEn Japón, el noble heroe Momotaro, una especie de Cid japonés, nació del interior de un enorme melocotón que flotaba río abajo.\r\nEn China se piensa que comer melocotón confiere longevidad al ser humano, ya que formaba parte de la dieta de sus dioses inmortales.',400,8.00,6.00),(66,'FR-48','Nogal Común',4,'','Frutales Talavera S.A','',400,9.00,7.00),(67,'FR-49','Parra Uva de Mesa',4,'','Frutales Talavera S.A','',400,8.00,6.00),(68,'FR-5','Mandarino -Plantón joven',4,'','Frutales Talavera S.A','',15,6.00,4.00),(69,'FR-50','Peral Castell',4,'','Frutales Talavera S.A','Árbol piramidal, redondeado en su juventud, luego oval, que llega hasta 20 metros de altura y por término medio vive 65 años.Tronco alto, grueso, de corteza agrietada, gris, de la cual se destacan con frecuencia placas lenticulares.Las ramas se insertan formando ángulo agudo con el tronco (45º), de corteza lisa, primero verde y luego gris-violácea, con numerosas lenticelas.',400,8.00,6.00),(70,'FR-51','Peral Williams',4,'','Frutales Talavera S.A','Árbol piramidal, redondeado en su juventud, luego oval, que llega hasta 20 metros de altura y por término medio vive 65 años.Tronco alto, grueso, de corteza agrietada, gris, de la cual se destacan con frecuencia placas lenticulares.Las ramas se insertan formando ángulo agudo con el tronco (45º), de corteza lisa, primero verde y luego gris-violácea, con numerosas lenticelas.',400,8.00,6.00),(71,'FR-52','Peral Conference',4,'','Frutales Talavera S.A','Árbol piramidal, redondeado en su juventud, luego oval, que llega hasta 20 metros de altura y por término medio vive 65 años.Tronco alto, grueso, de corteza agrietada, gris, de la cual se destacan con frecuencia placas lenticulares.Las ramas se insertan formando ángulo agudo con el tronco (45º), de corteza lisa, primero verde y luego gris-violácea, con numerosas lenticelas.',400,8.00,6.00),(72,'FR-53','Peral Blanq. de Aranjuez',4,'','Frutales Talavera S.A','Árbol piramidal, redondeado en su juventud, luego oval, que llega hasta 20 metros de altura y por término medio vive 65 años.Tronco alto, grueso, de corteza agrietada, gris, de la cual se destacan con frecuencia placas lenticulares.Las ramas se insertan formando ángulo agudo con el tronco (45º), de corteza lisa, primero verde y luego gris-violácea, con numerosas lenticelas.',400,8.00,6.00),(73,'FR-54','Níspero Tanaca',4,'','Frutales Talavera S.A','Aunque originario del Sudeste de China, el níspero llegó a Europa procedente de Japón en el siglo XVIII como árbol ornamental. En el siglo XIX se inició el consumo de los frutos en toda el área mediterránea, donde se adaptó muy bien a las zonas de cultivo de los cítricos.El cultivo intensivo comenzó a desarrollarse a finales de los años 60 y principios de los 70, cuando comenzaron a implantarse las variedades y técnicas de cultivo actualmente utilizadas.',400,9.00,7.00),(74,'FR-55','Olivo Cipresino',4,'','Frutales Talavera S.A','Existen dos hipótesis sobre el origen del olivo, una que postula que proviene de las costas de Siria, Líbano e Israel y otra que considera que lo considera originario de Asia menor. La llegada a Europa probablemente tuvo lugar de mano de los Fenicios, en transito por Chipre, Creta, e Islas del Mar Egeo, pasando a Grecia y más tarde a Italia. Los primeros indicios de la presencia del olivo en las costas mediterráneas españolas coinciden con el dominio romano, aunque fueron posteriormente los árabes los que impulsaron su cultivo en Andalucía, convirtiendo a España en el primer país productor de aceite de oliva a nivel mundial.',400,8.00,6.00),(75,'FR-56','Nectarina',4,'','Frutales Talavera S.A','',400,8.00,6.00),(76,'FR-57','Kaki Rojo Brillante',4,'','NaranjasValencianas.com','De crecimiento algo lento los primeros años, llega a alcanzar hasta doce metros de altura o más, aunque en cultivo se prefiere algo más bajo (5-6). Tronco corto y copa extendida. Ramifica muy poco debido a la dominancia apical. Porte más o menos piramidal, aunque con la edad se hace más globoso.',400,9.00,7.00),(77,'FR-58','Albaricoquero',4,'8/10','Melocotones de Cieza S.A.','árbol que puede pasar de los 6 m de altura, en la región mediterránea con ramas formando una copa redondeada. La corteza del tronco es pardo-violácea, agrietada; las ramas son rojizas y extendidas cuando jóvenes y las ramas secundarias son cortas, divergentes y escasas. Las yemas latentes son frecuentes especialmente sobre las ramas viejas.',200,11.00,8.00),(78,'FR-59','Albaricoquero',4,'10/12','Melocotones de Cieza S.A.','árbol que puede pasar de los 6 m de altura, en la región mediterránea con ramas formando una copa redondeada. La corteza del tronco es pardo-violácea, agrietada; las ramas son rojizas y extendidas cuando jóvenes y las ramas secundarias son cortas, divergentes y escasas. Las yemas latentes son frecuentes especialmente sobre las ramas viejas.',200,22.00,17.00),(79,'FR-6','Mandarino 2 años injerto',4,'','Frutales Talavera S.A','',15,7.00,5.00),(80,'FR-60','Albaricoquero',4,'12/14','Melocotones de Cieza S.A.','árbol que puede pasar de los 6 m de altura, en la región mediterránea con ramas formando una copa redondeada. La corteza del tronco es pardo-violácea, agrietada; las ramas son rojizas y extendidas cuando jóvenes y las ramas secundarias son cortas, divergentes y escasas. Las yemas latentes son frecuentes especialmente sobre las ramas viejas.',200,32.00,25.00),(81,'FR-61','Albaricoquero',4,'14/16','Melocotones de Cieza S.A.','árbol que puede pasar de los 6 m de altura, en la región mediterránea con ramas formando una copa redondeada. La corteza del tronco es pardo-violácea, agrietada; las ramas son rojizas y extendidas cuando jóvenes y las ramas secundarias son cortas, divergentes y escasas. Las yemas latentes son frecuentes especialmente sobre las ramas viejas.',200,49.00,39.00),(82,'FR-62','Albaricoquero',4,'16/18','Melocotones de Cieza S.A.','árbol que puede pasar de los 6 m de altura, en la región mediterránea con ramas formando una copa redondeada. La corteza del tronco es pardo-violácea, agrietada; las ramas son rojizas y extendidas cuando jóvenes y las ramas secundarias son cortas, divergentes y escasas. Las yemas latentes son frecuentes especialmente sobre las ramas viejas.',200,70.00,56.00),(83,'FR-63','Cerezo',4,'8/10','Jerte Distribuciones S.L.','Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce (Prunus avium), el guindo (P. cerasus) y el cerezo \"Duke\", híbrido de los anteriores. Ambas especies son naturales del sureste de Europa y oeste de Asia. El cerezo dulce tuvo su origen probablemente en el mar Negro y en el mar Caspio, difundiéndose después hacia Europa y Asia, llevado por los pájaros y las migraciones humanas. Fue uno de los frutales más apreciados por los griegos y con el Imperio Romano se extendió a regiones muy diversas. En la actualidad, el cerezo se encuentra difundido por numerosas regiones y países del mundo con clima templado',300,11.00,8.00),(84,'FR-64','Cerezo',4,'10/12','Jerte Distribuciones S.L.','Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce (Prunus avium), el guindo (P. cerasus) y el cerezo \"Duke\", híbrido de los anteriores. Ambas especies son naturales del sureste de Europa y oeste de Asia. El cerezo dulce tuvo su origen probablemente en el mar Negro y en el mar Caspio, difundiéndose después hacia Europa y Asia, llevado por los pájaros y las migraciones humanas. Fue uno de los frutales más apreciados por los griegos y con el Imperio Romano se extendió a regiones muy diversas. En la actualidad, el cerezo se encuentra difundido por numerosas regiones y países del mundo con clima templado',15,22.00,17.00),(85,'FR-65','Cerezo',4,'12/14','Jerte Distribuciones S.L.','Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce (Prunus avium), el guindo (P. cerasus) y el cerezo \"Duke\", híbrido de los anteriores. Ambas especies son naturales del sureste de Europa y oeste de Asia. El cerezo dulce tuvo su origen probablemente en el mar Negro y en el mar Caspio, difundiéndose después hacia Europa y Asia, llevado por los pájaros y las migraciones humanas. Fue uno de los frutales más apreciados por los griegos y con el Imperio Romano se extendió a regiones muy diversas. En la actualidad, el cerezo se encuentra difundido por numerosas regiones y países del mundo con clima templado',200,32.00,25.00),(86,'FR-66','Cerezo',4,'14/16','Jerte Distribuciones S.L.','Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce (Prunus avium), el guindo (P. cerasus) y el cerezo \"Duke\", híbrido de los anteriores. Ambas especies son naturales del sureste de Europa y oeste de Asia. El cerezo dulce tuvo su origen probablemente en el mar Negro y en el mar Caspio, difundiéndose después hacia Europa y Asia, llevado por los pájaros y las migraciones humanas. Fue uno de los frutales más apreciados por los griegos y con el Imperio Romano se extendió a regiones muy diversas. En la actualidad, el cerezo se encuentra difundido por numerosas regiones y países del mundo con clima templado',50,49.00,39.00),(87,'FR-67','Cerezo',4,'16/18','Jerte Distribuciones S.L.','Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce (Prunus avium), el guindo (P. cerasus) y el cerezo \"Duke\", híbrido de los anteriores. Ambas especies son naturales del sureste de Europa y oeste de Asia. El cerezo dulce tuvo su origen probablemente en el mar Negro y en el mar Caspio, difundiéndose después hacia Europa y Asia, llevado por los pájaros y las migraciones humanas. Fue uno de los frutales más apreciados por los griegos y con el Imperio Romano se extendió a regiones muy diversas. En la actualidad, el cerezo se encuentra difundido por numerosas regiones y países del mundo con clima templado',50,70.00,56.00),(88,'FR-68','Cerezo',4,'18/20','Jerte Distribuciones S.L.','Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce (Prunus avium), el guindo (P. cerasus) y el cerezo \"Duke\", híbrido de los anteriores. Ambas especies son naturales del sureste de Europa y oeste de Asia. El cerezo dulce tuvo su origen probablemente en el mar Negro y en el mar Caspio, difundiéndose después hacia Europa y Asia, llevado por los pájaros y las migraciones humanas. Fue uno de los frutales más apreciados por los griegos y con el Imperio Romano se extendió a regiones muy diversas. En la actualidad, el cerezo se encuentra difundido por numerosas regiones y países del mundo con clima templado',50,80.00,64.00),(89,'FR-69','Cerezo',4,'20/25','Jerte Distribuciones S.L.','Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce (Prunus avium), el guindo (P. cerasus) y el cerezo \"Duke\", híbrido de los anteriores. Ambas especies son naturales del sureste de Europa y oeste de Asia. El cerezo dulce tuvo su origen probablemente en el mar Negro y en el mar Caspio, difundiéndose después hacia Europa y Asia, llevado por los pájaros y las migraciones humanas. Fue uno de los frutales más apreciados por los griegos y con el Imperio Romano se extendió a regiones muy diversas. En la actualidad, el cerezo se encuentra difundido por numerosas regiones y países del mundo con clima templado',50,91.00,72.00),(90,'FR-7','Mandarino calibre 8/10',4,'','Frutales Talavera S.A','',15,29.00,23.00),(91,'FR-70','Ciruelo',4,'8/10','Frutales Talavera S.A','árbol de tamaño mediano que alcanza una altura máxima de 5-6 m. Tronco de corteza pardo-azulada, brillante, lisa o agrietada longitudinalmente. Produce ramas alternas, pequeñas, delgadas, unas veces lisas, glabras y otras pubescentes y vellosas',50,11.00,8.00),(92,'FR-71','Ciruelo',4,'10/12','Frutales Talavera S.A','árbol de tamaño mediano que alcanza una altura máxima de 5-6 m. Tronco de corteza pardo-azulada, brillante, lisa o agrietada longitudinalmente. Produce ramas alternas, pequeñas, delgadas, unas veces lisas, glabras y otras pubescentes y vellosas',50,22.00,17.00),(93,'FR-72','Ciruelo',4,'12/14','Frutales Talavera S.A','árbol de tamaño mediano que alcanza una altura máxima de 5-6 m. Tronco de corteza pardo-azulada, brillante, lisa o agrietada longitudinalmente. Produce ramas alternas, pequeñas, delgadas, unas veces lisas, glabras y otras pubescentes y vellosas',50,32.00,25.00),(94,'FR-73','Granado',4,'8/10','Frutales Talavera S.A','pequeño árbol caducifolio, a veces con porte arbustivo, de 3 a 6 m de altura, con el tronco retorcido. Madera dura y corteza escamosa de color grisáceo. Las ramitas jóvenes son más o menos cuadrangulares o angostas y de cuatro alas, posteriormente se vuelven redondas con corteza de color café grisáceo, la mayoría de las ramas, pero especialmente las pequeñas ramitas axilares, son en forma de espina o terminan en una espina aguda; la copa es extendida.',50,13.00,10.00),(95,'FR-74','Granado',4,'10/12','Frutales Talavera S.A','pequeño árbol caducifolio, a veces con porte arbustivo, de 3 a 6 m de altura, con el tronco retorcido. Madera dura y corteza escamosa de color grisáceo. Las ramitas jóvenes son más o menos cuadrangulares o angostas y de cuatro alas, posteriormente se vuelven redondas con corteza de color café grisáceo, la mayoría de las ramas, pero especialmente las pequeñas ramitas axilares, son en forma de espina o terminan en una espina aguda; la copa es extendida.',50,22.00,17.00),(96,'FR-75','Granado',4,'12/14','Frutales Talavera S.A','pequeño árbol caducifolio, a veces con porte arbustivo, de 3 a 6 m de altura, con el tronco retorcido. Madera dura y corteza escamosa de color grisáceo. Las ramitas jóvenes son más o menos cuadrangulares o angostas y de cuatro alas, posteriormente se vuelven redondas con corteza de color café grisáceo, la mayoría de las ramas, pero especialmente las pequeñas ramitas axilares, son en forma de espina o terminan en una espina aguda; la copa es extendida.',50,32.00,25.00),(97,'FR-76','Granado',4,'14/16','Frutales Talavera S.A','pequeño árbol caducifolio, a veces con porte arbustivo, de 3 a 6 m de altura, con el tronco retorcido. Madera dura y corteza escamosa de color grisáceo. Las ramitas jóvenes son más o menos cuadrangulares o angostas y de cuatro alas, posteriormente se vuelven redondas con corteza de color café grisáceo, la mayoría de las ramas, pero especialmente las pequeñas ramitas axilares, son en forma de espina o terminan en una espina aguda; la copa es extendida.',50,49.00,39.00),(98,'FR-77','Granado',4,'16/18','Frutales Talavera S.A','pequeño árbol caducifolio, a veces con porte arbustivo, de 3 a 6 m de altura, con el tronco retorcido. Madera dura y corteza escamosa de color grisáceo. Las ramitas jóvenes son más o menos cuadrangulares o angostas y de cuatro alas, posteriormente se vuelven redondas con corteza de color café grisáceo, la mayoría de las ramas, pero especialmente las pequeñas ramitas axilares, son en forma de espina o terminan en una espina aguda; la copa es extendida.',50,70.00,56.00),(99,'FR-78','Higuera',4,'8/10','Frutales Talavera S.A','La higuera (Ficus carica L.) es un árbol típico de secano en los países mediterráneos. Su rusticidad y su fácil multiplicación hacen de la higuera un frutal muy apropiado para el cultivo extensivo.. Siempre ha sido considerado como árbol que no requiere cuidado alguno una vez plantado y arraigado, limitándose el hombre a recoger de él los frutos cuando maduran, unos para consumo en fresco y otros para conserva. Las únicas higueras con cuidados culturales esmerados, en muchas comarcas, son las brevales, por el interés económico de su primera cosecha, la de brevas.',50,15.00,12.00),(100,'FR-79','Higuera',4,'10/12','Frutales Talavera S.A','La higuera (Ficus carica L.) es un árbol típico de secano en los países mediterráneos. Su rusticidad y su fácil multiplicación hacen de la higuera un frutal muy apropiado para el cultivo extensivo.. Siempre ha sido considerado como árbol que no requiere cuidado alguno una vez plantado y arraigado, limitándose el hombre a recoger de él los frutos cuando maduran, unos para consumo en fresco y otros para conserva. Las únicas higueras con cuidados culturales esmerados, en muchas comarcas, son las brevales, por el interés económico de su primera cosecha, la de brevas.',50,22.00,17.00),(101,'FR-8','Limonero -Plantón joven',4,'','NaranjasValencianas.com','El limonero, pertenece al grupo de los cítricos, teniendo su origen hace unos 20 millones de años en el sudeste asiático. Fue introducido por los árabes en el área mediterránea entre los años 1.000 a 1.200, habiendo experimentando numerosas modificaciones debidas tanto a la selección natural mediante hibridaciones espontáneas como a las producidas por el',15,6.00,4.00),(102,'FR-80','Higuera',4,'12/14','Frutales Talavera S.A','La higuera (Ficus carica L.) es un árbol típico de secano en los países mediterráneos. Su rusticidad y su fácil multiplicación hacen de la higuera un frutal muy apropiado para el cultivo extensivo.. Siempre ha sido considerado como árbol que no requiere cuidado alguno una vez plantado y arraigado, limitándose el hombre a recoger de él los frutos cuando maduran, unos para consumo en fresco y otros para conserva. Las únicas higueras con cuidados culturales esmerados, en muchas comarcas, son las brevales, por el interés económico de su primera cosecha, la de brevas.',50,32.00,25.00),(103,'FR-81','Higuera',4,'14/16','Frutales Talavera S.A','La higuera (Ficus carica L.) es un árbol típico de secano en los países mediterráneos. Su rusticidad y su fácil multiplicación hacen de la higuera un frutal muy apropiado para el cultivo extensivo.. Siempre ha sido considerado como árbol que no requiere cuidado alguno una vez plantado y arraigado, limitándose el hombre a recoger de él los frutos cuando maduran, unos para consumo en fresco y otros para conserva. Las únicas higueras con cuidados culturales esmerados, en muchas comarcas, son las brevales, por el interés económico de su primera cosecha, la de brevas.',50,49.00,39.00),(104,'FR-82','Higuera',4,'16/18','Frutales Talavera S.A','La higuera (Ficus carica L.) es un árbol típico de secano en los países mediterráneos. Su rusticidad y su fácil multiplicación hacen de la higuera un frutal muy apropiado para el cultivo extensivo.. Siempre ha sido considerado como árbol que no requiere cuidado alguno una vez plantado y arraigado, limitándose el hombre a recoger de él los frutos cuando maduran, unos para consumo en fresco y otros para conserva. Las únicas higueras con cuidados culturales esmerados, en muchas comarcas, son las brevales, por el interés económico de su primera cosecha, la de brevas.',50,70.00,56.00),(105,'FR-83','Higuera',4,'18/20','Frutales Talavera S.A','La higuera (Ficus carica L.) es un árbol típico de secano en los países mediterráneos. Su rusticidad y su fácil multiplicación hacen de la higuera un frutal muy apropiado para el cultivo extensivo.. Siempre ha sido considerado como árbol que no requiere cuidado alguno una vez plantado y arraigado, limitándose el hombre a recoger de él los frutos cuando maduran, unos para consumo en fresco y otros para conserva. Las únicas higueras con cuidados culturales esmerados, en muchas comarcas, son las brevales, por el interés económico de su primera cosecha, la de brevas.',50,80.00,64.00),(106,'FR-84','Kaki',4,'8/10','NaranjasValencianas.com','De crecimiento algo lento los primeros años, llega a alcanzar hasta doce metros de altura o más, aunque en cultivo se prefiere algo más bajo (5-6). Tronco corto y copa extendida. Ramifica muy poco debido a la dominancia apical. Porte más o menos piramidal, aunque con la edad se hace más globoso.',50,13.00,10.00),(107,'FR-85','Kaki',4,'16/18','NaranjasValencianas.com','De crecimiento algo lento los primeros años, llega a alcanzar hasta doce metros de altura o más, aunque en cultivo se prefiere algo más bajo (5-6). Tronco corto y copa extendida. Ramifica muy poco debido a la dominancia apical. Porte más o menos piramidal, aunque con la edad se hace más globoso.',50,70.00,56.00),(108,'FR-86','Manzano',4,'8/10','Frutales Talavera S.A','alcanza como máximo 10 m. de altura y tiene una copa globosa. Tronco derecho que normalmente alcanza de 2 a 2,5 m. de altura, con corteza cubierta de lenticelas, lisa, adherida, de color ceniciento verdoso sobre los ramos y escamosa y gris parda sobre las partes viejas del árbol. Tiene una vida de unos 60-80 años. Las ramas se insertan en ángulo abierto sobre el tallo, de color verde oscuro, a veces tendiendo a negruzco o violáceo. Los brotes jóvenes terminan con frecuencia en una espina',50,11.00,8.00),(109,'FR-87','Manzano',4,'10/12','Frutales Talavera S.A','alcanza como máximo 10 m. de altura y tiene una copa globosa. Tronco derecho que normalmente alcanza de 2 a 2,5 m. de altura, con corteza cubierta de lenticelas, lisa, adherida, de color ceniciento verdoso sobre los ramos y escamosa y gris parda sobre las partes viejas del árbol. Tiene una vida de unos 60-80 años. Las ramas se insertan en ángulo abierto sobre el tallo, de color verde oscuro, a veces tendiendo a negruzco o violáceo. Los brotes jóvenes terminan con frecuencia en una espina',50,22.00,17.00),(110,'FR-88','Manzano',4,'12/14','Frutales Talavera S.A','alcanza como máximo 10 m. de altura y tiene una copa globosa. Tronco derecho que normalmente alcanza de 2 a 2,5 m. de altura, con corteza cubierta de lenticelas, lisa, adherida, de color ceniciento verdoso sobre los ramos y escamosa y gris parda sobre las partes viejas del árbol. Tiene una vida de unos 60-80 años. Las ramas se insertan en ángulo abierto sobre el tallo, de color verde oscuro, a veces tendiendo a negruzco o violáceo. Los brotes jóvenes terminan con frecuencia en una espina',50,32.00,25.00),(111,'FR-89','Manzano',4,'14/16','Frutales Talavera S.A','alcanza como máximo 10 m. de altura y tiene una copa globosa. Tronco derecho que normalmente alcanza de 2 a 2,5 m. de altura, con corteza cubierta de lenticelas, lisa, adherida, de color ceniciento verdoso sobre los ramos y escamosa y gris parda sobre las partes viejas del árbol. Tiene una vida de unos 60-80 años. Las ramas se insertan en ángulo abierto sobre el tallo, de color verde oscuro, a veces tendiendo a negruzco o violáceo. Los brotes jóvenes terminan con frecuencia en una espina',50,49.00,39.00),(112,'FR-9','Limonero calibre 8/10',4,'','NaranjasValencianas.com','El limonero, pertenece al grupo de los cítricos, teniendo su origen hace unos 20 millones de años en el sudeste asiático. Fue introducido por los árabes en el área mediterránea entre los años 1.000 a 1.200, habiendo experimentando numerosas modificaciones debidas tanto a la selección natural mediante hibridaciones espontáneas como a las producidas por el',15,29.00,23.00),(113,'FR-90','Níspero',4,'16/18','Frutales Talavera S.A','Aunque originario del Sudeste de China, el níspero llegó a Europa procedente de Japón en el siglo XVIII como árbol ornamental. En el siglo XIX se inició el consumo de los frutos en toda el área mediterránea, donde se adaptó muy bien a las zonas de cultivo de los cítricos.El cultivo intensivo comenzó a desarrollarse a finales de los años 60 y principios de los 70, cuando comenzaron a implantarse las variedades y técnicas de cultivo actualmente utilizadas.',50,70.00,56.00),(114,'FR-91','Níspero',4,'18/20','Frutales Talavera S.A','Aunque originario del Sudeste de China, el níspero llegó a Europa procedente de Japón en el siglo XVIII como árbol ornamental. En el siglo XIX se inició el consumo de los frutos en toda el área mediterránea, donde se adaptó muy bien a las zonas de cultivo de los cítricos.El cultivo intensivo comenzó a desarrollarse a finales de los años 60 y principios de los 70, cuando comenzaron a implantarse las variedades y técnicas de cultivo actualmente utilizadas.',50,80.00,64.00),(115,'FR-92','Melocotonero',4,'8/10','Melocotones de Cieza S.A.','Árbol caducifolio de porte bajo con corteza lisa, de color ceniciento. Sus hojas son alargadas con el margen ligeramente aserrado, de color verde brillante, algo más claras por el envés. El melocotonero está muy arraigado en la cultura asiática.\r\nEn Japón, el noble heroe Momotaro, una especie de Cid japonés, nació del interior de un enorme melocotón que flotaba río abajo.\r\nEn China se piensa que comer melocotón confiere longevidad al ser humano, ya que formaba parte de la dieta de sus dioses inmortales.',50,11.00,8.00),(116,'FR-93','Melocotonero',4,'10/12','Melocotones de Cieza S.A.','Árbol caducifolio de porte bajo con corteza lisa, de color ceniciento. Sus hojas son alargadas con el margen ligeramente aserrado, de color verde brillante, algo más claras por el envés. El melocotonero está muy arraigado en la cultura asiática.\r\nEn Japón, el noble heroe Momotaro, una especie de Cid japonés, nació del interior de un enorme melocotón que flotaba río abajo.\r\nEn China se piensa que comer melocotón confiere longevidad al ser humano, ya que formaba parte de la dieta de sus dioses inmortales.',50,22.00,17.00),(117,'FR-94','Melocotonero',4,'12/14','Melocotones de Cieza S.A.','Árbol caducifolio de porte bajo con corteza lisa, de color ceniciento. Sus hojas son alargadas con el margen ligeramente aserrado, de color verde brillante, algo más claras por el envés. El melocotonero está muy arraigado en la cultura asiática.\r\nEn Japón, el noble heroe Momotaro, una especie de Cid japonés, nació del interior de un enorme melocotón que flotaba río abajo.\r\nEn China se piensa que comer melocotón confiere longevidad al ser humano, ya que formaba parte de la dieta de sus dioses inmortales.',50,32.00,25.00),(118,'FR-95','Melocotonero',4,'14/16','Melocotones de Cieza S.A.','Árbol caducifolio de porte bajo con corteza lisa, de color ceniciento. Sus hojas son alargadas con el margen ligeramente aserrado, de color verde brillante, algo más claras por el envés. El melocotonero está muy arraigado en la cultura asiática.\r\nEn Japón, el noble heroe Momotaro, una especie de Cid japonés, nació del interior de un enorme melocotón que flotaba río abajo.\r\nEn China se piensa que comer melocotón confiere longevidad al ser humano, ya que formaba parte de la dieta de sus dioses inmortales.',50,49.00,39.00),(119,'FR-96','Membrillero',4,'8/10','Frutales Talavera S.A','arbolito caducifolio de 4-6 m de altura con el tronco tortuoso y la corteza lisa, grisácea, que se desprende en escamas con la edad. Copa irregular, con ramas inermes, flexuosas, parduzcas, punteadas. Ramillas jóvenes tomentosas',50,11.00,8.00),(120,'FR-97','Membrillero',4,'10/12','Frutales Talavera S.A','arbolito caducifolio de 4-6 m de altura con el tronco tortuoso y la corteza lisa, grisácea, que se desprende en escamas con la edad. Copa irregular, con ramas inermes, flexuosas, parduzcas, punteadas. Ramillas jóvenes tomentosas',50,22.00,17.00),(121,'FR-98','Membrillero',4,'12/14','Frutales Talavera S.A','arbolito caducifolio de 4-6 m de altura con el tronco tortuoso y la corteza lisa, grisácea, que se desprende en escamas con la edad. Copa irregular, con ramas inermes, flexuosas, parduzcas, punteadas. Ramillas jóvenes tomentosas',50,32.00,25.00),(122,'FR-99','Membrillero',4,'14/16','Frutales Talavera S.A','arbolito caducifolio de 4-6 m de altura con el tronco tortuoso y la corteza lisa, grisácea, que se desprende en escamas con la edad. Copa irregular, con ramas inermes, flexuosas, parduzcas, punteadas. Ramillas jóvenes tomentosas',50,49.00,39.00),(123,'OR-001','Arbustos Mix Maceta',5,'40-60','Valencia Garden Service','',25,5.00,4.00),(124,'OR-100','Mimosa Injerto CLASICA Dealbata ',5,'100-110','Viveros EL OASIS','Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente...',100,12.00,9.00),(125,'OR-101','Expositor Mimosa Semilla Mix',5,'170-200','Viveros EL OASIS','Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente...',100,6.00,4.00),(126,'OR-102','Mimosa Semilla Bayleyana  ',5,'170-200','Viveros EL OASIS','Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente...',100,6.00,4.00),(127,'OR-103','Mimosa Semilla Bayleyana   ',5,'200-225','Viveros EL OASIS','Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente...',100,10.00,8.00),(128,'OR-104','Mimosa Semilla Cyanophylla    ',5,'200-225','Viveros EL OASIS','Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente...',100,10.00,8.00),(129,'OR-105','Mimosa Semilla Espectabilis  ',5,'160-170','Viveros EL OASIS','Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente...',100,6.00,4.00),(130,'OR-106','Mimosa Semilla Longifolia   ',5,'200-225','Viveros EL OASIS','Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente...',100,10.00,8.00),(131,'OR-107','Mimosa Semilla Floribunda 4 estaciones',5,'120-140','Viveros EL OASIS','Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente...',100,6.00,4.00),(132,'OR-108','Abelia Floribunda',5,'35-45','Viveros EL OASIS','',100,5.00,4.00),(133,'OR-109','Callistemom (Mix)',5,'35-45','Viveros EL OASIS','Limpitatubos. arbolito de 6-7 m de altura. Ramas flexibles y colgantes (de ahí lo de \"llorón\")..',100,5.00,4.00),(134,'OR-110','Callistemom (Mix)',5,'40-60','Viveros EL OASIS','Limpitatubos. arbolito de 6-7 m de altura. Ramas flexibles y colgantes (de ahí lo de \"llorón\")..',100,2.00,1.00),(135,'OR-111','Corylus Avellana \"Contorta\"',5,'35-45','Viveros EL OASIS','',100,5.00,4.00),(136,'OR-112','Escallonia (Mix)',5,'35-45','Viveros EL OASIS','',120,5.00,4.00),(137,'OR-113','Evonimus Emerald Gayeti',5,'35-45','Viveros EL OASIS','',120,5.00,4.00),(138,'OR-114','Evonimus Pulchellus',5,'35-45','Viveros EL OASIS','',120,5.00,4.00),(139,'OR-115','Forsytia Intermedia \"Lynwood\"',5,'35-45','Viveros EL OASIS','',120,7.00,5.00),(140,'OR-116','Hibiscus Syriacus  \"Diana\" -Blanco Puro',5,'35-45','Viveros EL OASIS','Por su capacidad de soportar podas, pueden ser fácilmente moldeadas como bonsái en el transcurso de pocos años. Flores de muchos colores según la variedad, desde el blanco puro al rojo intenso, del amarillo al anaranjado. La flor apenas dura 1 día, pero continuamente aparecen nuevas y la floración se prolonga durante todo el periodo de crecimiento vegetativo.',120,7.00,5.00),(141,'OR-117','Hibiscus Syriacus  \"Helene\" -Blanco-C.rojo',5,'35-45','Viveros EL OASIS','Por su capacidad de soportar podas, pueden ser fácilmente moldeadas como bonsái en el transcurso de pocos años. Flores de muchos colores según la variedad, desde el blanco puro al rojo intenso, del amarillo al anaranjado. La flor apenas dura 1 día, pero continuamente aparecen nuevas y la floración se prolonga durante todo el periodo de crecimiento vegetativo.',120,7.00,5.00),(142,'OR-118','Hibiscus Syriacus \"Pink Giant\" Rosa',5,'35-45','Viveros EL OASIS','Por su capacidad de soportar podas, pueden ser fácilmente moldeadas como bonsái en el transcurso de pocos años. Flores de muchos colores según la variedad, desde el blanco puro al rojo intenso, del amarillo al anaranjado. La flor apenas dura 1 día, pero continuamente aparecen nuevas y la floración se prolonga durante todo el periodo de crecimiento vegetativo.',120,7.00,5.00),(143,'OR-119','Laurus Nobilis Arbusto - Ramificado Bajo',5,'40-50','Viveros EL OASIS','',120,5.00,4.00),(144,'OR-120','Lonicera Nitida ',5,'35-45','Viveros EL OASIS','',120,5.00,4.00),(145,'OR-121','Lonicera Nitida \"Maigrum\"',5,'35-45','Viveros EL OASIS','',120,5.00,4.00),(146,'OR-122','Lonicera Pileata',5,'35-45','Viveros EL OASIS','',120,5.00,4.00),(147,'OR-123','Philadelphus \"Virginal\"',5,'35-45','Viveros EL OASIS','',120,5.00,4.00),(148,'OR-124','Prunus pisardii  ',5,'35-45','Viveros EL OASIS','',120,5.00,4.00),(149,'OR-125','Viburnum Tinus \"Eve Price\"',5,'35-45','Viveros EL OASIS','',120,5.00,4.00),(150,'OR-126','Weigelia \"Bristol Ruby\"',5,'35-45','Viveros EL OASIS','',120,5.00,4.00),(151,'OR-127','Camelia japonica',5,'40-60','Viveros EL OASIS','Arbusto excepcional por su floración otoñal, invernal o primaveral. Flores: Las flores son solitarias, aparecen en el ápice de cada rama, y son con una corola simple o doble, y comprendiendo varios colores. Suelen medir unos 7-12 cm de diÃ metro y tienen 5 sépalos y 5 pétalos. Estambres numerosos unidos en la mitad o en 2/3 de su longitud.',50,7.00,5.00),(152,'OR-128','Camelia japonica ejemplar',5,'200-250','Viveros EL OASIS','Arbusto excepcional por su floración otoñal, invernal o primaveral. Flores: Las flores son solitarias, aparecen en el ápice de cada rama, y son con una corola simple o doble, y comprendiendo varios colores. Suelen medir unos 7-12 cm de diÃ metro y tienen 5 sépalos y 5 pétalos. Estambres numerosos unidos en la mitad o en 2/3 de su longitud.',50,98.00,78.00),(153,'OR-129','Camelia japonica ejemplar',5,'250-300','Viveros EL OASIS','Arbusto excepcional por su floración otoñal, invernal o primaveral. Flores: Las flores son solitarias, aparecen en el ápice de cada rama, y son con una corola simple o doble, y comprendiendo varios colores. Suelen medir unos 7-12 cm de diÃ metro y tienen 5 sépalos y 5 pétalos. Estambres numerosos unidos en la mitad o en 2/3 de su longitud.',50,110.00,88.00),(154,'OR-130','Callistemom COPA',5,'110/120','Viveros EL OASIS','Limpitatubos. arbolito de 6-7 m de altura. Ramas flexibles y colgantes (de ahí lo de \"llorón\")..',50,18.00,14.00),(155,'OR-131','Leptospermum formado PIRAMIDE',5,'80-100','Viveros EL OASIS','',50,18.00,14.00),(156,'OR-132','Leptospermum COPA',5,'110/120','Viveros EL OASIS','',50,18.00,14.00),(157,'OR-133','Nerium oleander-CALIDAD \"GARDEN\"',5,'40-45','Viveros EL OASIS','',50,2.00,1.00),(158,'OR-134','Nerium Oleander Arbusto GRANDE',5,'160-200','Viveros EL OASIS','',100,38.00,30.00),(159,'OR-135','Nerium oleander COPA  Calibre 6/8',5,'50-60','Viveros EL OASIS','',100,5.00,4.00),(160,'OR-136','Nerium oleander ARBOL Calibre 8/10',5,'225-250','Viveros EL OASIS','',100,18.00,14.00),(161,'OR-137','ROSAL TREPADOR',5,'','Viveros EL OASIS','',100,4.00,3.00),(162,'OR-138','Camelia Blanco, Chrysler Rojo, Soraya Naranja, ',5,'','Viveros EL OASIS','',100,4.00,3.00),(163,'OR-139','Landora Amarillo, Rose Gaujard bicolor blanco-rojo',5,'','Viveros EL OASIS','',100,4.00,3.00),(164,'OR-140','Kordes Perfect bicolor rojo-amarillo, Roundelay rojo fuerte',5,'','Viveros EL OASIS','',100,4.00,3.00),(165,'OR-141','Pitimini rojo',5,'','Viveros EL OASIS','',100,4.00,3.00),(166,'OR-142','Solanum Jazminoide',5,'150-160','Viveros EL OASIS','',100,2.00,1.00),(167,'OR-143','Wisteria Sinensis  azul, rosa, blanca',5,'','Viveros EL OASIS','',100,9.00,7.00),(168,'OR-144','Wisteria Sinensis INJERTADAS DECÃ“',5,'140-150','Viveros EL OASIS','',100,12.00,9.00),(169,'OR-145','Bougamvillea Sanderiana Tutor',5,'80-100','Viveros EL OASIS','',100,2.00,1.00),(170,'OR-146','Bougamvillea Sanderiana Tutor',5,'125-150','Viveros EL OASIS','',100,4.00,3.00),(171,'OR-147','Bougamvillea Sanderiana Tutor',5,'180-200','Viveros EL OASIS','',100,7.00,5.00),(172,'OR-148','Bougamvillea Sanderiana Espaldera',5,'45-50','Viveros EL OASIS','',100,7.00,5.00),(173,'OR-149','Bougamvillea Sanderiana Espaldera',5,'140-150','Viveros EL OASIS','',100,17.00,13.00),(174,'OR-150','Bougamvillea roja, naranja',5,'110-130','Viveros EL OASIS','',100,2.00,1.00),(175,'OR-151','Bougamvillea Sanderiana, 3 tut. piramide',5,'','Viveros EL OASIS','',100,6.00,4.00),(176,'OR-152','Expositor Árboles clima continental',5,'170-200','Viveros EL OASIS','',100,6.00,4.00),(177,'OR-153','Expositor Árboles clima mediterráneo',5,'170-200','Viveros EL OASIS','',100,6.00,4.00),(178,'OR-154','Expositor Árboles borde del mar',5,'170-200','Viveros EL OASIS','',100,6.00,4.00),(179,'OR-155','Acer Negundo  ',5,'200-225','Viveros EL OASIS','',100,6.00,4.00),(180,'OR-156','Acer platanoides  ',5,'200-225','Viveros EL OASIS','',100,10.00,8.00),(181,'OR-157','Acer Pseudoplatanus ',5,'200-225','Viveros EL OASIS','',100,10.00,8.00),(182,'OR-158','Brachychiton Acerifolius  ',5,'200-225','Viveros EL OASIS','',100,6.00,4.00),(183,'OR-159','Brachychiton Discolor  ',5,'200-225','Viveros EL OASIS','',100,6.00,4.00),(184,'OR-160','Brachychiton Rupestris',5,'170-200','Viveros EL OASIS','',100,10.00,8.00),(185,'OR-161','Cassia Corimbosa  ',5,'200-225','Viveros EL OASIS','',100,6.00,4.00),(186,'OR-162','Cassia Corimbosa ',5,'200-225','Viveros EL OASIS','',100,10.00,8.00),(187,'OR-163','Chitalpa Summer Bells   ',5,'200-225','Viveros EL OASIS','',80,10.00,8.00),(188,'OR-164','Erytrina Kafra',5,'170-180','Viveros EL OASIS','',80,6.00,4.00),(189,'OR-165','Erytrina Kafra',5,'200-225','Viveros EL OASIS','',80,10.00,8.00),(190,'OR-166','Eucalyptus Citriodora  ',5,'170-200','Viveros EL OASIS','',80,6.00,4.00),(191,'OR-167','Eucalyptus Ficifolia  ',5,'170-200','Viveros EL OASIS','',80,6.00,4.00),(192,'OR-168','Eucalyptus Ficifolia   ',5,'200-225','Viveros EL OASIS','',80,10.00,8.00),(193,'OR-169','Hibiscus Syriacus  Var. Injertadas 1 Tallo ',5,'170-200','Viveros EL OASIS','',80,12.00,9.00),(194,'OR-170','Lagunaria Patersonii  ',5,'140-150','Viveros EL OASIS','',80,6.00,4.00),(195,'OR-171','Lagunaria Patersonii   ',5,'200-225','Viveros EL OASIS','',80,10.00,8.00),(196,'OR-172','Lagunaria patersonii  calibre 8/10',5,'200-225','Viveros EL OASIS','',80,18.00,14.00),(197,'OR-173','Morus Alba  ',5,'200-225','Viveros EL OASIS','',80,6.00,4.00),(198,'OR-174','Morus Alba  calibre 8/10',5,'200-225','Viveros EL OASIS','',80,18.00,14.00),(199,'OR-175','Platanus Acerifolia   ',5,'200-225','Viveros EL OASIS','',80,10.00,8.00),(200,'OR-176','Prunus pisardii  ',5,'200-225','Viveros EL OASIS','',80,10.00,8.00),(201,'OR-177','Robinia Pseudoacacia Casque Rouge   ',5,'200-225','Viveros EL OASIS','',80,15.00,12.00),(202,'OR-178','Salix Babylonica  Pendula  ',5,'170-200','Viveros EL OASIS','',80,6.00,4.00),(203,'OR-179','Sesbania Punicea   ',5,'170-200','Viveros EL OASIS','',80,6.00,4.00),(204,'OR-180','Tamarix  Ramosissima Pink Cascade   ',5,'170-200','Viveros EL OASIS','',80,6.00,4.00),(205,'OR-181','Tamarix  Ramosissima Pink Cascade   ',5,'200-225','Viveros EL OASIS','',80,10.00,8.00),(206,'OR-182','Tecoma Stands   ',5,'200-225','Viveros EL OASIS','',80,6.00,4.00),(207,'OR-183','Tecoma Stands  ',5,'200-225','Viveros EL OASIS','',80,10.00,8.00),(208,'OR-184','Tipuana Tipu  ',5,'170-200','Viveros EL OASIS','',80,6.00,4.00),(209,'OR-185','Pleioblastus distichus-Bambú enano',5,'15-20','Viveros EL OASIS','',80,6.00,4.00),(210,'OR-186','Sasa palmata ',5,'20-30','Viveros EL OASIS','',80,6.00,4.00),(211,'OR-187','Sasa palmata ',5,'40-45','Viveros EL OASIS','',80,10.00,8.00),(212,'OR-188','Sasa palmata ',5,'50-60','Viveros EL OASIS','',80,25.00,20.00),(213,'OR-189','Phylostachys aurea',5,'180-200','Viveros EL OASIS','',80,22.00,17.00),(214,'OR-190','Phylostachys aurea',5,'250-300','Viveros EL OASIS','',80,32.00,25.00),(215,'OR-191','Phylostachys Bambusa Spectabilis',5,'180-200','Viveros EL OASIS','',80,24.00,19.00),(216,'OR-192','Phylostachys biseti',5,'160-170','Viveros EL OASIS','',80,22.00,17.00),(217,'OR-193','Phylostachys biseti',5,'160-180','Viveros EL OASIS','',80,20.00,16.00),(218,'OR-194','Pseudosasa japonica (Metake)',5,'225-250','Viveros EL OASIS','',80,20.00,16.00),(219,'OR-195','Pseudosasa japonica (Metake) ',5,'30-40','Viveros EL OASIS','',80,6.00,4.00),(220,'OR-196','Cedrus Deodara ',5,'80-100','Viveros EL OASIS','',80,10.00,8.00),(221,'OR-197','Cedrus Deodara \"Feeling Blue\" Novedad',5,'rastrero','Viveros EL OASIS','',80,12.00,9.00),(222,'OR-198','Juniperus chinensis \"Blue Alps\"',5,'20-30','Viveros EL OASIS','',80,4.00,3.00),(223,'OR-199','Juniperus Chinensis Stricta',5,'20-30','Viveros EL OASIS','',80,4.00,3.00),(224,'OR-200','Juniperus horizontalis Wiltonii',5,'20-30','Viveros EL OASIS','',80,4.00,3.00),(225,'OR-201','Juniperus squamata \"Blue Star\"',5,'20-30','Viveros EL OASIS','',80,4.00,3.00),(226,'OR-202','Juniperus x media Phitzeriana verde',5,'20-30','Viveros EL OASIS','',80,4.00,3.00),(227,'OR-203','Pinus Canariensis',5,'80-100','Viveros EL OASIS','',80,10.00,8.00),(228,'OR-204','Pinus Halepensis',5,'160-180','Viveros EL OASIS','',80,10.00,8.00),(229,'OR-205','Pinus Pinea -Pino Piñonero',5,'70-80','Viveros EL OASIS','',80,10.00,8.00),(230,'OR-206','Thuja Esmeralda ',5,'80-100','Viveros EL OASIS','',80,5.00,4.00),(231,'OR-207','Tuja Occidentalis Woodwardii',5,'20-30','Viveros EL OASIS','',80,4.00,3.00),(232,'OR-208','Tuja orientalis \"Aurea nana\"',5,'20-30','Viveros EL OASIS','',80,4.00,3.00),(233,'OR-209','Archontophoenix Cunninghamiana',5,'80 - 100','Viveros EL OASIS','',80,10.00,8.00),(234,'OR-210','Beucarnea Recurvata',5,'130  - 150','Viveros EL OASIS','',2,39.00,31.00),(235,'OR-211','Beucarnea Recurvata',5,'180 - 200','Viveros EL OASIS','',5,59.00,47.00),(236,'OR-212','Bismarckia Nobilis',5,'200 - 220','Viveros EL OASIS','',4,217.00,173.00),(237,'OR-213','Bismarckia Nobilis',5,'240 - 260','Viveros EL OASIS','',4,266.00,212.00),(238,'OR-214','Brahea Armata',5,'45 - 60','Viveros EL OASIS','',0,10.00,8.00),(239,'OR-215','Brahea Armata',5,'120 - 140','Viveros EL OASIS','',100,112.00,89.00),(240,'OR-216','Brahea Edulis',5,'80 - 100','Viveros EL OASIS','',100,19.00,15.00),(241,'OR-217','Brahea Edulis',5,'140 - 160','Viveros EL OASIS','',100,64.00,51.00),(242,'OR-218','Butia Capitata',5,'70 - 90','Viveros EL OASIS','',100,25.00,20.00),(243,'OR-219','Butia Capitata',5,'90 - 110','Viveros EL OASIS','',100,29.00,23.00),(244,'OR-220','Butia Capitata',5,'90 - 120','Viveros EL OASIS','',100,36.00,28.00),(245,'OR-221','Butia Capitata',5,'85 - 105','Viveros EL OASIS','',100,59.00,47.00),(246,'OR-222','Butia Capitata',5,'130 - 150','Viveros EL OASIS','',100,87.00,69.00),(247,'OR-223','Chamaerops Humilis',5,'40 - 45','Viveros EL OASIS','',100,4.00,3.00),(248,'OR-224','Chamaerops Humilis',5,'50 - 60','Viveros EL OASIS','',100,7.00,5.00),(249,'OR-225','Chamaerops Humilis',5,'70 - 90','Viveros EL OASIS','',100,10.00,8.00),(250,'OR-226','Chamaerops Humilis',5,'115 - 130','Viveros EL OASIS','',100,38.00,30.00),(251,'OR-227','Chamaerops Humilis',5,'130 - 150','Viveros EL OASIS','',100,64.00,51.00),(252,'OR-228','Chamaerops Humilis \"Cerifera\"',5,'70 - 80','Viveros EL OASIS','',100,32.00,25.00),(253,'OR-229','Chrysalidocarpus Lutescens -ARECA',5,'130 - 150','Viveros EL OASIS','',100,22.00,17.00),(254,'OR-230','Cordyline Australis -DRACAENA',5,'190 - 210','Viveros EL OASIS','',100,38.00,30.00),(255,'OR-231','Cycas Revoluta',5,'55 - 65','Viveros EL OASIS','',100,15.00,12.00),(256,'OR-232','Cycas Revoluta',5,'80 - 90','Viveros EL OASIS','',100,34.00,27.00),(257,'OR-233','Dracaena Drago',5,'60 - 70','Viveros EL OASIS','',1,13.00,10.00),(258,'OR-234','Dracaena Drago',5,'130 - 150','Viveros EL OASIS','',2,64.00,51.00),(259,'OR-235','Dracaena Drago',5,'150 - 175','Viveros EL OASIS','',2,92.00,73.00),(260,'OR-236','Jubaea Chilensis',5,'','Viveros EL OASIS','',100,49.00,39.00),(261,'OR-237','Livistonia Australis',5,'100 - 125','Viveros EL OASIS','',50,19.00,15.00),(262,'OR-238','Livistonia Decipiens',5,'90 - 110','Viveros EL OASIS','',50,19.00,15.00),(263,'OR-239','Livistonia Decipiens',5,'180 - 200','Viveros EL OASIS','',50,49.00,39.00),(264,'OR-240','Phoenix Canariensis',5,'110 - 130','Viveros EL OASIS','',50,6.00,4.00),(265,'OR-241','Phoenix Canariensis',5,'180 - 200','Viveros EL OASIS','',50,19.00,15.00),(266,'OR-242','Rhaphis Excelsa',5,'80 - 100','Viveros EL OASIS','',50,21.00,16.00),(267,'OR-243','Rhaphis Humilis',5,'150- 170','Viveros EL OASIS','',50,64.00,51.00),(268,'OR-244','Sabal Minor',5,'60 - 75','Viveros EL OASIS','',50,11.00,8.00),(269,'OR-245','Sabal Minor',5,'120 - 140','Viveros EL OASIS','',50,34.00,27.00),(270,'OR-246','Trachycarpus Fortunei',5,'90 - 105','Viveros EL OASIS','',50,18.00,14.00),(271,'OR-247','Trachycarpus Fortunei',5,'250-300','Viveros EL OASIS','',2,462.00,369.00),(272,'OR-248','Washingtonia Robusta',5,'60 - 70','Viveros EL OASIS','',15,3.00,2.00),(273,'OR-249','Washingtonia Robusta',5,'130 - 150','Viveros EL OASIS','',15,5.00,4.00),(274,'OR-250','Yucca Jewel',5,'80 - 105','Viveros EL OASIS','',15,10.00,8.00),(275,'OR-251','Zamia Furfuracaea',5,'90 - 110','Viveros EL OASIS','',15,168.00,134.00),(276,'OR-99','Mimosa DEALBATA Gaulois Astier  ',5,'200-225','Viveros EL OASIS','Acacia dealbata. Nombre común o vulgar: Mimosa fina, Mimosa, Mimosa común, Mimosa plateada, Aromo francés. Familia: Mimosaceae. Origen: Australia, Sureste, (N. G. del Sur y Victoria). Arbol de follaje persistente muy usado en parques por su atractiva floración amarilla hacia fines del invierno. Altura: de 3 a 10 metros generalmente. Crecimiento rápido. Follaje perenne de tonos plateados, muy ornamental. Sus hojas son de textura fina, de color verde y sus flores amarillas que aparecen en racimos grandes. Florece de Enero a Marzo (Hemisferio Norte). Legumbre de 5-9 cm de longitud, recta o ligeramente curvada, con los bordes algo constreñidos entre las semillas, que se disponen en el fruto longitudinalmente...',100,14.00,11.00);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `listado_pagos_clientes`
--

/*!50001 DROP VIEW IF EXISTS `listado_pagos_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `listado_pagos_clientes` AS select `c`.`id_cliente` AS `id_cliente`,concat(`c`.`nombre_contacto`,' ',`c`.`apellido_contacto`) AS `nombre`,`c`.`telefono` AS `telefono`,`c`.`ciudad` AS `ciudad`,`c`.`pais` AS `pais`,`p`.`fecha_pago` AS `fecha_pago`,`p`.`total` AS `total`,`p`.`id_transaccion` AS `id_transaccion` from (`clientes` `c` join `pagos` `p` on((`p`.`fk_cliente` = `c`.`id_cliente`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listado_pedidos_clientes`
--

/*!50001 DROP VIEW IF EXISTS `listado_pedidos_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `listado_pedidos_clientes` AS select `c`.`id_cliente` AS `id_cliente`,concat(`c`.`nombre_contacto`,' ',`c`.`apellido_contacto`) AS `nombre`,`c`.`telefono` AS `telefono`,`c`.`ciudad` AS `ciudad`,`c`.`pais` AS `pais`,`p`.`id_pedido` AS `id_pedido`,`p`.`fecha_pedido` AS `fecha_pedido`,`p`.`fecha_esperada` AS `fecha_esperada`,`p`.`fecha_entrega` AS `fecha_entrega`,sum((`d_p`.`cantidad` * `d_p`.`precio_unidad`)) AS `total_pedido` from ((`clientes` `c` join `pedidos` `p` on((`c`.`id_cliente` = `p`.`fk_cliente`))) join `detalles_pedido` `d_p` on((`p`.`id_pedido` = `d_p`.`fk_pedido`))) group by `p`.`id_pedido` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-30 12:10:21
CREATE DATABASE  IF NOT EXISTS `01_negocio` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `01_negocio`;
-- MySQL dump 10.13  Distrib 8.0.42, for macos15 (x86_64)
--
-- Host: 127.0.0.1    Database: 01_negocio
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idproducto` int NOT NULL AUTO_INCREMENT,
  `prod_descripcion` varchar(55) NOT NULL,
  `prod_marca` varchar(55) NOT NULL,
  `prod_modelo` varchar(55) DEFAULT NULL,
  `prod_familia` varchar(55) DEFAULT NULL,
  `prod_precio` decimal(10,2) NOT NULL,
  `prod_fecha_precio` date NOT NULL,
  `prod_stock` int NOT NULL,
  PRIMARY KEY (`idproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Disco externo 1 Tb usb','Seagate','FireCuda','Disco duro',155.80,'2020-04-12',11),(2,'Cable HDMI 1.5m.','','','Cable',12.00,'2018-05-14',39),(3,'PC X3456  i9 - 16Gb - 512 SSD','Dell','XPS','Sobremesa',975.00,'2021-06-23',5),(4,'Teclado USB inalambrico','Logitech','T769X','Teclado',22.50,'2020-12-08',30),(5,'Pen Drive 4 Gb USB 2.0','Toshiba','4T','Memoria USB',21.00,'2019-05-12',0),(6,'Disco 4Tb usb 3.0','Seagate','Barracuda','Disco duro',315.00,'2020-07-30',6),(7,'Cable VGA','','','Cable',4.50,'2019-03-16',29),(8,'Pen Drive 32 Gb USB 3.0','SanDisk','Ultra Flair','Memoria USB',17.70,'2020-03-16',16),(9,'Pen Drive 16 Gb USB 2.0','SanDisk','Ultra Flair','Memoria USB',12.00,'2020-06-04',27),(10,'Cable alimentacion PC','','','Cable',3.00,'2019-10-01',12),(11,'Disco externo 2 Tb USB 3.0','Toshiba','TX12','Disco externo',121.00,'2010-04-07',2),(12,'Portatil i7 - 14 - 16Gb - 512 SSD','Toshiba','X365B','Portatil',1223.00,'2018-05-25',20),(13,'Portatil i5 - 15.6 - 8Gb - 1T HD','Acer','A678','Portatil',875.00,'2019-04-16',11),(14,'IPad PRO 2020','Apple','Pro','Tablet',1299.00,'2021-05-22',26),(15,'Portatil i7 -15.6 - 16Gb - 512 SSD','Asus','ZenBook','Portatil',2150.00,'2021-03-10',30),(16,'Disco SATA3 SS5','Western Digital','Blue','Disco duro',72.00,'2021-10-02',16),(17,'SSD Interna Crucial2 Tb 3d Nand SATA','Crucial','MX500','Disco SSD',169.27,'2021-11-07',92),(18,'Cable USB Impresora','','','Cable',3.30,'2021-11-18',12),(19,'Cable adaptador VGA/HDMI','','','Cable',9.75,'2019-05-01',26),(20,'Pen Drive 64 Gb USB 3.0','Toshiba','64-3','Memoria USB',39.00,'2019-04-10',29),(21,'Pen Drive 128 Gb USB 3.0','Toshiba','128-3','Memoria USB',52.50,'2018-03-13',21),(22,'Disco externo 2.5\" 4TB USB 3.0','Seagate','Expansion','Disco externo',92.99,'2021-01-12',31),(23,'Raton USB inalambrico','Logitech','R456','Raton',9.70,'2019-07-16',10);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-30 12:10:22
CREATE DATABASE  IF NOT EXISTS `03b_alquiler_coches` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `03b_alquiler_coches`;
-- MySQL dump 10.13  Distrib 8.0.42, for macos15 (x86_64)
--
-- Host: 127.0.0.1    Database: 03b_alquiler_coches
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `avales`
--

DROP TABLE IF EXISTS `avales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avales` (
  `fk_reserva` int NOT NULL,
  `fk_cliente` int NOT NULL,
  `porcentaje` decimal(5,2) NOT NULL,
  PRIMARY KEY (`fk_reserva`,`fk_cliente`),
  KEY `fk_cliente` (`fk_cliente`),
  CONSTRAINT `avales_ibfk_1` FOREIGN KEY (`fk_reserva`) REFERENCES `reservas` (`id_reserva`),
  CONSTRAINT `avales_ibfk_2` FOREIGN KEY (`fk_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avales`
--

LOCK TABLES `avales` WRITE;
/*!40000 ALTER TABLE `avales` DISABLE KEYS */;
INSERT INTO `avales` VALUES (5,3,0.55),(5,12,0.45),(9,8,1.00);
/*!40000 ALTER TABLE `avales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `dni` varchar(15) NOT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Amparo García Álvarez','55630078R','Villarreal','682555150'),(2,'José Sancho Gutiérrez','10883513M','Vitoria','692037387'),(3,'Francisco Jaime Oliver','96729463L','Murcia','673890953'),(4,'María Dolores Martínez Fernández','93107230X','Fuenlabrada','603309787'),(5,'Roberto Pérez Corbacho','99959236V','Benalmádena','625518774'),(6,'Juan Francisco Espinosa Matilla','30186195Y','Madrid','615756273'),(7,'Alejandro Zapata Huerta','25007239Y','Manises','607711674'),(8,'Ana Belén López García','81268932L','Madrid','684841112'),(9,'María Carmen Gracia Muñoz','98142504D','Rincón de la Victoria','664636509'),(10,'María Carmen Perdomo Sánchez','27216801G','Pozuelo de Alarcón','614907648'),(11,'José Sanchís Aguilera','17578110S','Marrachí','682503197'),(12,'Francisco González Del Rey','99262647Y','Puente Genil','650321450'),(13,'Ginés Ortega Gutiérrez','53249915Q','Badalona','641692476'),(14,'Miguel Fernández Fernández','83094267M','Barcelona','616415924'),(15,'Sergio Rojas Gutiérrez','57173076K','La Rinconada','611916621'),(16,'Joaquín Herreros Felipe','23193051N','Alicante','692942110'),(17,'Luis Martínez Fernández','58717680Z','Barcelona','631118954'),(18,'Irene López Palomo','13525176A','Cornellá de Llobregat','648118719'),(19,'Ramón López Roselló','62468425B','Barcelona','695593218'),(20,'Joaquín Iglesias Navarro','21527341P','Collado Villalba','671315181'),(21,'Alberto Cobo López','46116898N','Burjasot','692739753'),(22,'María Carmen Vives Velasco','82278210B','Lugo','696471353'),(23,'Joaquín Rodríguez Lillo','72642325E','Lorca','661965371'),(24,'Laura Granados Rodríguez','41741583X','Ceuta','635540128'),(25,'Montserrat Morato Fuentes','10481533L','San Fernando','601293310'),(26,'Julio Gómez Quintas','28024659X','Oviedo','614377919'),(27,'María Luisa Aragón Lozano','76348899P','Torrente','687974429'),(28,'Xabier Canosa Sánchez','97015975C','Vigo','624107303'),(29,'Fernando Fariña Morales','15750865M','San Sebastián de los Reyes','656581949'),(30,'Antonio Lozano Illescas','61813675W','Arrecife','625161198'),(31,'Raúl Mesa Fernández','99218686K','Bilbao','626112151'),(32,'José Luis Bosch Lázaro','28383084A','Rentería','642279874'),(33,'Antonio Amat Martínez','64466684F','Palma de Mallorca','682743482'),(34,'María Jesús Rivas Gutiérrez','70566061Z','Onteniente','609529956'),(35,'José Iglesias Gamero','97840785G','Zamora','662544762'),(36,'María Carmen Nogueira Fernández','94587281B','Gerona','676350745'),(37,'Juan Antonio Álvarez Esteban','81902776Y','Barcelona','651747165'),(38,'Víctor Ruiz Quintana','31165333B','San Sebastián','635744191'),(39,'María Cutillas Pérez','09297312E','Madrid','629726426'),(40,'Rafael García Fernández','02191436L','Alcalá la Real','607772217'),(41,'Antonia Pino González','00946203Y','Mataró','690263811'),(42,'Juan Antonio Maldonado Moreno','22194163Z','Santa Coloma de Gramanet','618974136'),(43,'Andrés Lahoz Moure','80240419C','Madrid','604047522'),(44,'Josep Sanchís Díaz','11842445K','Barcelona','698779838'),(45,'Luis Sánchez García','69893542S','San Cristóbal de la Laguna','676678185'),(46,'Lucia Estepa Chinchilla','48739723D','Madrid','627116504'),(47,'Laura Simón Lorenzo','32722044J','Leganés','649741241'),(48,'María Escribano Chica','54732007B','Salou','661950329'),(49,'Encarnación Escobar Sánchez','56295592X','Andújar','681184348'),(50,'Teresa Gómez Ibáñez','81636736F','Fuengirola','638666106'),(51,'Ana Belén Soares Mateos','71318131F','Moncada y Reixach','674463563'),(52,'Ángel Escolano Pajuelo','57962038Z','Lugo','691700510'),(53,'María Pilar Navarro Prieto','37397234Q','Andújar','601139617'),(54,'Dolores Martínez Tomas','81293190N','Huesca','605641208'),(55,'María Pilar Rodríguez Morales','94104905Z','Torrejón de Ardoz','628771549'),(56,'Diego Almeida Domingo','59011583T','Parla','658483699'),(57,'Pilar Vilariño Millán','02264147G','Santa Cruz de Tenerife','627323330'),(58,'Carlos Sánchez Sánchez','37451133A','Cáceres','694930132'),(59,'Tomas Benavent Andreu','68541221W','Durango','618909264'),(60,'Jorge Devesa Ariza','66348820F','Salou','697389450'),(61,'Cristina Nuño Luque','51153815K','Vinaroz','627245180'),(62,'Vicente Mercado Perea','34258024F','Valencia','611094158'),(63,'Antonio Cano Muñoz','43344486C','Baracaldo','602880587'),(64,'Amaia Carmona Maestre','15899877T','Murcia','662494126'),(65,'Juan Ortiz Sancho','15292045N','Madrid','699022736'),(66,'María Dolores Barreiro Lage','33955713P','Granada','614007186'),(67,'María Fernández Pla','34532424V','Zaragoza','601647887'),(68,'Lucia Brito Arnedo','85220650S','Paterna','679132468'),(69,'Juan José Romero Pérez','52788504P','Madrid','638057214'),(70,'Francisco Dueñas Sanchís','30184884Y','Logroño','645817948'),(71,'Pedro Martínez Pérez','04928220X','Gáldar','684116068'),(72,'Josefa Alonso Andrade','85437710R','Zaragoza','667503868'),(73,'Bartolomé Luque Rodríguez','75019159J','Alicante','694077543'),(74,'Jaime Fernández Escobar','70106640H','Oviedo','602616503'),(75,'María Ángeles Domínguez Sanz','98753556C','La Coruña','615802377'),(76,'Antonio Lorenzo Sáenz','98925320C','Blanes','651371640'),(77,'Ana María Segui Pellicer','45005380S','Reus','649752688'),(78,'Ana María Martínez Pastor','31022936F','Logroño','613078756'),(79,'María Pilar Pérez Granados','99559044W','Mataró','644787889'),(80,'María Carmen Suarez Hernández','95225756Y','Móstoles','620278838'),(81,'Enrique Jiménez Pérez','62381182F','Madrid','616188770'),(82,'Antonio Moreno Pop','33188354K','Ceuta','699920359'),(83,'Manuel Novo García','18873899F','Madrid','675182886'),(84,'María Ángeles Martínez Villena','58282663L','Valdemoro','645345696'),(85,'Carlos Arroyo Gallego','25269263Z','Cornellá de Llobregat','615652816'),(86,'Elena González Plaza','76312673F','Benalmádena','686114124'),(87,'Josep Nieto Cabrera','29061669L','Toledo','652612506'),(88,'Joaquín Rojo Martin','27876071W','San Vicente dels Horts','697674363'),(89,'Álvaro Gutiérrez Peña','47512413W','Madrid','623690469'),(90,'Luis Cubillo Martínez','31324438W','Barcelona','673317678'),(91,'Antonia Torres Fernández','47838040H','Leganés','698597287'),(92,'Cristina Gavilán Rego','88725346V','Las Palmas de G. C.','691538784'),(93,'Javier Ramírez Pérez','49857564G','Vall de Uxó','695802166'),(94,'Mónica Del Pino Marín','13965844Z','Madrid','661476425'),(95,'José Manuel Pulido Otero','40481963P','El Vendrell','615113717'),(96,'María Sánchez Gamarra','45943727P','Fuenlabrada','637561491'),(97,'Isabel Pulido Benito','99577105P','Hospitalet de Llobregat','666446269'),(98,'María Fernández Latorre','76237926X','Fuenlabrada','623246782'),(99,'María Rosa Presa Sánchez','10306786A','Vigo','675877126'),(100,'Antonio Asensio Ortega','10032797J','Barcelona','646981625'),(101,'José Vives Bolívar','93251734M','Madrid','633990845'),(102,'Jordi Fernández Conesa','66617530P','Palencia','649754201'),(103,'Daniel Prada Gómez','82895601J','Candelaria','600433089'),(104,'Marta Rodríguez Trigo','24103476M','Alcoy','616012473'),(105,'María Santos Ramírez','75194515V','Madrid','619213491'),(106,'Rocío Plaza González','10011819B','Sevilla','660312359'),(107,'María Ángeles Barros Martínez','06162654B','Sabadell','686288086'),(108,'Iván Alonso Liñán','63480065L','Alcalá de Henares','672376977'),(109,'Rafael Berrocal Martí','63347391D','San Pedro de Ribas','679804499'),(110,'Irene Marín García','57679562R','Nerja','637051209'),(111,'Francisca Tello Díaz','06439341P','Arganda del Rey','626413103'),(112,'Julia Sierra Molina','23450769S','Salamanca','615219546'),(113,'Francisco Aguilar Pintado','54831031C','Segovia','642822541'),(114,'Esperanza Montserrat Ibáñez','96335774K','Zamora','647489752'),(115,'Jesús Serrano Melero','00480164Q','Málaga','642100856'),(116,'Javier Cano Núñez','31924082J','Oleiros','639626153'),(117,'José Mateu Bueno','46665419Y','Badajoz','660334480'),(118,'Mariano López González','72049006B','Manacor','646602378'),(119,'José María Iglesias Galindo','67933897Q','Madrid','674863489'),(120,'Lucia Díaz Camacho','39279851Z','Plasencia','634919900'),(121,'Carmen Fuentes Romero','43096450Q','Madrid','619746239'),(122,'María Ángeles Luna Aranda','96537933X','Valencia','639698796'),(123,'Josefa Vilariño Iglesias','43837419V','Madrid','609892586'),(124,'Andrés López López','99509658C','Mazarrón','602569895'),(125,'Sara Ruiz Cantos','97281651T','Málaga','686608032'),(126,'José Fraga Ramos','54703691P','Vigo','685957324'),(127,'Rosario Fernández Martin','08285935R','Alfafar','653858339'),(128,'Antonio Martin Román','33794454W','Játiva','609349176'),(129,'Teresa Rubio Pedraza','06573267M','Cáceres','694768952'),(130,'José María Almeida Hernández','57313838T','Zaragoza','677756023'),(131,'Silvia Pérez Contreras','75848946Y','Málaga','645193494'),(132,'Ana Del Castillo Cabrera','94014488X','Arganda del Rey','695563263'),(133,'Juan Carlos Martin Ramos','21465501S','Altea','611427160'),(134,'Antonio Miralles Peñalver','35247731R','Murcia','678382231'),(135,'María Rosario Torre López','76545503P','Barcelona','600914686'),(136,'Ignacio Hernández Fernández','31513554N','Torrevieja','679662170'),(137,'Patricia Aceituno Valdés','16409617Z','Langreo','652560377'),(138,'Francisco Medina Lozano','21461268Z','Murcia','658670516'),(139,'Marcos Gil Ramírez','44712297K','Madrid','656914236'),(140,'Álvaro Martin Trejo','91909355K','Palma de Mallorca','690534345'),(141,'Francisco José González Magán','68285772Z','Valladolid','611971765'),(142,'Ángel Gómez González','18956982Z','León','643487240'),(143,'José Seco Muñoz','78854195Y','Castro-Urdiales','692852816'),(144,'Francisco Vázquez López','47318414P','Leganés','674946935'),(145,'Juan Angulo Portillo','97429864R','Madrid','684504851'),(146,'Yolanda Sáez Pérez','41436322M','Alcalá de Henares','646531415'),(147,'María Carmen Garrido Fernández','22614561H','Vélez-Málaga','610619469'),(148,'Antonio Moya Fernández','08888819D','Madrid','679154958'),(149,'Ana Silvestre Peñalver','37466055K','San Sebastián','649793068'),(150,'José Luis Díaz Agulló','18672284X','Valencia','679221346'),(151,'Rocío Moreno Salado','54380728B','Ávila','610122644'),(152,'Álvaro Aguilera Moreno','84741332V','San Andrés de la Barca','652803762'),(153,'Iván Castro Medina','20873957P','Ibiza','689106265'),(154,'Elena Pimentel Nieto','72475870H','Castellón de la Plana','659608753'),(155,'María José Bolaños González','27975527Y','Ronda','645457877'),(156,'José Manuel Murillo Hernández','22948981H','San Cristóbal de la Laguna','696430858'),(157,'Pablo Gómez Toledano','43813757E','Albacete','680670349'),(158,'Joaquín Reyes Pérez','35539932X','Murcia','665357381'),(159,'María Rosario Diego Navarro','44984718F','Zaragoza','699964834'),(160,'Manuela García Martínez','63899645X','Madrid','661602513'),(161,'Jesús Martínez González','93228338T','Málaga','683936894'),(162,'Carmen Vega León','32974350D','Siero','648700126'),(163,'Francisco Robledo Fernández','70076042X','Oviedo','676030327'),(164,'Mario Carrasco Rivera','51011044B','Sabadell','652945070'),(165,'María Luisa Pérez Rosa','31881530B','Madrid','667679069'),(166,'Juan Carlos Ferrando García','40376580B','Barcelona','691472905'),(167,'Francisco Javier Hernando García','03712441B','Las Palmas de G. C.','645727185'),(168,'Iván Martínez Avilés','63455093W','La Coruña','633768759'),(169,'Ramón García Gallego','71206166Y','Éibar','613611115'),(170,'Raquel Pla Gallego','16628099L','Santander','678023837'),(171,'Manuela Ramírez Martínez','53717578C','Córdoba','608523361'),(172,'Daniel Arias Peris','25641737A','Mataró','621269944'),(173,'José García Infante','95389014X','Barberá del Vallés','615240013'),(174,'Manuel Megias Navas','86473941J','Madrid','677160408'),(175,'María Ángeles Murcia Pena','09931878H','Salamanca','681949367'),(176,'Raquel Toro Andrés','45957751W','Elche','699733180'),(177,'Manuel Uceda Ramos','86571692Z','Madrid','621163434'),(178,'Jesús Teixeira Torregrosa','61703009N','Sevilla','693100926'),(179,'Sergio Moreno Tello','81478304E','Santa Pola','655481431'),(180,'Jesús María Radu Urrutia','53760110W','Pamplona','605758543'),(181,'Iván Navarro Mora','14673372Q','Almería','623047237'),(182,'Juana Bas Vicente','36781710H','Pamplona','697324732'),(183,'Inmaculada Valero Serrano','35418727S','Zaragoza','629624143');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coches`
--

DROP TABLE IF EXISTS `coches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coches` (
  `id_coche` int NOT NULL AUTO_INCREMENT,
  `matricula` varchar(10) NOT NULL,
  `precio_alquiler` decimal(8,2) NOT NULL,
  `color` varchar(15) DEFAULT NULL,
  `fk_modelo` int NOT NULL,
  `fk_plaza` int NOT NULL,
  PRIMARY KEY (`id_coche`),
  UNIQUE KEY `matricula` (`matricula`),
  UNIQUE KEY `fk_plaza` (`fk_plaza`),
  KEY `fk_modelo` (`fk_modelo`),
  CONSTRAINT `coches_ibfk_1` FOREIGN KEY (`fk_modelo`) REFERENCES `modelos` (`id_modelo`),
  CONSTRAINT `coches_ibfk_2` FOREIGN KEY (`fk_plaza`) REFERENCES `plazas_garaje` (`id_plaza`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coches`
--

LOCK TABLES `coches` WRITE;
/*!40000 ALTER TABLE `coches` DISABLE KEYS */;
INSERT INTO `coches` VALUES (1,'4647GJF',75.00,'BLANCO PERLA',46,6),(2,'8263LHJ',75.00,'GRIS PARDO',46,16),(3,'7203HCC',75.00,'AZUL',46,17),(4,'6845CDG',75.00,'VERDE',46,27),(5,'4745LKB',58.00,'AZUL',55,1),(6,'9451GBJ',58.00,'BURDEOS',55,3),(7,'9436MFK',58.00,'BRONCE',55,21),(8,'7418FLH',58.00,'GRIS CENIZA',55,30),(9,'7071BGB',89.00,'BRONCE',110,7),(10,'7545JKL',89.00,'VERDE',110,18),(11,'5728GHC',89.00,'GRIS CENIZA',110,23),(12,'0815JBJ',75.00,'VERDE',112,12),(13,'9113DDJ',75.00,'ROJO',112,20),(14,'9452CMC',75.00,'GRIS CENIZA',112,26),(15,'0995LNM',58.00,'BURDEOS',334,4),(16,'7669CKN',58.00,'BLANCO MATE',334,22),(17,'0207JMD',58.00,'VERDE',334,24),(18,'9616FJL',58.00,'BLANCO MATE',367,11),(19,'7419LMB',58.00,'BLANCO PERLA',367,14),(20,'8211MFJ',42.50,'NEGRO',368,8),(21,'7473KDB',42.50,'BLANCO PERLA',368,9),(22,'0062BBG',42.50,'GRIS CENIZA',368,15),(23,'8727BJB',42.50,'AZUL',368,28),(24,'3469JCL',42.50,'AZUL',368,29),(25,'2253FHM',110.00,'BLANCO MATE',540,5),(26,'1257BGJ',110.00,'AZUL',540,10),(27,'2033DMG',110.00,'BLANCO PERLA',540,13),(28,'0001MMK',42.50,'BLANCO MATE',699,2),(29,'8785CFF',42.50,'VERDE',699,19),(30,'9373DGM',42.50,'ROJO',699,25);
/*!40000 ALTER TABLE `coches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coches_por_reserva`
--

DROP TABLE IF EXISTS `coches_por_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coches_por_reserva` (
  `fk_coche` int NOT NULL,
  `fk_reserva` int NOT NULL,
  `km_inicio` int NOT NULL,
  `km_fin` int DEFAULT NULL,
  `precio` decimal(8,2) DEFAULT NULL,
  `litros_gasolina` decimal(6,2) NOT NULL,
  PRIMARY KEY (`fk_coche`,`fk_reserva`),
  KEY `fk_reserva` (`fk_reserva`),
  CONSTRAINT `coches_por_reserva_ibfk_1` FOREIGN KEY (`fk_coche`) REFERENCES `coches` (`id_coche`),
  CONSTRAINT `coches_por_reserva_ibfk_2` FOREIGN KEY (`fk_reserva`) REFERENCES `reservas` (`id_reserva`),
  CONSTRAINT `coches_por_reserva_chk_1` CHECK ((`km_fin` >= `km_inicio`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coches_por_reserva`
--

LOCK TABLES `coches_por_reserva` WRITE;
/*!40000 ALTER TABLE `coches_por_reserva` DISABLE KEYS */;
INSERT INTO `coches_por_reserva` VALUES (1,3,0,614,1125.00,24.00),(1,33,614,1419,675.00,54.00),(1,36,1419,1563,300.00,34.00),(1,38,1563,2264,150.00,42.00),(1,39,2264,3116,75.00,49.00),(1,59,3116,4403,525.00,60.00),(1,67,4403,5251,750.00,14.00),(1,69,5251,5968,1050.00,35.00),(1,92,5968,6537,750.00,20.00),(1,102,6537,6716,600.00,39.00),(1,117,6716,7035,525.00,19.00),(1,135,7035,7371,450.00,53.00),(1,193,7371,7630,600.00,48.00),(1,205,7630,8977,825.00,52.00),(2,53,0,748,825.00,24.00),(2,60,748,1475,525.00,23.00),(2,88,1475,2019,900.00,47.00),(2,112,2019,3371,750.00,52.00),(2,145,3371,4735,300.00,36.00),(2,146,4735,5061,525.00,26.00),(2,152,5061,5642,150.00,18.00),(2,156,5642,6237,1050.00,59.00),(2,167,6237,7054,1050.00,11.00),(2,175,7054,8060,750.00,36.00),(2,188,8060,8553,225.00,48.00),(2,209,8553,9597,225.00,35.00),(3,15,0,939,600.00,16.00),(3,28,939,1481,900.00,58.00),(3,43,1481,2888,750.00,56.00),(3,103,2888,3869,375.00,18.00),(3,120,3869,4900,300.00,25.00),(3,128,4900,5621,525.00,27.00),(3,158,5621,6191,600.00,21.00),(3,187,6191,6795,975.00,11.00),(3,214,6795,8234,600.00,12.00),(4,6,0,1379,675.00,27.00),(4,42,1379,2534,300.00,25.00),(4,56,2534,2763,1125.00,57.00),(4,65,2763,4141,825.00,46.00),(4,76,4141,4972,450.00,36.00),(4,96,4972,5354,1125.00,15.00),(4,99,5354,6462,450.00,28.00),(4,138,6462,7518,525.00,47.00),(4,169,7518,8005,825.00,31.00),(4,171,8005,9477,825.00,45.00),(4,176,9477,9882,75.00,34.00),(4,181,9882,10847,300.00,39.00),(4,192,10847,11383,375.00,49.00),(5,4,0,598,290.00,18.00),(5,19,598,1433,116.00,16.00),(5,57,1433,2038,464.00,49.00),(5,168,2038,3204,464.00,39.00),(6,13,0,520,522.00,13.00),(6,70,520,732,812.00,39.00),(6,84,732,1720,58.00,22.00),(6,85,1720,2188,638.00,56.00),(6,90,2188,3163,754.00,45.00),(6,91,3163,4046,174.00,24.00),(6,106,4046,4302,406.00,25.00),(6,123,4302,4485,812.00,21.00),(6,163,4485,5680,638.00,34.00),(6,166,5680,6573,232.00,38.00),(6,170,6573,6957,232.00,51.00),(6,190,6957,8216,232.00,29.00),(6,216,8216,9347,290.00,19.00),(7,7,0,1063,406.00,53.00),(7,8,1063,2035,58.00,30.00),(7,9,2035,3273,580.00,58.00),(7,18,3273,4119,812.00,54.00),(7,23,4119,4338,696.00,41.00),(7,35,4338,5284,870.00,31.00),(7,45,5284,6317,696.00,32.00),(7,82,6317,6663,406.00,59.00),(7,114,6663,6896,116.00,35.00),(7,173,6896,7209,580.00,23.00),(7,196,7209,8596,348.00,18.00),(7,212,8596,10029,638.00,15.00),(8,22,0,701,696.00,52.00),(8,77,701,1025,232.00,46.00),(8,79,1025,2456,116.00,58.00),(8,94,2456,3124,232.00,50.00),(8,104,3124,3235,232.00,47.00),(8,107,3235,3987,812.00,40.00),(8,109,3987,5393,116.00,56.00),(8,116,5393,5806,232.00,55.00),(8,140,5806,5974,116.00,58.00),(8,195,5974,6163,464.00,58.00),(8,201,6163,6400,348.00,56.00),(9,27,0,541,534.00,12.00),(9,48,541,1458,1157.00,48.00),(9,49,1458,1758,445.00,33.00),(9,63,1758,3229,89.00,27.00),(9,71,3229,3659,623.00,56.00),(9,93,3659,4085,1157.00,45.00),(9,108,4085,5167,1246.00,15.00),(9,127,5167,5887,534.00,17.00),(9,129,5887,7302,1246.00,19.00),(9,136,7302,8634,1157.00,13.00),(9,177,8634,9366,623.00,41.00),(9,208,9366,10083,1068.00,22.00),(9,210,10083,10293,979.00,60.00),(10,1,0,358,534.00,27.00),(10,98,358,1840,534.00,34.00),(10,118,1840,2504,979.00,20.00),(10,131,2504,3102,979.00,18.00),(10,155,3102,3628,534.00,54.00),(10,160,3628,4773,1157.00,27.00),(10,161,4773,5642,1157.00,20.00),(10,162,5642,6277,445.00,18.00),(10,186,6277,6976,267.00,39.00),(11,40,0,323,267.00,20.00),(11,44,323,535,1068.00,15.00),(11,50,535,1849,267.00,45.00),(11,73,1849,2234,89.00,41.00),(11,97,2234,3165,1335.00,42.00),(11,115,3165,3652,623.00,50.00),(11,132,3652,3832,445.00,16.00),(11,153,3832,4885,890.00,44.00),(11,211,4885,5737,979.00,13.00),(11,215,5737,6515,1246.00,13.00),(12,47,0,1449,1125.00,32.00),(12,178,1449,2599,600.00,53.00),(12,183,2599,3112,300.00,29.00),(12,191,3112,3876,525.00,40.00),(12,198,3876,4367,300.00,31.00),(12,199,4367,5817,300.00,34.00),(13,5,0,504,975.00,32.00),(13,25,504,626,525.00,30.00),(13,26,626,1107,750.00,47.00),(13,110,1107,2561,75.00,38.00),(13,119,2561,3513,750.00,43.00),(13,180,3513,4301,300.00,55.00),(13,213,4301,5203,825.00,29.00),(14,34,0,1366,450.00,50.00),(14,52,1366,2345,975.00,42.00),(14,78,2345,3296,675.00,32.00),(14,86,3296,3767,600.00,30.00),(14,87,3767,4828,825.00,58.00),(14,100,4828,6144,300.00,54.00),(14,105,6144,7218,525.00,55.00),(14,122,7218,8244,900.00,42.00),(14,143,8244,9137,825.00,31.00),(14,159,9137,9975,450.00,55.00),(14,165,9975,10382,750.00,35.00),(14,185,10382,10606,975.00,55.00),(14,197,10606,11887,1125.00,27.00),(15,11,0,471,522.00,14.00),(15,16,471,710,174.00,40.00),(15,41,710,815,174.00,13.00),(15,62,815,2092,638.00,49.00),(15,74,2092,3386,232.00,45.00),(15,141,3386,4600,638.00,52.00),(15,147,4600,6061,812.00,44.00),(15,151,6061,6673,870.00,55.00),(15,203,6673,7226,464.00,16.00),(16,10,0,1045,174.00,16.00),(16,14,1045,1664,754.00,10.00),(16,46,1664,2768,812.00,19.00),(16,72,2768,3554,870.00,28.00),(16,101,3554,4907,406.00,34.00),(16,111,4907,5026,290.00,27.00),(16,133,5026,5128,812.00,44.00),(16,184,5128,5944,522.00,54.00),(16,204,5944,6899,580.00,56.00),(17,2,0,360,638.00,43.00),(17,51,360,1686,58.00,30.00),(17,58,1686,2639,754.00,17.00),(17,64,2639,3183,116.00,52.00),(17,80,3183,4354,58.00,43.00),(17,89,4354,5640,522.00,32.00),(17,95,5640,6767,696.00,53.00),(17,121,6767,7212,638.00,22.00),(17,126,7212,7479,696.00,31.00),(17,139,7479,7730,580.00,12.00),(17,154,7730,7909,406.00,26.00),(17,164,7909,9176,638.00,24.00),(17,182,9176,10152,464.00,29.00),(17,202,10152,10432,348.00,48.00),(18,12,0,1333,754.00,18.00),(18,17,1333,1486,580.00,59.00),(18,30,1486,1890,348.00,25.00),(18,31,1890,3332,638.00,60.00),(18,83,3332,4022,870.00,52.00),(18,124,4022,4834,174.00,14.00),(18,125,4834,5703,696.00,27.00),(18,130,5703,5897,116.00,54.00),(18,137,5897,7214,464.00,37.00),(18,142,7214,7780,174.00,33.00),(18,148,7780,9272,406.00,57.00),(18,149,9272,10043,116.00,41.00),(18,150,10043,11392,58.00,55.00),(18,174,11392,11990,58.00,19.00),(18,179,11990,12609,406.00,55.00),(18,207,12609,13658,754.00,32.00),(19,29,0,342,290.00,50.00),(19,32,342,659,812.00,24.00),(19,37,659,1616,754.00,28.00),(19,54,1616,2358,116.00,42.00),(19,55,2358,2636,174.00,31.00),(19,61,2636,3210,174.00,47.00),(19,66,3210,4571,348.00,42.00),(19,75,4571,5364,870.00,18.00),(19,81,5364,5866,580.00,16.00),(19,113,5866,6379,696.00,53.00),(19,157,6379,6685,580.00,43.00),(19,189,6685,7510,348.00,36.00),(19,194,7510,8533,290.00,32.00),(19,200,8533,8959,290.00,16.00),(20,20,0,1323,340.00,60.00),(20,21,1323,1902,42.50,12.00),(20,24,1902,2924,127.50,13.00),(20,68,2924,3480,382.50,28.00),(20,134,3480,4495,212.50,36.00),(20,144,4495,4887,85.00,31.00),(20,172,4887,5483,297.50,37.00),(20,206,5483,5679,595.00,32.00);
/*!40000 ALTER TABLE `coches_por_reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `id_marca` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(45) NOT NULL,
  PRIMARY KEY (`id_marca`),
  UNIQUE KEY `marca` (`marca`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (1,'Abarth'),(2,'Alfa Romeo'),(3,'Aro'),(4,'Asia'),(5,'Asia Motors'),(6,'Aston Martin'),(7,'Audi'),(8,'Austin'),(9,'Auverland'),(10,'Bentley'),(11,'Bertone'),(12,'Bmw'),(13,'Cadillac'),(14,'Chevrolet'),(15,'Chrysler'),(16,'Citroen'),(17,'Corvette'),(18,'Dacia'),(19,'Daewoo'),(20,'Daf'),(21,'Daihatsu'),(22,'Daimler'),(23,'Dodge'),(24,'Ferrari'),(25,'Fiat'),(26,'Ford'),(27,'Galloper'),(28,'Gmc'),(29,'Honda'),(30,'Hummer'),(31,'Hyundai'),(32,'Infiniti'),(33,'Innocenti'),(34,'Isuzu'),(35,'Iveco'),(36,'Iveco-pegaso'),(37,'Jaguar'),(38,'Jeep'),(39,'Kia'),(40,'Lada'),(41,'Lamborghini'),(42,'Lancia'),(43,'Land-rover'),(44,'Ldv'),(45,'Lexus'),(46,'Lotus'),(47,'Mahindra'),(48,'Maserati'),(49,'Maybach'),(50,'Mazda'),(51,'Mercedes-benz'),(52,'Mg'),(53,'Mini'),(54,'Mitsubishi'),(55,'Morgan'),(56,'Nissan'),(57,'Opel'),(58,'Peugeot'),(59,'Pontiac'),(60,'Porsche'),(61,'Renault'),(62,'Rolls-royce'),(63,'Rover'),(64,'Saab'),(65,'Santana'),(66,'Seat'),(67,'Skoda'),(68,'Smart'),(69,'Ssangyong'),(70,'Subaru'),(71,'Suzuki'),(72,'Talbot'),(73,'Tata'),(74,'Toyota'),(75,'Umm'),(76,'Vaz'),(77,'Volkswagen'),(78,'Volvo'),(79,'Wartburg');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelos`
--

DROP TABLE IF EXISTS `modelos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelos` (
  `id_modelo` int NOT NULL AUTO_INCREMENT,
  `modelo` varchar(45) NOT NULL,
  `fk_marca` int NOT NULL,
  PRIMARY KEY (`id_modelo`),
  KEY `fk_marca` (`fk_marca`),
  CONSTRAINT `modelos_ibfk_1` FOREIGN KEY (`fk_marca`) REFERENCES `marcas` (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=1009 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelos`
--

LOCK TABLES `modelos` WRITE;
/*!40000 ALTER TABLE `modelos` DISABLE KEYS */;
INSERT INTO `modelos` VALUES (1,'500',1),(2,'Grande Punto',1),(3,'Punto Evo',1),(4,'500c',1),(5,'695',1),(6,'Punto',1),(7,'155',2),(8,'156',2),(9,'159',2),(10,'164',2),(11,'145',2),(12,'147',2),(13,'146',2),(14,'Gtv',2),(15,'Spider',2),(16,'166',2),(17,'Gt',2),(18,'Crosswagon',2),(19,'Brera',2),(20,'90',2),(21,'75',2),(22,'33',2),(23,'Giulietta',2),(24,'Sprint',2),(25,'Mito',2),(26,'Expander',3),(27,'10',3),(28,'24',3),(29,'Dacia',3),(30,'Rocsta',4),(31,'Rocsta',5),(32,'Db7',6),(33,'V8',6),(34,'Db9',6),(35,'Vanquish',6),(36,'V8 Vantage',6),(37,'Vantage',6),(38,'Dbs',6),(39,'Volante',6),(40,'Virage',6),(41,'Vantage V8',6),(42,'Vantage V12',6),(43,'Rapide',6),(44,'Cygnet',6),(45,'80',7),(46,'A4',7),(47,'A6',7),(48,'S6',7),(49,'Coupe',7),(50,'S2',7),(51,'Rs2',7),(52,'A8',7),(53,'Cabriolet',7),(54,'S8',7),(55,'A3',7),(56,'S4',7),(57,'Tt',7),(58,'S3',7),(59,'Allroad Quattro',7),(60,'Rs4',7),(61,'A2',7),(62,'Rs6',7),(63,'Q7',7),(64,'R8',7),(65,'A5',7),(66,'S5',7),(67,'V8',7),(68,'200',7),(69,'100',7),(70,'90',7),(71,'Tts',7),(72,'Q5',7),(73,'A4 Allroad Quattro',7),(74,'Tt Rs',7),(75,'Rs5',7),(76,'A1',7),(77,'A7',7),(78,'Rs3',7),(79,'Q3',7),(80,'A6 Allroad Quattro',7),(81,'S7',7),(82,'Sq5',7),(83,'Mini',8),(84,'Montego',8),(85,'Maestro',8),(86,'Metro',8),(87,'Mini Moke',8),(88,'Diesel',9),(89,'Brooklands',10),(90,'Turbo',10),(91,'Continental',10),(92,'Azure',10),(93,'Arnage',10),(94,'Continental Gt',10),(95,'Continental Flying Spur',10),(96,'Turbo R',10),(97,'Mulsanne',10),(98,'Eight',10),(99,'Continental Gtc',10),(100,'Continental Supersports',10),(101,'Freeclimber Diesel',11),(102,'Serie 3',12),(103,'Serie 5',12),(104,'Compact',12),(105,'Serie 7',12),(106,'Serie 8',12),(107,'Z3',12),(108,'Z4',12),(109,'Z8',12),(110,'X5',12),(111,'Serie 6',12),(112,'X3',12),(113,'Serie 1',12),(114,'Z1',12),(115,'X6',12),(116,'X1',12),(117,'Seville',13),(118,'Sts',13),(119,'El Dorado',13),(120,'Cts',13),(121,'Xlr',13),(122,'Srx',13),(123,'Escalade',13),(124,'Bls',13),(125,'Corvette',14),(126,'Blazer',14),(127,'Astro',14),(128,'Nubira',14),(129,'Evanda',14),(130,'Trans Sport',14),(131,'Camaro',14),(132,'Matiz',14),(133,'Alero',14),(134,'Tahoe',14),(135,'Tacuma',14),(136,'Trailblazer',14),(137,'Kalos',14),(138,'Aveo',14),(139,'Lacetti',14),(140,'Epica',14),(141,'Captiva',14),(142,'Hhr',14),(143,'Cruze',14),(144,'Spark',14),(145,'Orlando',14),(146,'Volt',14),(147,'Malibu',14),(148,'Vision',15),(149,'300m',15),(150,'Grand Voyager',15),(151,'Viper',15),(152,'Neon',15),(153,'Voyager',15),(154,'Stratus',15),(155,'Sebring',15),(156,'Sebring 200c',15),(157,'New Yorker',15),(158,'Pt Cruiser',15),(159,'Crossfire',15),(160,'300c',15),(161,'Le Baron',15),(162,'Saratoga',15),(163,'Xantia',16),(164,'Xm',16),(165,'Ax',16),(166,'Zx',16),(167,'Evasion',16),(168,'C8',16),(169,'Saxo',16),(170,'C2',16),(171,'Xsara',16),(172,'C4',16),(173,'Xsara Picasso',16),(174,'C5',16),(175,'C3',16),(176,'C3 Pluriel',16),(177,'C1',16),(178,'C6',16),(179,'Grand C4 Picasso',16),(180,'C4 Picasso',16),(181,'Ccrosser',16),(182,'C15',16),(183,'Jumper',16),(184,'Jumpy',16),(185,'Berlingo',16),(186,'Bx',16),(187,'C25',16),(188,'Cx',16),(189,'Gsa',16),(190,'Visa',16),(191,'Lna',16),(192,'2cv',16),(193,'Nemo',16),(194,'C4 Sedan',16),(195,'Berlingo First',16),(196,'C3 Picasso',16),(197,'Ds3',16),(198,'Czero',16),(199,'Ds4',16),(200,'Ds5',16),(201,'C4 Aircross',16),(202,'Celysee',16),(203,'Corvette',17),(204,'Contac',18),(205,'Logan',18),(206,'Sandero',18),(207,'Duster',18),(208,'Lodgy',18),(209,'Nexia',19),(210,'Aranos',19),(211,'Lanos',19),(212,'Nubira',19),(213,'Compact',19),(214,'Nubira Compact',19),(215,'Leganza',19),(216,'Evanda',19),(217,'Matiz',19),(218,'Tacuma',19),(219,'Kalos',19),(220,'Lacetti',19),(221,'Applause',21),(222,'Charade',21),(223,'Rocky',21),(224,'Feroza',21),(225,'Terios',21),(226,'Sirion',21),(227,'Serie Xj',22),(228,'Xj',22),(229,'Double Six',22),(230,'Six',22),(231,'Series Iii',22),(232,'Viper',23),(233,'Caliber',23),(234,'Nitro',23),(235,'Avenger',23),(236,'Journey',23),(237,'F355',24),(238,'360',24),(239,'F430',24),(240,'F512 M',24),(241,'550 Maranello',24),(242,'575m Maranello',24),(243,'599',24),(244,'456',24),(245,'456m',24),(246,'612',24),(247,'F50',24),(248,'Enzo',24),(249,'Superamerica',24),(250,'430',24),(251,'348',24),(252,'Testarossa',24),(253,'512',24),(254,'355',24),(255,'F40',24),(256,'412',24),(257,'Mondial',24),(258,'328',24),(259,'California',24),(260,'458',24),(261,'Ff',24),(262,'Croma',25),(263,'Cinquecento',25),(264,'Seicento',25),(265,'Punto',25),(266,'Grande Punto',25),(267,'Panda',25),(268,'Tipo',25),(269,'Coupe',25),(270,'Uno',25),(271,'Ulysse',25),(272,'Tempra',25),(273,'Marea',25),(274,'Barchetta',25),(275,'Bravo',25),(276,'Stilo',25),(277,'Brava',25),(278,'Palio Weekend',25),(279,'600',25),(280,'Multipla',25),(281,'Idea',25),(282,'Sedici',25),(283,'Linea',25),(284,'500',25),(285,'Fiorino',25),(286,'Ducato',25),(287,'Doblo Cargo',25),(288,'Doblo',25),(289,'Strada',25),(290,'Regata',25),(291,'Talento',25),(292,'Argenta',25),(293,'Ritmo',25),(294,'Punto Classic',25),(295,'Qubo',25),(296,'Punto Evo',25),(297,'500c',25),(298,'Freemont',25),(299,'Panda Classic',25),(300,'500l',25),(301,'Maverick',26),(302,'Escort',26),(303,'Focus',26),(304,'Mondeo',26),(305,'Scorpio',26),(306,'Fiesta',26),(307,'Probe',26),(308,'Explorer',26),(309,'Galaxy',26),(310,'Ka',26),(311,'Puma',26),(312,'Cougar',26),(313,'Focus Cmax',26),(314,'Fusion',26),(315,'Streetka',26),(316,'Cmax',26),(317,'Smax',26),(318,'Transit',26),(319,'Courier',26),(320,'Ranger',26),(321,'Sierra',26),(322,'Orion',26),(323,'Pick Up',26),(324,'Capri',26),(325,'Granada',26),(326,'Kuga',26),(327,'Grand Cmax',26),(328,'Bmax',26),(329,'Tourneo Custom',26),(330,'Exceed',27),(331,'Santamo',27),(332,'Super Exceed',27),(333,'Accord',29),(334,'Civic',29),(335,'Crx',29),(336,'Prelude',29),(337,'Nsx',29),(338,'Legend',29),(339,'Crv',29),(340,'Hrv',29),(341,'Logo',29),(342,'S2000',29),(343,'Stream',29),(344,'Jazz',29),(345,'Frv',29),(346,'Concerto',29),(347,'Insight',29),(348,'Crz',29),(349,'H2',30),(350,'H3',30),(351,'H3t',30),(352,'Lantra',31),(353,'Sonata',31),(354,'Elantra',31),(355,'Accent',31),(356,'Scoupe',31),(357,'Coupe',31),(358,'Atos',31),(359,'H1',31),(360,'Atos Prime',31),(361,'Xg',31),(362,'Trajet',31),(363,'Santa Fe',31),(364,'Terracan',31),(365,'Matrix',31),(366,'Getz',31),(367,'Tucson',31),(368,'I30',31),(369,'Pony',31),(370,'Grandeur',31),(371,'I10',31),(372,'I800',31),(373,'Sonata Fl',31),(374,'Ix55',31),(375,'I20',31),(376,'Ix35',31),(377,'Ix20',31),(378,'Genesis',31),(379,'I40',31),(380,'Veloster',31),(381,'G',32),(382,'Ex',32),(383,'Fx',32),(384,'M',32),(385,'Elba',33),(386,'Minitre',33),(387,'Trooper',34),(388,'Pick Up',34),(389,'D Max',34),(390,'Rodeo',34),(391,'Dmax',34),(392,'Trroper',34),(393,'Daily',35),(394,'Massif',35),(395,'Daily',36),(396,'Duty',36),(397,'Serie Xj',37),(398,'Serie Xk',37),(399,'Xj',37),(400,'Stype',37),(401,'Xf',37),(402,'Xtype',37),(403,'Wrangler',38),(404,'Cherokee',38),(405,'Grand Cherokee',38),(406,'Commander',38),(407,'Compass',38),(408,'Wrangler Unlimited',38),(409,'Patriot',38),(410,'Sportage',39),(411,'Sephia',39),(412,'Sephia Ii',39),(413,'Pride',39),(414,'Clarus',39),(415,'Shuma',39),(416,'Carnival',39),(417,'Joice',39),(418,'Magentis',39),(419,'Carens',39),(420,'Rio',39),(421,'Cerato',39),(422,'Sorento',39),(423,'Opirus',39),(424,'Picanto',39),(425,'Ceed',39),(426,'Ceed Sporty Wagon',39),(427,'Proceed',39),(428,'K2500 Frontier',39),(429,'K2500',39),(430,'Soul',39),(431,'Venga',39),(432,'Optima',39),(433,'Ceed Sportswagon',39),(434,'Samara',40),(435,'Niva',40),(436,'Sagona',40),(437,'Stawra 2110',40),(438,'214',40),(439,'Kalina',40),(440,'Serie 2100',40),(441,'Priora',40),(442,'Gallardo',41),(443,'Murcielago',41),(444,'Aventador',41),(445,'Delta',42),(446,'K',42),(447,'Y10',42),(448,'Dedra',42),(449,'Lybra',42),(450,'Z',42),(451,'Y',42),(452,'Ypsilon',42),(453,'Thesis',42),(454,'Phedra',42),(455,'Musa',42),(456,'Thema',42),(457,'Zeta',42),(458,'Kappa',42),(459,'Trevi',42),(460,'Prisma',42),(461,'A112',42),(462,'Ypsilon Elefantino',42),(463,'Voyager',42),(464,'Range Rover',43),(465,'Defender',43),(466,'Discovery',43),(467,'Freelander',43),(468,'Range Rover Sport',43),(469,'Discovery 4',43),(470,'Range Rover Evoque',43),(471,'Maxus',44),(472,'Ls400',45),(473,'Ls430',45),(474,'Gs300',45),(475,'Is200',45),(476,'Rx300',45),(477,'Gs430',45),(478,'Gs460',45),(479,'Sc430',45),(480,'Is300',45),(481,'Is250',45),(482,'Rx400h',45),(483,'Is220d',45),(484,'Rx350',45),(485,'Gs450h',45),(486,'Ls460',45),(487,'Ls600h',45),(488,'Ls',45),(489,'Gs',45),(490,'Is',45),(491,'Sc',45),(492,'Rx',45),(493,'Ct',45),(494,'Elise',46),(495,'Exige',46),(496,'Bolero Pickup',47),(497,'Goa Pickup',47),(498,'Goa',47),(499,'Cj',47),(500,'Pikup',47),(501,'Thar',47),(502,'Ghibli',48),(503,'Shamal',48),(504,'Quattroporte',48),(505,'3200 Gt',48),(506,'Coupe',48),(507,'Spyder',48),(508,'Gransport',48),(509,'Granturismo',48),(510,'430',48),(511,'Biturbo',48),(512,'228',48),(513,'224',48),(514,'Grancabrio',48),(515,'Maybach',49),(516,'Xedos 6',50),(517,'626',50),(518,'121',50),(519,'Xedos 9',50),(520,'323',50),(521,'Mx3',50),(522,'Rx7',50),(523,'Mx5',50),(524,'Mazda3',50),(525,'Mpv',50),(526,'Demio',50),(527,'Premacy',50),(528,'Tribute',50),(529,'Mazda6',50),(530,'Mazda2',50),(531,'Rx8',50),(532,'Mazda5',50),(533,'Cx7',50),(534,'Serie B',50),(535,'B2500',50),(536,'Bt50',50),(537,'Mx6',50),(538,'929',50),(539,'Cx5',50),(540,'Clase C',51),(541,'Clase E',51),(542,'Clase Sl',51),(543,'Clase S',51),(544,'Clase Cl',51),(545,'Clase G',51),(546,'Clase Slk',51),(547,'Clase V',51),(548,'Viano',51),(549,'Clase Clk',51),(550,'Clase A',51),(551,'Clase M',51),(552,'Vaneo',51),(553,'Slklasse',51),(554,'Slr Mclaren',51),(555,'Clase Cls',51),(556,'Clase R',51),(557,'Clase Gl',51),(558,'Clase B',51),(559,'100d',51),(560,'140d',51),(561,'180d',51),(562,'Sprinter',51),(563,'Vito',51),(564,'Transporter',51),(565,'280',51),(566,'220',51),(567,'200',51),(568,'190',51),(569,'600',51),(570,'400',51),(571,'Clase Sl R129',51),(572,'300',51),(573,'500',51),(574,'420',51),(575,'260',51),(576,'230',51),(577,'Clase Clc',51),(578,'Clase Glk',51),(579,'Sls Amg',51),(580,'Mgf',52),(581,'Tf',52),(582,'Zr',52),(583,'Zs',52),(584,'Zt',52),(585,'Ztt',52),(586,'Mini',52),(587,'Countryman',52),(588,'Paceman',52),(589,'Montero',54),(590,'Galant',54),(591,'Colt',54),(592,'Space Wagon',54),(593,'Space Runner',54),(594,'Space Gear',54),(595,'3000 Gt',54),(596,'Carisma',54),(597,'Eclipse',54),(598,'Space Star',54),(599,'Montero Sport',54),(600,'Montero Io',54),(601,'Outlander',54),(602,'Lancer',54),(603,'Grandis',54),(604,'L200',54),(605,'Canter',54),(606,'300 Gt',54),(607,'Asx',54),(608,'Imiev',54),(609,'44',55),(610,'Plus 8',55),(611,'Aero 8',55),(612,'V6',55),(613,'Roadster',55),(614,'4',55),(615,'Plus 4',55),(616,'Terrano Ii',56),(617,'Terrano',56),(618,'Micra',56),(619,'Sunny',56),(620,'Primera',56),(621,'Serena',56),(622,'Patrol',56),(623,'Maxima Qx',56),(624,'200 Sx',56),(625,'300 Zx',56),(626,'Patrol Gr',56),(627,'100 Nx',56),(628,'Almera',56),(629,'Pathfinder',56),(630,'Almera Tino',56),(631,'Xtrail',56),(632,'350z',56),(633,'Murano',56),(634,'Note',56),(635,'Qashqai',56),(636,'Tiida',56),(637,'Vanette',56),(638,'Trade',56),(639,'Vanette Cargo',56),(640,'Pickup',56),(641,'Navara',56),(642,'Cabstar E',56),(643,'Cabstar',56),(644,'Maxima',56),(645,'Camion',56),(646,'Prairie',56),(647,'Bluebird',56),(648,'Np300 Pick Up',56),(649,'Qashqai2',56),(650,'Pixo',56),(651,'Gtr',56),(652,'370z',56),(653,'Cube',56),(654,'Juke',56),(655,'Leaf',56),(656,'Evalia',56),(657,'Astra',57),(658,'Vectra',57),(659,'Calibra',57),(660,'Corsa',57),(661,'Omega',57),(662,'Frontera',57),(663,'Tigra',57),(664,'Monterey',57),(665,'Sintra',57),(666,'Zafira',57),(667,'Agila',57),(668,'Speedster',57),(669,'Signum',57),(670,'Meriva',57),(671,'Antara',57),(672,'Gt',57),(673,'Combo',57),(674,'Movano',57),(675,'Vivaro',57),(676,'Kadett',57),(677,'Monza',57),(678,'Senator',57),(679,'Rekord',57),(680,'Manta',57),(681,'Ascona',57),(682,'Insignia',57),(683,'Zafira Tourer',57),(684,'Ampera',57),(685,'Mokka',57),(686,'Adam',57),(687,'306',58),(688,'605',58),(689,'106',58),(690,'205',58),(691,'405',58),(692,'406',58),(693,'806',58),(694,'807',58),(695,'407',58),(696,'307',58),(697,'206',58),(698,'607',58),(699,'308',58),(700,'307 Sw',58),(701,'206 Sw',58),(702,'407 Sw',58),(703,'1007',58),(704,'107',58),(705,'207',58),(706,'4007',58),(707,'Boxer',58),(708,'Partner',58),(709,'J5',58),(710,'604',58),(711,'505',58),(712,'309',58),(713,'Bipper',58),(714,'Partner Origin',58),(715,'3008',58),(716,'5008',58),(717,'Rcz',58),(718,'508',58),(719,'Ion',58),(720,'208',58),(721,'4008',58),(722,'Trans Sport',59),(723,'Firebird',59),(724,'Trans Am',59),(725,'911',60),(726,'Boxster',60),(727,'Cayenne',60),(728,'Carrera Gt',60),(729,'Cayman',60),(730,'928',60),(731,'968',60),(732,'944',60),(733,'924',60),(734,'Panamera',60),(735,'918',60),(736,'Megane',61),(737,'Safrane',61),(738,'Laguna',61),(739,'Clio',61),(740,'Twingo',61),(741,'Nevada',61),(742,'Espace',61),(743,'Spider',61),(744,'Scenic',61),(745,'Grand Espace',61),(746,'Avantime',61),(747,'Vel Satis',61),(748,'Grand Scenic',61),(749,'Clio Campus',61),(750,'Modus',61),(751,'Express',61),(752,'Trafic',61),(753,'Master',61),(754,'Kangoo',61),(755,'Mascott',61),(756,'Master Propulsion',61),(757,'Maxity',61),(758,'R19',61),(759,'R25',61),(760,'R5',61),(761,'R21',61),(762,'R4',61),(763,'Alpine',61),(764,'Fuego',61),(765,'R18',61),(766,'R11',61),(767,'R9',61),(768,'R6',61),(769,'Grand Modus',61),(770,'Kangoo Combi',61),(771,'Koleos',61),(772,'Fluence',61),(773,'Wind',61),(774,'Latitude',61),(775,'Grand Kangoo Combi',61),(776,'Siver Dawn',62),(777,'Silver Spur',62),(778,'Park Ward',62),(779,'Silver Seraph',62),(780,'Corniche',62),(781,'Phantom',62),(782,'Touring',62),(783,'Silvier',62),(784,'800',63),(785,'600',63),(786,'100',63),(787,'200',63),(788,'Coupe',63),(789,'400',63),(790,'45',63),(791,'Cabriolet',63),(792,'25',63),(793,'Mini',63),(794,'75',63),(795,'Streetwise',63),(796,'Sd',63),(797,'900',64),(798,'93',64),(799,'9000',64),(800,'95',64),(801,'93x',64),(802,'94x',64),(803,'300',65),(804,'350',65),(805,'Anibal',65),(806,'Anibal Pick Up',65),(807,'Ibiza',66),(808,'Cordoba',66),(809,'Toledo',66),(810,'Marbella',66),(811,'Alhambra',66),(812,'Arosa',66),(813,'Leon',66),(814,'Altea',66),(815,'Altea Xl',66),(816,'Altea Freetrack',66),(817,'Terra',66),(818,'Inca',66),(819,'Malaga',66),(820,'Ronda',66),(821,'Exeo',66),(822,'Mii',66),(823,'Felicia',67),(824,'Forman',67),(825,'Octavia',67),(826,'Octavia Tour',67),(827,'Fabia',67),(828,'Superb',67),(829,'Roomster',67),(830,'Scout',67),(831,'Pickup',67),(832,'Favorit',67),(833,'130',67),(834,'S',67),(835,'Yeti',67),(836,'Citigo',67),(837,'Rapid',67),(838,'Smart',68),(839,'Citycoupe',68),(840,'Fortwo',68),(841,'Cabrio',68),(842,'Crossblade',68),(843,'Roadster',68),(844,'Forfour',68),(845,'Korando',69),(846,'Family',69),(847,'K4d',69),(848,'Musso',69),(849,'Korando Kj',69),(850,'Rexton',69),(851,'Rexton Ii',69),(852,'Rodius',69),(853,'Kyron',69),(854,'Actyon',69),(855,'Sports Pick Up',69),(856,'Actyon Sports Pick Up',69),(857,'Kodando',69),(858,'Legacy',70),(859,'Impreza',70),(860,'Svx',70),(861,'Justy',70),(862,'Outback',70),(863,'Forester',70),(864,'G3x Justy',70),(865,'B9 Tribeca',70),(866,'Xt',70),(867,'1800',70),(868,'Tribeca',70),(869,'Wrx Sti',70),(870,'Trezia',70),(871,'Xv',70),(872,'Brz',70),(873,'Maruti',71),(874,'Swift',71),(875,'Vitara',71),(876,'Baleno',71),(877,'Samurai',71),(878,'Alto',71),(879,'Wagon R',71),(880,'Jimny',71),(881,'Grand Vitara',71),(882,'Ignis',71),(883,'Liana',71),(884,'Grand Vitara Xl7',71),(885,'Sx4',71),(886,'Splash',71),(887,'Kizashi',71),(888,'Samba',72),(889,'Tagora',72),(890,'Solara',72),(891,'Horizon',72),(892,'Telcosport',73),(893,'Telco',73),(894,'Sumo',73),(895,'Safari',73),(896,'Indica',73),(897,'Indigo',73),(898,'Grand Safari',73),(899,'Tl Pick Up',73),(900,'Xenon Pick Up',73),(901,'Vista',73),(902,'Xenon',73),(903,'Aria',73),(904,'Carina E',74),(905,'4runner',74),(906,'Camry',74),(907,'Rav4',74),(908,'Celica',74),(909,'Supra',74),(910,'Paseo',74),(911,'Land Cruiser 80',74),(912,'Land Cruiser 100',74),(913,'Land Cruiser',74),(914,'Land Cruiser 90',74),(915,'Corolla',74),(916,'Auris',74),(917,'Avensis',74),(918,'Picnic',74),(919,'Yaris',74),(920,'Yaris Verso',74),(921,'Mr2',74),(922,'Previa',74),(923,'Prius',74),(924,'Avensis Verso',74),(925,'Corolla Verso',74),(926,'Corolla Sedan',74),(927,'Aygo',74),(928,'Hilux',74),(929,'Dyna',74),(930,'Land Cruiser 200',74),(931,'Verso',74),(932,'Iq',74),(933,'Urban Cruiser',74),(934,'Gt86',74),(935,'100',75),(936,'121',75),(937,'214',76),(938,'110 Stawra',76),(939,'111 Stawra',76),(940,'215',76),(941,'112 Stawra',76),(942,'Passat',77),(943,'Golf',77),(944,'Vento',77),(945,'Polo',77),(946,'Corrado',77),(947,'Sharan',77),(948,'Lupo',77),(949,'Bora',77),(950,'Jetta',77),(951,'New Beetle',77),(952,'Phaeton',77),(953,'Touareg',77),(954,'Touran',77),(955,'Multivan',77),(956,'Caddy',77),(957,'Golf Plus',77),(958,'Fox',77),(959,'Eos',77),(960,'Caravelle',77),(961,'Tiguan',77),(962,'Transporter',77),(963,'Lt',77),(964,'Taro',77),(965,'Crafter',77),(966,'California',77),(967,'Santana',77),(968,'Scirocco',77),(969,'Passat Cc',77),(970,'Amarok',77),(971,'Beetle',77),(972,'Up',77),(973,'Cc',77),(974,'440',78),(975,'850',78),(976,'S70',78),(977,'V70',78),(978,'V70 Classic',78),(979,'940',78),(980,'480',78),(981,'460',78),(982,'960',78),(983,'S90',78),(984,'V90',78),(985,'Classic',78),(986,'S40',78),(987,'V40',78),(988,'V50',78),(989,'V70 Xc',78),(990,'Xc70',78),(991,'C70',78),(992,'S80',78),(993,'S60',78),(994,'Xc90',78),(995,'C30',78),(996,'780',78),(997,'760',78),(998,'740',78),(999,'240',78),(1000,'360',78),(1001,'340',78),(1002,'Xc60',78),(1003,'V60',78),(1004,'V40 Cross Country',78),(1005,'353',79),(1006,'Mini',53),(1007,'Countryman',53),(1008,'Paceman',53);
/*!40000 ALTER TABLE `modelos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plazas_garaje`
--

DROP TABLE IF EXISTS `plazas_garaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plazas_garaje` (
  `id_plaza` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_plaza`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plazas_garaje`
--

LOCK TABLES `plazas_garaje` WRITE;
/*!40000 ALTER TABLE `plazas_garaje` DISABLE KEYS */;
INSERT INTO `plazas_garaje` VALUES (1,'Plaza 1 - 1'),(10,'Plaza 1 - 10'),(11,'Plaza 1 - 11'),(12,'Plaza 1 - 12'),(13,'Plaza 1 - 13'),(14,'Plaza 1 - 14'),(15,'Plaza 1 - 15'),(16,'Plaza 1 - 16'),(17,'Plaza 1 - 17'),(18,'Plaza 1 - 18'),(19,'Plaza 1 - 19'),(2,'Plaza 1 - 2'),(3,'Plaza 1 - 3'),(4,'Plaza 1 - 4'),(5,'Plaza 1 - 5'),(6,'Plaza 1 - 6'),(7,'Plaza 1 - 7'),(8,'Plaza 1 - 8'),(9,'Plaza 1 - 9'),(20,'Plaza 2 - 35'),(21,'Plaza 2 - 36'),(22,'Plaza 2 - 37'),(23,'Plaza 2 - 38'),(24,'Plaza 2 - 39'),(25,'Plaza 2 - 40'),(26,'Plaza 2 - 41'),(27,'Plaza 2 - 42'),(28,'Plaza 2 - 43'),(29,'Plaza 2 - 44'),(30,'Plaza 2 - 45'),(31,'Plaza 2 - 46'),(37,'Plaza 3 - 10'),(38,'Plaza 3 - 11'),(39,'Plaza 3 - 12'),(40,'Plaza 3 - 13'),(41,'Plaza 3 - 14'),(42,'Plaza 3 - 15'),(43,'Plaza 3 - 16'),(44,'Plaza 3 - 17'),(45,'Plaza 3 - 18'),(32,'Plaza 3 - 5'),(33,'Plaza 3 - 6'),(34,'Plaza 3 - 7'),(35,'Plaza 3 - 8'),(36,'Plaza 3 - 9');
/*!40000 ALTER TABLE `plazas_garaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas` (
  `id_reserva` int NOT NULL AUTO_INCREMENT,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `precio_total` decimal(8,2) DEFAULT NULL,
  `fk_cliente` int NOT NULL,
  PRIMARY KEY (`id_reserva`),
  KEY `fk_cliente` (`fk_cliente`),
  CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`fk_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `reservas_chk_1` CHECK ((`fecha_fin` >= `fecha_inicio`))
) ENGINE=InnoDB AUTO_INCREMENT=433 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (1,'2021-11-15','2021-11-21',NULL,161),(2,'2021-11-01','2021-11-12',NULL,114),(3,'2022-06-11','2022-06-26',NULL,168),(4,'2021-04-07','2021-04-12',NULL,10),(5,'2020-09-15','2020-09-28',NULL,90),(6,'2023-02-03','2023-02-12',NULL,109),(7,'2022-02-24','2022-03-03',NULL,48),(8,'2020-06-13','2020-06-14',NULL,111),(9,'2022-02-19','2022-03-01',NULL,37),(10,'2021-04-07','2021-04-10',NULL,88),(11,'2020-07-26','2020-08-04',NULL,140),(12,'2023-12-24','2024-01-06',NULL,103),(13,'2021-03-14','2021-03-23',NULL,161),(14,'2020-05-24','2020-06-06',NULL,99),(15,'2021-09-27','2021-10-05',NULL,159),(16,'2022-08-31','2022-09-03',NULL,80),(17,'2021-10-30','2021-11-09',NULL,12),(18,'2022-05-24','2022-06-07',NULL,55),(19,'2021-09-04','2021-09-06',NULL,176),(20,'2022-01-24','2022-02-01',NULL,60),(21,'2021-10-18','2021-10-19',NULL,111),(22,'2021-11-01','2021-11-13',NULL,137),(23,'2021-05-31','2021-06-12',NULL,85),(24,'2020-08-23','2020-08-26',NULL,175),(25,'2020-02-05','2020-02-12',NULL,46),(26,'2023-11-01','2023-11-11',NULL,163),(27,'2023-07-20','2023-07-26',NULL,65),(28,'2021-12-05','2021-12-17',NULL,169),(29,'2022-06-25','2022-06-30',NULL,117),(30,'2020-11-06','2020-11-12',NULL,128),(31,'2022-07-10','2022-07-21',NULL,75),(32,'2021-09-25','2021-10-09',NULL,129),(33,'2021-10-28','2021-11-06',NULL,140),(34,'2023-12-14','2023-12-20',NULL,62),(35,'2021-11-15','2021-11-30',NULL,156),(36,'2023-03-07','2023-03-11',NULL,127),(37,'2021-10-22','2021-11-04',NULL,30),(38,'2020-09-02','2020-09-04',NULL,13),(39,'2023-08-29','2023-08-30',NULL,32),(40,'2022-08-13','2022-08-16',NULL,2),(41,'2020-12-14','2020-12-17',NULL,165),(42,'2021-03-23','2021-03-27',NULL,62),(43,'2021-11-07','2021-11-17',NULL,20),(44,'2021-11-27','2021-12-09',NULL,46),(45,'2021-08-06','2021-08-18',NULL,40),(46,'2020-02-03','2020-02-17',NULL,72),(47,'2020-12-03','2020-12-18',NULL,17),(48,'2021-07-08','2021-07-21',NULL,17),(49,'2023-09-06','2023-09-11',NULL,95),(50,'2023-03-23','2023-03-26',NULL,51),(51,'2023-04-16','2023-04-17',NULL,49),(52,'2020-02-03','2020-02-16',NULL,132),(53,'2022-08-22','2022-09-02',NULL,93),(54,'2022-11-26','2022-11-28',NULL,167),(55,'2023-08-02','2023-08-05',NULL,133),(56,'2023-02-26','2023-03-13',NULL,102),(57,'2021-09-21','2021-09-29',NULL,134),(58,'2020-01-10','2020-01-23',NULL,62),(59,'2022-12-18','2022-12-25',NULL,39),(60,'2020-04-30','2020-05-07',NULL,148),(61,'2022-12-21','2022-12-24',NULL,23),(62,'2021-02-28','2021-03-11',NULL,130),(63,'2022-08-10','2022-08-11',NULL,67),(64,'2021-08-21','2021-08-23',NULL,43),(65,'2021-06-19','2021-06-30',NULL,142),(66,'2021-12-29','2022-01-04',NULL,48),(67,'2023-07-31','2023-08-10',NULL,148),(68,'2021-05-29','2021-06-07',NULL,78),(69,'2023-03-15','2023-03-29',NULL,162),(70,'2021-09-21','2021-10-05',NULL,154),(71,'2020-03-11','2020-03-18',NULL,87),(72,'2022-07-05','2022-07-20',NULL,105),(73,'2021-06-04','2021-06-05',NULL,160),(74,'2021-11-09','2021-11-13',NULL,101),(75,'2020-09-13','2020-09-28',NULL,73),(76,'2020-05-19','2020-05-25',NULL,176),(77,'2022-03-09','2022-03-13',NULL,38),(78,'2020-08-21','2020-08-30',NULL,104),(79,'2020-04-10','2020-04-12',NULL,178),(80,'2023-04-08','2023-04-09',NULL,160),(81,'2020-01-29','2020-02-08',NULL,69),(82,'2020-09-01','2020-09-08',NULL,79),(83,'2021-05-05','2021-05-20',NULL,18),(84,'2020-02-19','2020-02-20',NULL,30),(85,'2021-10-17','2021-10-28',NULL,55),(86,'2022-07-29','2022-08-06',NULL,53),(87,'2022-11-21','2022-12-02',NULL,7),(88,'2020-05-21','2020-06-02',NULL,148),(89,'2020-10-30','2020-11-08',NULL,145),(90,'2021-09-18','2021-10-01',NULL,8),(91,'2020-10-31','2020-11-03',NULL,141),(92,'2023-03-31','2023-04-10',NULL,117),(93,'2020-09-06','2020-09-19',NULL,106),(94,'2020-09-10','2020-09-14',NULL,140),(95,'2021-07-19','2021-07-31',NULL,115),(96,'2022-12-13','2022-12-28',NULL,179),(97,'2020-12-13','2020-12-28',NULL,146),(98,'2022-04-29','2022-05-05',NULL,108),(99,'2021-08-02','2021-08-08',NULL,51),(100,'2021-10-15','2021-10-19',NULL,117),(101,'2023-12-11','2023-12-18',NULL,72),(102,'2023-12-21','2023-12-29',NULL,179),(103,'2022-05-17','2022-05-22',NULL,171),(104,'2022-02-03','2022-02-07',NULL,39),(105,'2020-01-10','2020-01-17',NULL,59),(106,'2022-12-24','2022-12-31',NULL,91),(107,'2020-07-14','2020-07-28',NULL,62),(108,'2020-09-14','2020-09-28',NULL,164),(109,'2023-10-31','2023-11-02',NULL,71),(110,'2020-05-25','2020-05-26',NULL,78),(111,'2023-09-29','2023-10-04',NULL,149),(112,'2022-05-28','2022-06-07',NULL,145),(113,'2022-03-23','2022-04-04',NULL,109),(114,'2020-10-01','2020-10-03',NULL,56),(115,'2020-06-11','2020-06-18',NULL,57),(116,'2023-09-30','2023-10-04',NULL,139),(117,'2021-05-21','2021-05-28',NULL,127),(118,'2022-06-26','2022-07-07',NULL,135),(119,'2021-10-16','2021-10-26',NULL,77),(120,'2022-03-01','2022-03-05',NULL,153),(121,'2023-06-12','2023-06-23',NULL,45),(122,'2022-08-23','2022-09-04',NULL,156),(123,'2022-10-24','2022-11-07',NULL,135),(124,'2023-12-26','2023-12-29',NULL,85),(125,'2021-01-28','2021-02-09',NULL,6),(126,'2022-08-09','2022-08-21',NULL,78),(127,'2021-06-11','2021-06-17',NULL,10),(128,'2023-12-13','2023-12-20',NULL,71),(129,'2021-10-10','2021-10-24',NULL,64),(130,'2023-07-05','2023-07-07',NULL,94),(131,'2023-09-30','2023-10-11',NULL,119),(132,'2023-12-08','2023-12-13',NULL,25),(133,'2021-10-11','2021-10-25',NULL,168),(134,'2020-12-05','2020-12-10',NULL,50),(135,'2022-01-24','2022-01-30',NULL,6),(136,'2021-02-04','2021-02-17',NULL,116),(137,'2022-11-11','2022-11-19',NULL,160),(138,'2023-05-02','2023-05-09',NULL,5),(139,'2022-09-24','2022-10-04',NULL,139),(140,'2020-01-12','2020-01-14',NULL,65),(141,'2023-06-23','2023-07-04',NULL,163),(142,'2020-06-13','2020-06-16',NULL,97),(143,'2020-03-12','2020-03-23',NULL,41),(144,'2021-04-29','2021-05-01',NULL,105),(145,'2020-02-29','2020-03-04',NULL,65),(146,'2021-06-11','2021-06-18',NULL,80),(147,'2023-09-05','2023-09-19',NULL,180),(148,'2023-04-16','2023-04-23',NULL,69),(149,'2022-03-13','2022-03-15',NULL,144),(150,'2020-03-17','2020-03-18',NULL,33),(151,'2023-04-10','2023-04-25',NULL,83),(152,'2023-03-01','2023-03-03',NULL,84),(153,'2023-03-03','2023-03-13',NULL,52),(154,'2023-10-11','2023-10-18',NULL,45),(155,'2023-07-02','2023-07-08',NULL,55),(156,'2021-01-25','2021-02-08',NULL,98),(157,'2020-03-21','2020-03-31',NULL,135),(158,'2023-02-04','2023-02-12',NULL,91),(159,'2020-11-22','2020-11-28',NULL,53),(160,'2021-01-29','2021-02-11',NULL,118),(161,'2021-11-26','2021-12-09',NULL,123),(162,'2022-12-27','2023-01-01',NULL,120),(163,'2021-07-09','2021-07-20',NULL,158),(164,'2020-09-08','2020-09-19',NULL,63),(165,'2023-04-02','2023-04-12',NULL,71),(166,'2023-10-01','2023-10-05',NULL,144),(167,'2023-01-26','2023-02-09',NULL,130),(168,'2022-07-19','2022-07-27',NULL,51),(169,'2023-09-19','2023-09-30',NULL,83),(170,'2021-10-30','2021-11-03',NULL,131),(171,'2021-09-25','2021-10-06',NULL,5),(172,'2020-05-31','2020-06-07',NULL,18),(173,'2023-12-12','2023-12-22',NULL,121),(174,'2023-11-29','2023-11-30',NULL,111),(175,'2022-05-02','2022-05-12',NULL,79),(176,'2021-08-15','2021-08-16',NULL,35),(177,'2022-06-08','2022-06-15',NULL,81),(178,'2022-09-01','2022-09-09',NULL,16),(179,'2022-09-06','2022-09-13',NULL,152),(180,'2020-11-21','2020-11-25',NULL,108),(181,'2020-06-24','2020-06-28',NULL,78),(182,'2022-10-20','2022-10-28',NULL,167),(183,'2023-02-27','2023-03-03',NULL,174),(184,'2023-06-03','2023-06-12',NULL,164),(185,'2022-09-12','2022-09-25',NULL,90),(186,'2022-02-24','2022-02-27',NULL,52),(187,'2023-04-23','2023-05-06',NULL,106),(188,'2020-02-08','2020-02-11',NULL,115),(189,'2023-03-26','2023-04-01',NULL,5),(190,'2021-07-31','2021-08-04',NULL,74),(191,'2022-08-01','2022-08-08',NULL,55),(192,'2020-09-16','2020-09-21',NULL,56),(193,'2020-10-17','2020-10-25',NULL,141),(194,'2022-09-25','2022-09-30',NULL,77),(195,'2022-07-29','2022-08-06',NULL,78),(196,'2022-05-23','2022-05-29',NULL,18),(197,'2023-01-25','2023-02-09',NULL,148),(198,'2020-12-06','2020-12-10',NULL,63),(199,'2023-07-13','2023-07-17',NULL,171),(200,'2022-04-15','2022-04-20',NULL,169),(201,'2021-04-11','2021-04-17',NULL,120),(202,'2020-09-01','2020-09-07',NULL,60),(203,'2022-01-10','2022-01-18',NULL,18),(204,'2022-03-01','2022-03-11',NULL,78),(205,'2021-08-16','2021-08-27',NULL,45),(206,'2021-05-26','2021-06-09',NULL,171),(207,'2020-05-01','2020-05-14',NULL,23),(208,'2022-12-26','2023-01-07',NULL,8),(209,'2020-02-21','2020-02-24',NULL,13),(210,'2022-07-30','2022-08-10',NULL,49),(211,'2022-05-15','2022-05-26',NULL,21),(212,'2022-12-16','2022-12-27',NULL,84),(213,'2021-08-11','2021-08-22',NULL,95),(214,'2021-07-04','2021-07-12',NULL,135),(215,'2020-04-14','2020-04-28',NULL,24),(216,'2023-07-16','2023-07-21',NULL,148),(217,'2021-11-15','2021-11-21',NULL,161),(218,'2021-11-01','2021-11-12',NULL,114),(219,'2022-06-11','2022-06-26',NULL,168),(220,'2021-04-07','2021-04-12',NULL,10),(221,'2020-09-15','2020-09-28',NULL,90),(222,'2023-02-03','2023-02-12',NULL,109),(223,'2022-02-24','2022-03-03',NULL,48),(224,'2020-06-13','2020-06-14',NULL,111),(225,'2022-02-19','2022-03-01',NULL,37),(226,'2021-04-07','2021-04-10',NULL,88),(227,'2020-07-26','2020-08-04',NULL,140),(228,'2023-12-24','2024-01-06',NULL,103),(229,'2021-03-14','2021-03-23',NULL,161),(230,'2020-05-24','2020-06-06',NULL,99),(231,'2021-09-27','2021-10-05',NULL,159),(232,'2022-08-31','2022-09-03',NULL,80),(233,'2021-10-30','2021-11-09',NULL,12),(234,'2022-05-24','2022-06-07',NULL,55),(235,'2021-09-04','2021-09-06',NULL,176),(236,'2022-01-24','2022-02-01',NULL,60),(237,'2021-10-18','2021-10-19',NULL,111),(238,'2021-11-01','2021-11-13',NULL,137),(239,'2021-05-31','2021-06-12',NULL,85),(240,'2020-08-23','2020-08-26',NULL,175),(241,'2020-02-05','2020-02-12',NULL,46),(242,'2023-11-01','2023-11-11',NULL,163),(243,'2023-07-20','2023-07-26',NULL,65),(244,'2021-12-05','2021-12-17',NULL,169),(245,'2022-06-25','2022-06-30',NULL,117),(246,'2020-11-06','2020-11-12',NULL,128),(247,'2022-07-10','2022-07-21',NULL,75),(248,'2021-09-25','2021-10-09',NULL,129),(249,'2021-10-28','2021-11-06',NULL,140),(250,'2023-12-14','2023-12-20',NULL,62),(251,'2021-11-15','2021-11-30',NULL,156),(252,'2023-03-07','2023-03-11',NULL,127),(253,'2021-10-22','2021-11-04',NULL,30),(254,'2020-09-02','2020-09-04',NULL,13),(255,'2023-08-29','2023-08-30',NULL,32),(256,'2022-08-13','2022-08-16',NULL,2),(257,'2020-12-14','2020-12-17',NULL,165),(258,'2021-03-23','2021-03-27',NULL,62),(259,'2021-11-07','2021-11-17',NULL,20),(260,'2021-11-27','2021-12-09',NULL,46),(261,'2021-08-06','2021-08-18',NULL,40),(262,'2020-02-03','2020-02-17',NULL,72),(263,'2020-12-03','2020-12-18',NULL,17),(264,'2021-07-08','2021-07-21',NULL,17),(265,'2023-09-06','2023-09-11',NULL,95),(266,'2023-03-23','2023-03-26',NULL,51),(267,'2023-04-16','2023-04-17',NULL,49),(268,'2020-02-03','2020-02-16',NULL,132),(269,'2022-08-22','2022-09-02',NULL,93),(270,'2022-11-26','2022-11-28',NULL,167),(271,'2023-08-02','2023-08-05',NULL,133),(272,'2023-02-26','2023-03-13',NULL,102),(273,'2021-09-21','2021-09-29',NULL,134),(274,'2020-01-10','2020-01-23',NULL,62),(275,'2022-12-18','2022-12-25',NULL,39),(276,'2020-04-30','2020-05-07',NULL,148),(277,'2022-12-21','2022-12-24',NULL,23),(278,'2021-02-28','2021-03-11',NULL,130),(279,'2022-08-10','2022-08-11',NULL,67),(280,'2021-08-21','2021-08-23',NULL,43),(281,'2021-06-19','2021-06-30',NULL,142),(282,'2021-12-29','2022-01-04',NULL,48),(283,'2023-07-31','2023-08-10',NULL,148),(284,'2021-05-29','2021-06-07',NULL,78),(285,'2023-03-15','2023-03-29',NULL,162),(286,'2021-09-21','2021-10-05',NULL,154),(287,'2020-03-11','2020-03-18',NULL,87),(288,'2022-07-05','2022-07-20',NULL,105),(289,'2021-06-04','2021-06-05',NULL,160),(290,'2021-11-09','2021-11-13',NULL,101),(291,'2020-09-13','2020-09-28',NULL,73),(292,'2020-05-19','2020-05-25',NULL,176),(293,'2022-03-09','2022-03-13',NULL,38),(294,'2020-08-21','2020-08-30',NULL,104),(295,'2020-04-10','2020-04-12',NULL,178),(296,'2023-04-08','2023-04-09',NULL,160),(297,'2020-01-29','2020-02-08',NULL,69),(298,'2020-09-01','2020-09-08',NULL,79),(299,'2021-05-05','2021-05-20',NULL,18),(300,'2020-02-19','2020-02-20',NULL,30),(301,'2021-10-17','2021-10-28',NULL,55),(302,'2022-07-29','2022-08-06',NULL,53),(303,'2022-11-21','2022-12-02',NULL,7),(304,'2020-05-21','2020-06-02',NULL,148),(305,'2020-10-30','2020-11-08',NULL,145),(306,'2021-09-18','2021-10-01',NULL,8),(307,'2020-10-31','2020-11-03',NULL,141),(308,'2023-03-31','2023-04-10',NULL,117),(309,'2020-09-06','2020-09-19',NULL,106),(310,'2020-09-10','2020-09-14',NULL,140),(311,'2021-07-19','2021-07-31',NULL,115),(312,'2022-12-13','2022-12-28',NULL,179),(313,'2020-12-13','2020-12-28',NULL,146),(314,'2022-04-29','2022-05-05',NULL,108),(315,'2021-08-02','2021-08-08',NULL,51),(316,'2021-10-15','2021-10-19',NULL,117),(317,'2023-12-11','2023-12-18',NULL,72),(318,'2023-12-21','2023-12-29',NULL,179),(319,'2022-05-17','2022-05-22',NULL,171),(320,'2022-02-03','2022-02-07',NULL,39),(321,'2020-01-10','2020-01-17',NULL,59),(322,'2022-12-24','2022-12-31',NULL,91),(323,'2020-07-14','2020-07-28',NULL,62),(324,'2020-09-14','2020-09-28',NULL,164),(325,'2023-10-31','2023-11-02',NULL,71),(326,'2020-05-25','2020-05-26',NULL,78),(327,'2023-09-29','2023-10-04',NULL,149),(328,'2022-05-28','2022-06-07',NULL,145),(329,'2022-03-23','2022-04-04',NULL,109),(330,'2020-10-01','2020-10-03',NULL,56),(331,'2020-06-11','2020-06-18',NULL,57),(332,'2023-09-30','2023-10-04',NULL,139),(333,'2021-05-21','2021-05-28',NULL,127),(334,'2022-06-26','2022-07-07',NULL,135),(335,'2021-10-16','2021-10-26',NULL,77),(336,'2022-03-01','2022-03-05',NULL,153),(337,'2023-06-12','2023-06-23',NULL,45),(338,'2022-08-23','2022-09-04',NULL,156),(339,'2022-10-24','2022-11-07',NULL,135),(340,'2023-12-26','2023-12-29',NULL,85),(341,'2021-01-28','2021-02-09',NULL,6),(342,'2022-08-09','2022-08-21',NULL,78),(343,'2021-06-11','2021-06-17',NULL,10),(344,'2023-12-13','2023-12-20',NULL,71),(345,'2021-10-10','2021-10-24',NULL,64),(346,'2023-07-05','2023-07-07',NULL,94),(347,'2023-09-30','2023-10-11',NULL,119),(348,'2023-12-08','2023-12-13',NULL,25),(349,'2021-10-11','2021-10-25',NULL,168),(350,'2020-12-05','2020-12-10',NULL,50),(351,'2022-01-24','2022-01-30',NULL,6),(352,'2021-02-04','2021-02-17',NULL,116),(353,'2022-11-11','2022-11-19',NULL,160),(354,'2023-05-02','2023-05-09',NULL,5),(355,'2022-09-24','2022-10-04',NULL,139),(356,'2020-01-12','2020-01-14',NULL,65),(357,'2023-06-23','2023-07-04',NULL,163),(358,'2020-06-13','2020-06-16',NULL,97),(359,'2020-03-12','2020-03-23',NULL,41),(360,'2021-04-29','2021-05-01',NULL,105),(361,'2020-02-29','2020-03-04',NULL,65),(362,'2021-06-11','2021-06-18',NULL,80),(363,'2023-09-05','2023-09-19',NULL,180),(364,'2023-04-16','2023-04-23',NULL,69),(365,'2022-03-13','2022-03-15',NULL,144),(366,'2020-03-17','2020-03-18',NULL,33),(367,'2023-04-10','2023-04-25',NULL,83),(368,'2023-03-01','2023-03-03',NULL,84),(369,'2023-03-03','2023-03-13',NULL,52),(370,'2023-10-11','2023-10-18',NULL,45),(371,'2023-07-02','2023-07-08',NULL,55),(372,'2021-01-25','2021-02-08',NULL,98),(373,'2020-03-21','2020-03-31',NULL,135),(374,'2023-02-04','2023-02-12',NULL,91),(375,'2020-11-22','2020-11-28',NULL,53),(376,'2021-01-29','2021-02-11',NULL,118),(377,'2021-11-26','2021-12-09',NULL,123),(378,'2022-12-27','2023-01-01',NULL,120),(379,'2021-07-09','2021-07-20',NULL,158),(380,'2020-09-08','2020-09-19',NULL,63),(381,'2023-04-02','2023-04-12',NULL,71),(382,'2023-10-01','2023-10-05',NULL,144),(383,'2023-01-26','2023-02-09',NULL,130),(384,'2022-07-19','2022-07-27',NULL,51),(385,'2023-09-19','2023-09-30',NULL,83),(386,'2021-10-30','2021-11-03',NULL,131),(387,'2021-09-25','2021-10-06',NULL,5),(388,'2020-05-31','2020-06-07',NULL,18),(389,'2023-12-12','2023-12-22',NULL,121),(390,'2023-11-29','2023-11-30',NULL,111),(391,'2022-05-02','2022-05-12',NULL,79),(392,'2021-08-15','2021-08-16',NULL,35),(393,'2022-06-08','2022-06-15',NULL,81),(394,'2022-09-01','2022-09-09',NULL,16),(395,'2022-09-06','2022-09-13',NULL,152),(396,'2020-11-21','2020-11-25',NULL,108),(397,'2020-06-24','2020-06-28',NULL,78),(398,'2022-10-20','2022-10-28',NULL,167),(399,'2023-02-27','2023-03-03',NULL,174),(400,'2023-06-03','2023-06-12',NULL,164),(401,'2022-09-12','2022-09-25',NULL,90),(402,'2022-02-24','2022-02-27',NULL,52),(403,'2023-04-23','2023-05-06',NULL,106),(404,'2020-02-08','2020-02-11',NULL,115),(405,'2023-03-26','2023-04-01',NULL,5),(406,'2021-07-31','2021-08-04',NULL,74),(407,'2022-08-01','2022-08-08',NULL,55),(408,'2020-09-16','2020-09-21',NULL,56),(409,'2020-10-17','2020-10-25',NULL,141),(410,'2022-09-25','2022-09-30',NULL,77),(411,'2022-07-29','2022-08-06',NULL,78),(412,'2022-05-23','2022-05-29',NULL,18),(413,'2023-01-25','2023-02-09',NULL,148),(414,'2020-12-06','2020-12-10',NULL,63),(415,'2023-07-13','2023-07-17',NULL,171),(416,'2022-04-15','2022-04-20',NULL,169),(417,'2021-04-11','2021-04-17',NULL,120),(418,'2020-09-01','2020-09-07',NULL,60),(419,'2022-01-10','2022-01-18',NULL,18),(420,'2022-03-01','2022-03-11',NULL,78),(421,'2021-08-16','2021-08-27',NULL,45),(422,'2021-05-26','2021-06-09',NULL,171),(423,'2020-05-01','2020-05-14',NULL,23),(424,'2022-12-26','2023-01-07',NULL,8),(425,'2020-02-21','2020-02-24',NULL,13),(426,'2022-07-30','2022-08-10',NULL,49),(427,'2022-05-15','2022-05-26',NULL,21),(428,'2022-12-16','2022-12-27',NULL,84),(429,'2021-08-11','2021-08-22',NULL,95),(430,'2021-07-04','2021-07-12',NULL,135),(431,'2020-04-14','2020-04-28',NULL,24),(432,'2023-07-16','2023-07-21',NULL,148);
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-30 12:10:22
