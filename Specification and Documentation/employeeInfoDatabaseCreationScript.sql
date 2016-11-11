-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema employeeInfo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema employeeInfo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `employeeInfo` DEFAULT CHARACTER SET utf8 ;
USE `employeeInfo` ;

-- -----------------------------------------------------
-- Table `employeeInfo`.`employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `employeeInfo`.`employee` (
  `employee_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `country` VARCHAR(25) NOT NULL,
  `gender` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`employee_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `employeeInfo`.`admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `employeeInfo`.`admin` (
  `username` VARCHAR(30) NOT NULL,
  `password` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`username`, `password`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;