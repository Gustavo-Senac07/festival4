-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema festival4
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema festival4
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `festival4` ;
USE `festival4` ;

-- -----------------------------------------------------
-- Table `festival4`.`participante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `festival4`.`participante` (
  `id_participante` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(70) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `data_nasc` DATE NOT NULL,
  `telefone` VARCHAR(11) NOT NULL,
  `status` ENUM("ativo", "inativo") NOT NULL DEFAULT 'ativo',
  PRIMARY KEY (`id_participante`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `festival4`.`atividade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `festival4`.`atividade` (
  `id_atividade` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(200) NOT NULL,
  `vagas` INT NOT NULL,
  `status` ENUM("ativo", "inativo") NOT NULL DEFAULT 'ativo',
  `criado_em` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_atividade`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `festival4`.`inscricao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `festival4`.`inscricao` (
  `id_inscricao` INT NOT NULL AUTO_INCREMENT,
  `status` ENUM("ativo", "inativo") NOT NULL DEFAULT 'ativo',
  `participante_id_participante` INT NOT NULL,
  `atividade_id_atividade` INT NOT NULL,
  PRIMARY KEY (`id_inscricao`),
  INDEX `fk_inscricao_participante_idx` (`participante_id_participante` ASC) VISIBLE,
  INDEX `fk_inscricao_atividade1_idx` (`atividade_id_atividade` ASC) VISIBLE,
  CONSTRAINT `fk_inscricao_participante`
    FOREIGN KEY (`participante_id_participante`)
    REFERENCES `festival4`.`participante` (`id_participante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_inscricao_atividade1`
    FOREIGN KEY (`atividade_id_atividade`)
    REFERENCES `festival4`.`atividade` (`id_atividade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
