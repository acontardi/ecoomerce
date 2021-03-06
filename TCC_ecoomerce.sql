-- MySQL Script generated by MySQL Workbench
-- Mon Nov  2 10:51:46 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema db_ecommerce
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_ecommerce
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_ecommerce` DEFAULT CHARACTER SET utf8 ;
USE `db_ecommerce` ;

-- -----------------------------------------------------
-- Table `tb_persons` -- Tabela Pessoas
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tb_persons` ;

CREATE TABLE IF NOT EXISTS `tb_persons` (
  `idperson` INT(11) NOT NULL AUTO_INCREMENT, --IDpessoa
  `desperson` VARCHAR(64) NOT NULL, -- Despessoa
  `desemail` VARCHAR(128) NULL DEFAULT NULL, --desemail
  `nrphone` BIGINT(20) NULL DEFAULT NULL,  -- NTelefone
  `dtregister` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, -- DtRegistro
  PRIMARY KEY (`idperson`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tb_addresses` -- Tabela Endereço
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tb_addresses` ;

CREATE TABLE IF NOT EXISTS `tb_addresses` (
  `idaddress` INT(11) NOT NULL AUTO_INCREMENT, -- IDEndereço
  `idperson` INT(11) NOT NULL, -- IDPessoa
  `desaddress` VARCHAR(128) NOT NULL, --desEndereço
  `descomplement` VARCHAR(32) NULL DEFAULT NULL, -- descomplemento
  `descity` VARCHAR(32) NOT NULL, -- Cidade
  `desstate` VARCHAR(32) NOT NULL, -- Estado
  `descountry` VARCHAR(32) NOT NULL, -- Pais
  `nrzipcode` INT(11) NOT NULL,  -- CEP
  `dtregister` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, -- DtRegistro
  PRIMARY KEY (`idaddress`),
  CONSTRAINT `fk_addresses_persons`
    FOREIGN KEY (`idperson`)
    REFERENCES `tb_persons` (`idperson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_addresses_persons_idx` ON `tb_addresses` (`idperson` ASC);


-- -----------------------------------------------------
-- Table `tb_users` -- Tabela usuarios
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tb_users` ;

CREATE TABLE IF NOT EXISTS `tb_users` (
  `iduser` INT(11) NOT NULL AUTO_INCREMENT, -- idusuario
  `idperson` INT(11) NOT NULL, -- idpessoas
  `deslogin` VARCHAR(64) NOT NULL, -- deslogin
  `despassword` VARCHAR(256) NOT NULL, -- dessenha
  `inadmin` TINYINT(4) NOT NULL DEFAULT '0', -- campo de qualquer valor
  `dtregister` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, -- DtRegistro
  PRIMARY KEY (`iduser`),
  CONSTRAINT `fk_users_persons`
    FOREIGN KEY (`idperson`)
    REFERENCES `tb_persons` (`idperson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `FK_users_persons_idx` ON `tb_users` (`idperson` ASC);


-- -----------------------------------------------------
-- Table `tb_carts` -- Tabela Carrinho
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tb_carts` ;

CREATE TABLE IF NOT EXISTS `tb_carts` (
  `idcart` INT(11) NOT NULL,
  `dessessionid` VARCHAR(64) NOT NULL, --  desidentificação-sessão
  `iduser` INT(11) NULL DEFAULT NULL, -- idusuario
  `idaddress` INT(11) NULL DEFAULT NULL, -- idendereco
  `vlfreight` DECIMAL(10,2) NULL DEFAULT NULL, -- valor-frete
  `dtregister` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, -- DtRegistro
  PRIMARY KEY (`idcart`),
  CONSTRAINT `fk_carts_addresses`
    FOREIGN KEY (`idaddress`)
    REFERENCES `tb_addresses` (`idaddress`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_carts_users`
    FOREIGN KEY (`iduser`)
    REFERENCES `tb_users` (`iduser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `FK_carts_users_idx` ON `tb_carts` (`iduser` ASC);

CREATE INDEX `fk_carts_addresses_idx` ON `tb_carts` (`idaddress` ASC);


-- -----------------------------------------------------
-- Table `tb_products` -- Tabelas Produtos
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tb_products` ;

CREATE TABLE IF NOT EXISTS `tb_products` (
  `idproduct` INT(11) NOT NULL,
  `desproduct` VARCHAR(64) NOT NULL,
  `vlprice` DECIMAL(10,2) NOT NULL,
  `vlwidth` DECIMAL(10,2) NOT NULL,
  `vlheight` DECIMAL(10,2) NOT NULL,
  `vllength` DECIMAL(10,2) NOT NULL,
  `vlweight` DECIMAL(10,2) NOT NULL,
  `desurl` VARCHAR(128) NOT NULL,
  `dtregister` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idproduct`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tb_cartsproducts` -- Tabela Carrinho-Produtos
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tb_cartsproducts` ;

CREATE TABLE IF NOT EXISTS `tb_cartsproducts` (
  `idcartproduct` INT(11) NOT NULL AUTO_INCREMENT,
  `idcart` INT(11) NOT NULL,
  `idproduct` INT(11) NOT NULL,
  `dtremoved` DATETIME NOT NULL,
  `dtregister` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcartproduct`),
  CONSTRAINT `fk_cartsproducts_carts`
    FOREIGN KEY (`idcart`)
    REFERENCES `tb_carts` (`idcart`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cartsproducts_products`
    FOREIGN KEY (`idproduct`)
    REFERENCES `tb_products` (`idproduct`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `FK_cartsproducts_carts_idx` ON `tb_cartsproducts` (`idcart` ASC);

CREATE INDEX `FK_cartsproducts_products_idx` ON `tb_cartsproducts` (`idproduct` ASC);


-- -----------------------------------------------------
-- Table `tb_categories` -- Tabela Categoria
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tb_categories` ;

CREATE TABLE IF NOT EXISTS `tb_categories` (
  `idcategory` INT(11) NOT NULL AUTO_INCREMENT,
  `descategory` VARCHAR(32) NOT NULL,
  `dtregister` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcategory`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tb_ordersstatus` -- Tabela Status da ordem
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tb_ordersstatus` ;

CREATE TABLE IF NOT EXISTS `tb_ordersstatus` (
  `idstatus` INT(11) NOT NULL AUTO_INCREMENT,
  `desstatus` VARCHAR(32) NOT NULL,
  `dtregister` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idstatus`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `tb_orders` -- Tabela Ordem
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tb_orders` ;

CREATE TABLE IF NOT EXISTS `tb_orders` (
  `idorder` INT(11) NOT NULL AUTO_INCREMENT,
  `idcart` INT(11) NOT NULL,
  `iduser` INT(11) NOT NULL,
  `idstatus` INT(11) NOT NULL,
  `vltotal` DECIMAL(10,2) NOT NULL,
  `dtregister` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idorder`),
  CONSTRAINT `fk_orders_carts`
    FOREIGN KEY (`idcart`)
    REFERENCES `tb_carts` (`idcart`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_ordersstatus`
    FOREIGN KEY (`idstatus`)
    REFERENCES `tb_ordersstatus` (`idstatus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_users`
    FOREIGN KEY (`iduser`)
    REFERENCES `tb_users` (`iduser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `FK_orders_carts_idx` ON `tb_orders` (`idcart` ASC);

CREATE INDEX `FK_orders_users_idx` ON `tb_orders` (`iduser` ASC);

CREATE INDEX `fk_orders_ordersstatus_idx` ON `tb_orders` (`idstatus` ASC);


-- -----------------------------------------------------
-- Table `tb_productscategories` -- Tabela Categria-Produto
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tb_productscategories` ;

CREATE TABLE IF NOT EXISTS `tb_productscategories` (
  `idcategory` INT(11) NOT NULL,
  `idproduct` INT(11) NOT NULL,
  PRIMARY KEY (`idcategory`, `idproduct`),
  CONSTRAINT `fk_productscategories_categories`
    FOREIGN KEY (`idcategory`)
    REFERENCES `tb_categories` (`idcategory`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_productscategories_products`
    FOREIGN KEY (`idproduct`)
    REFERENCES `tb_products` (`idproduct`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_productscategories_products_idx` ON `tb_productscategories` (`idproduct` ASC);


-- -----------------------------------------------------
-- Table `tb_userslogs` -- Tabela Usuario-Logs
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tb_userslogs` ;

CREATE TABLE IF NOT EXISTS `tb_userslogs` (
  `idlog` INT(11) NOT NULL AUTO_INCREMENT,
  `iduser` INT(11) NOT NULL,
  `deslog` VARCHAR(128) NOT NULL,
  `desip` VARCHAR(45) NOT NULL,
  `desuseragent` VARCHAR(128) NOT NULL,
  `dessessionid` VARCHAR(64) NOT NULL,
  `desurl` VARCHAR(128) NOT NULL,
  `dtregister` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idlog`),
  CONSTRAINT `fk_userslogs_users`
    FOREIGN KEY (`iduser`)
    REFERENCES `tb_users` (`iduser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_userslogs_users_idx` ON `tb_userslogs` (`iduser` ASC);


-- -----------------------------------------------------
-- Table `tb_userspasswordsrecoveries` -- Tabela Recuperar-Senha
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tb_userspasswordsrecoveries` ;

CREATE TABLE IF NOT EXISTS `tb_userspasswordsrecoveries` (
  `idrecovery` INT(11) NOT NULL AUTO_INCREMENT,
  `iduser` INT(11) NOT NULL,
  `desip` VARCHAR(45) NOT NULL,
  `dtrecovery` DATETIME NULL DEFAULT NULL,
  `dtregister` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idrecovery`),
  CONSTRAINT `fk_userspasswordsrecoveries_users`
    FOREIGN KEY (`iduser`)
    REFERENCES `tb_users` (`iduser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_userspasswordsrecoveries_users_idx` ON `tb_userspasswordsrecoveries` (`iduser` ASC);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;