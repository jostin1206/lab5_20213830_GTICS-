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
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb3 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`areas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`areas` (
  `idAreas` INT NOT NULL AUTO_INCREMENT,
  `nombreArea` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idAreas`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`recursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`recursos` (
  `idRecursos` INT NOT NULL,
  PRIMARY KEY (`idRecursos`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`canciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`canciones` (
  `idCanciones` INT NOT NULL AUTO_INCREMENT,
  `nombreCancion` VARCHAR(45) NOT NULL,
  `tipoCancion` INT NOT NULL,
  `idRecurso` INT NOT NULL,
  PRIMARY KEY (`idCanciones`, `idRecurso`),
  INDEX `fk_Canciones_Recursos1_idx` (`idRecurso` ASC) VISIBLE,
  CONSTRAINT `fk_Canciones_Recursos1`
    FOREIGN KEY (`idRecurso`)
    REFERENCES `mydb`.`recursos` (`idRecursos`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`sedes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`sedes` (
  `idSedes` INT NOT NULL AUTO_INCREMENT,
  `nombreSede` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idSedes`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`profesionales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`profesionales` (
  `idProfesionales` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `imagen` VARCHAR(45) NOT NULL,
  `descripcionProfesional` VARCHAR(90) NOT NULL,
  `idArea` INT NOT NULL,
  `idSede` INT NOT NULL,
  PRIMARY KEY (`idProfesionales`),
  INDEX `fk_Profesionales_Areas_idx` (`idArea` ASC) VISIBLE,
  INDEX `fk_Profesionales_Sedes1_idx` (`idSede` ASC) VISIBLE,
  CONSTRAINT `fk_Profesionales_Areas`
    FOREIGN KEY (`idArea`)
    REFERENCES `mydb`.`areas` (`idAreas`),
  CONSTRAINT `fk_Profesionales_Sedes1`
    FOREIGN KEY (`idSede`)
    REFERENCES `mydb`.`sedes` (`idSedes`))
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`fechas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`fechas` (
  `idFechas` INT NOT NULL AUTO_INCREMENT,
  `fechaDisponibilidad` DATE NOT NULL,
  `idProfesional` INT NOT NULL,
  PRIMARY KEY (`idFechas`, `idProfesional`),
  INDEX `fk_Fechas_Profesionales1_idx` (`idProfesional` ASC) VISIBLE,
  CONSTRAINT `fk_Fechas_Profesionales1`
    FOREIGN KEY (`idProfesional`)
    REFERENCES `mydb`.`profesionales` (`idProfesionales`))
ENGINE = InnoDB
AUTO_INCREMENT = 24
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`riesgos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`riesgos` (
  `idRiesgos` INT NOT NULL AUTO_INCREMENT,
  `nombreriesgo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idRiesgos`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`pacientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`pacientes` (
  `idPacientes` INT NOT NULL AUTO_INCREMENT,
  `nombrePaciente` VARCHAR(45) NOT NULL,
  `DNI` VARCHAR(45) NOT NULL,
  `Edad` INT NOT NULL,
  `riesgos_idRiesgos` INT NOT NULL,
  PRIMARY KEY (`idPacientes`),
  INDEX `fk_pacientes_riesgos1_idx` (`riesgos_idRiesgos` ASC) VISIBLE,
  CONSTRAINT `fk_pacientes_riesgos1`
    FOREIGN KEY (`riesgos_idRiesgos`)
    REFERENCES `mydb`.`riesgos` (`idRiesgos`))
ENGINE = InnoDB
AUTO_INCREMENT = 14
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`citas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`citas` (
  `idCitas` INT NOT NULL AUTO_INCREMENT,
  `motivoConsulta` VARCHAR(45) NOT NULL,
  `idPaciente` INT NOT NULL,
  `idArea` INT NOT NULL,
  `idSede` INT NOT NULL,
  `idFechaConsulta` INT NOT NULL,
  `idRiesgo` INT NOT NULL,
  `precio` DECIMAL(10,2) NULL DEFAULT NULL,
  `Citascol` VARCHAR(45) NULL DEFAULT NULL,
  `idProfesional` INT NOT NULL,
  PRIMARY KEY (`idCitas`),
  INDEX `fk_Citas_Fechas1_idx` (`idFechaConsulta` ASC) VISIBLE,
  INDEX `fk_Citas_Areas1_idx` (`idArea` ASC) VISIBLE,
  INDEX `fk_Citas_Sedes1_idx` (`idSede` ASC) VISIBLE,
  INDEX `fk_Citas_Pacientes1_idx` (`idPaciente` ASC) VISIBLE,
  INDEX `fk_Citas_Riesgos1_idx` (`idRiesgo` ASC) VISIBLE,
  INDEX `fk_citas_profesionales1_idx` (`idProfesional` ASC) VISIBLE,
  CONSTRAINT `fk_Citas_Areas1`
    FOREIGN KEY (`idArea`)
    REFERENCES `mydb`.`areas` (`idAreas`),
  CONSTRAINT `fk_Citas_Fechas1`
    FOREIGN KEY (`idFechaConsulta`)
    REFERENCES `mydb`.`fechas` (`idFechas`),
  CONSTRAINT `fk_Citas_Pacientes1`
    FOREIGN KEY (`idPaciente`)
    REFERENCES `mydb`.`pacientes` (`idPacientes`),
  CONSTRAINT `fk_citas_profesionales1`
    FOREIGN KEY (`idProfesional`)
    REFERENCES `mydb`.`profesionales` (`idProfesionales`),
  CONSTRAINT `fk_Citas_Riesgos1`
    FOREIGN KEY (`idRiesgo`)
    REFERENCES `mydb`.`riesgos` (`idRiesgos`),
  CONSTRAINT `fk_Citas_Sedes1`
    FOREIGN KEY (`idSede`)
    REFERENCES `mydb`.`sedes` (`idSedes`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`foro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`foro` (
  `idForo` INT NOT NULL AUTO_INCREMENT,
  `comentario` VARCHAR(45) NOT NULL,
  `nombrePersona` VARCHAR(45) NOT NULL,
  `edad` INT NULL DEFAULT NULL,
  PRIMARY KEY (`idForo`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`frases`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`frases` (
  `idFrases` INT NOT NULL AUTO_INCREMENT,
  `frase` VARCHAR(45) NOT NULL,
  `idRecurso` INT NOT NULL,
  PRIMARY KEY (`idFrases`),
  INDEX `fk_Frases_Recursos1_idx` (`idRecurso` ASC) VISIBLE,
  CONSTRAINT `fk_Frases_Recursos1`
    FOREIGN KEY (`idRecurso`)
    REFERENCES `mydb`.`recursos` (`idRecursos`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
