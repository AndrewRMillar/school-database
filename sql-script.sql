CREATE DATABASE `school_naam`;
USE `school_naam` ;

CREATE TABLE `leerling` (
  `leerling_id` SMALLINT(10) NOT NULL IDENTITY ,
  `birth_date` DATE NOT NULL,
  `leerling_naam` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`leerling_id`)
);

CREATE TABLE `leraren` (
  `leraar_id` SMALLINT NOT NULL IDENTITY ,
  `leraar_naam` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`leraar_id`)
);

CREATE TABLE `vakken` (
  `vak_id` SMALLINT NOT NULL IDENTITY,
  `vak_naam` VARCHAR(45) NOT NULL,
  `vak_onderwerp` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`vak_id`)
);

CREATE TABLE `leerling_vakken` (
  `leerling_id` SMALLINT NOT NULL,
  `vak_id` INT NOT NULL,
);

CREATE TABLE `leraar_vak` (
  `leraar_id` SMALLINT NOT NULL,
  `vak_id` INT NOT NULL,
);

CREATE TABLE `klassen` (
  `klassen_id` SMALLINT NOT NULL,
  `klassen_naam` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`klassen_id`)
);

CREATE TABLE `leerling_klas` (
  `leerling_id` SMALLINT NOT NULL,
  `klassen_id` SMALLINT NOT NULL,
  CONSTRAINT
);

ALTER TABLE leraar_vak
ADD CONSTRAINT 
FOREIGN KEY (vak_id) REFERENCES vakken (vak_id);

ALTER TABLE leraar_vak
ADD CONSTRAINT 
FOREIGN KEY (leraar_id) REFERENCES leraren (leraar_id);

ALTER TABLE leerling_vak
ADD CONSTRAINT 
FOREIGN KEY (leerling_id) REFERENCES leerling (leerling_id);

ALTER TABLE leerling_vak
ADD CONSTRAINT 
FOREIGN KEY (vak_id) REFERENCES vakken (vak_id);

ALTER TABLE leerling_klas
ADD CONSTRAINT 
FOREIGN KEY (leerling_id) REFERENCES vakken (leerling_id);

ALTER TABLE leerling_klas
ADD CONSTRAINT 
FOREIGN KEY (klassen_id) REFERENCES vakken (klassen_id);

INSERT INTO leraren (leraar_naam) VALUES ("Jan Klasen");
INSERT INTO leraren (leraar_naam) VALUES ("Jan Klasen");
INSERT INTO leraren (leraar_naam) VALUES ("Jan Klasen");
INSERT INTO vakken (vak_naam, vak_onderwerp) VALUES ("scheikunde", "scheikunde");
INSERT INTO vakken (vak_naam, vak_onderwerp) VALUES ("biologie", "biologie");
INSERT INTO vakken (vak_naam, vak_onderwerp) VALUES ("natuurkunde", "natuurkunde");
INSERT INTO leerling (birth_date, leerling_naam) VALUES ("2000-01-02", "Jan Klasen");
INSERT INTO leerling (birth_date, leerling_naam) VALUES ("2000-01-02", "Jan Klasen");
INSERT INTO leerling (birth_date, leerling_naam) VALUES ("2000-01-02", "Jan Klasen");
INSERT INTO klassen (klassen_id, klassen_naam) VALUES (1, "2MA");
INSERT INTO klassen (klassen_id, klassen_naam) VALUES (2, "3MA");
INSERT INTO klassen (klassen_id, klassen_naam) VALUES (3, "4MA");
