-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema sym02
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sym02
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sym02` DEFAULT CHARACTER SET utf8 ;
USE `sym02` ;

-- -----------------------------------------------------
-- Table `sym02`.`author`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sym02`.`author` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstName` VARCHAR(80) NULL,
  `surName` VARCHAR(80) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sym02`.`article`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sym02`.`article` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `theTitle` VARCHAR(100) NOT NULL,
  `theText` TEXT NULL,
  `theDate` DATETIME NULL,
  `authorId` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_article_author_idx` (`authorId` ASC),
  CONSTRAINT `fk_article_author`
    FOREIGN KEY (`authorId`)
    REFERENCES `sym02`.`author` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
