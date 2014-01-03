SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `AffableBean` ;
CREATE SCHEMA IF NOT EXISTS `AffableBean` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `AffableBean` ;

-- -----------------------------------------------------
-- Table `AffableBean`.`category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AffableBean`.`category` ;

CREATE TABLE IF NOT EXISTS `AffableBean`.`category` (
  `id` TINYINT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = 'group similar  products in to categories';


-- -----------------------------------------------------
-- Table `AffableBean`.`product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AffableBean`.`product` ;

CREATE TABLE IF NOT EXISTS `AffableBean`.`product` (
  `name` VARCHAR(45) NOT NULL,
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `price` DECIMAL(5,2) NOT NULL,
  `description` TINYTEXT NULL,
  `last_update` TIMESTAMP NULL DEFAULT 'CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP',
  `category_id` TINYINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_product_category_idx` (`category_id` ASC))
ENGINE = InnoDB
COMMENT = 'maintains customer details';


-- -----------------------------------------------------
-- Table `AffableBean`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AffableBean`.`customer` ;

CREATE TABLE IF NOT EXISTS `AffableBean`.`customer` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `city_region` VARCHAR(2) NOT NULL,
  `cc_number` VARCHAR(19) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = 'keep information about a product';


-- -----------------------------------------------------
-- Table `AffableBean`.`customer_order`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AffableBean`.`customer_order` ;

CREATE TABLE IF NOT EXISTS `AffableBean`.`customer_order` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `amount` DECIMAL(6,2) NOT NULL,
  `date_created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `confirmation_number` INT UNSIGNED NOT NULL,
  `customer_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_customer_order_customer1_idx` (`customer_id` ASC),
  CONSTRAINT `fk_customer_order_customer1`
    FOREIGN KEY (`customer_id`)
    REFERENCES `AffableBean`.`customer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AffableBean`.`ordered_product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AffableBean`.`ordered_product` ;

CREATE TABLE IF NOT EXISTS `AffableBean`.`ordered_product` (
  `customer_order_id` INT UNSIGNED NOT NULL,
  `product_id` INT UNSIGNED NOT NULL,
  `quantity` TINYINT UNSIGNED NOT NULL,
  PRIMARY KEY (`customer_order_id`, `product_id`),
  INDEX `fk_customer_order_has_product_product1_idx` (`product_id` ASC),
  INDEX `fk_customer_order_has_product_customer_order1_idx` (`customer_order_id` ASC),
  CONSTRAINT `fk_ordered_product_customer_order`
    FOREIGN KEY (`customer_order_id`)
    REFERENCES `AffableBean`.`customer_order` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ordered_product_product`
    FOREIGN KEY (`product_id`)
    REFERENCES `AffableBean`.`product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
