CREATE SCHEMA `SQL` DEFAULT CHARACTER SET armscii8 ;

CREATE TABLE `SQL`.`PRODUCT` (
  `MACKER` VARCHAR(45) NOT NULL,
  `MODEL` VARCHAR(45) NOT NULL,
  `TYPE` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`MODEL`));
