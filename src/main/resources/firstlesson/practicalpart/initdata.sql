CREATE SCHEMA `SQL` DEFAULT CHARACTER SET armscii8 ;

CREATE TABLE `SQL`.`PRODUCT` (
  `MAKER` VARCHAR(45) NOT NULL,
  `MODEL` VARCHAR(45) NOT NULL,
  `TYPE` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`MODEL`));

CREATE TABLE `SQL`.`PC` (
  `CODE` INT NOT NULL,
  `MODEL` VARCHAR(45) NOT NULL,
  `TYPE` VARCHAR(45) NOT NULL,
  `RAM` VARCHAR(45) NOT NULL,
  `SPEED` VARCHAR(45) NOT NULL,
  `PRICE` DECIMAL(50) NOT NULL,
  `IMG` BLOB(1000000) NOT NULL,
  PRIMARY KEY (`CODE`),
  FOREIGN KEY (`MODEL`) REFERENCES `SQL`.`PRODUCT`(`MODEL`));

CREATE TABLE `SQL`.`LAPTOP` (
  `CODE` INT NOT NULL,
  `MODEL` VARCHAR(45) NOT NULL,
  `TYPE` VARCHAR(45) NOT NULL,
  `RAM` VARCHAR(45) NOT NULL,
  `SPEED` VARCHAR(45) NOT NULL,
  `PRICE` DECIMAL(50) NOT NULL,
  `IMG` BLOB(1000000) NOT NULL,
  PRIMARY KEY (`CODE`),
  FOREIGN KEY (`MODEL`) REFERENCES `SQL`.`PRODUCT`(`MODEL`));

CREATE TABLE `SQL`.`PRINTER` (
  `CODE` INT NOT NULL,
  `MODEL` VARCHAR(45) NOT NULL,
  `TYPE` VARCHAR(45) NOT NULL,
  `COLOR` INT(1) NOT NULL,
  `PRICE` DECIMAL(50) NOT NULL,
  PRIMARY KEY (`CODE`),
  FOREIGN KEY (`MODEL`) REFERENCES `SQL`.`PRODUCT`(`MODEL`));
