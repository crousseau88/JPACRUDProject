-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema snkrlist
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `snkrlist` ;

-- -----------------------------------------------------
-- Schema snkrlist
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `snkrlist` DEFAULT CHARACTER SET utf8 ;
USE `snkrlist` ;

-- -----------------------------------------------------
-- Table `sneaker_inventory`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sneaker_inventory` ;

CREATE TABLE IF NOT EXISTS `sneaker_inventory` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS snkrhead@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'snkrhead'@'localhost' IDENTIFIED BY 'snkrhead';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'snkrhead'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
