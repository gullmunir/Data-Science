CREATE TABLE `libarary_management`.`bookdetails` (
  `Accno` VARCHAR(45) NOT NULL,
  `Author` VARCHAR(45) NOT NULL,
  `Title` VARCHAR(45) NOT NULL,
  `Publication` VARCHAR(45) NOT NULL,
  `Edition` VARCHAR(45) NOT NULL,
  `No_of_copies` INT NOT NULL,
  `Volumn` VARCHAR(45) NOT NULL,
  `Date_pur` VARCHAR(45) NOT NULL,
  `Price` DECIMAL(18,2) NOT NULL,
  `Status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Accno`));

CREATE TABLE `libarary_management`.`issue` (
  `Regno` VARCHAR(45) NOT NULL,
  `Dateofissuebooks` DATETIME NOT NULL,
  `Dateofreturnbooks` DATETIME NOT NULL,
  `Accno` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Course` VARCHAR(45) NOT NULL,
  `Author` VARCHAR(45) NOT NULL,
  `Volumn` VARCHAR(45) NOT NULL,
  `Edition` VARCHAR(45) NOT NULL,
  INDEX `Regno_idx` (`Regno` ASC) VISIBLE,
  CONSTRAINT `Regno`
    FOREIGN KEY (`Regno`)
    REFERENCES `libarary_management`.`student` (`Regno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `libarary_management`.`return` (
  `Regno` VARCHAR(45) NOT NULL,
  `Accno` VARCHAR(45) NOT NULL,
  `Dateofreturnbooks` DATETIME NOT NULL,
  `Dateofissuebooks` DATETIME NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Course` VARCHAR(45) NOT NULL,
  `Author` VARCHAR(45) NOT NULL,
  `Volumn` VARCHAR(45) NOT NULL,
  `Edition` VARCHAR(45) NOT NULL,
  INDEX `RegistrationNo_idx` (`Regno` ASC) VISIBLE,
  CONSTRAINT `RegistrationNo`
    FOREIGN KEY (`Regno`)
    REFERENCES `libarary_management`.`student` (`Regno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);