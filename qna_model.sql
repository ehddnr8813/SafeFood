-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`qna`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`qna` (
  `number` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NULL,
  `contents` VARCHAR(500) NULL,
  PRIMARY KEY (`number`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`answer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`answer` (
  `answer` VARCHAR(1000) NOT NULL,
  `qna_number` INT NOT NULL,
  PRIMARY KEY (`answer`, `qna_number`),
  INDEX `fk_answer_qna_idx` (`qna_number` ASC) VISIBLE,
  CONSTRAINT `fk_answer_qna`
    FOREIGN KEY (`qna_number`)
    REFERENCES `mydb`.`qna` (`number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
