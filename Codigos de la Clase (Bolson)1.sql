/*Crear una base de datos*/
bolsonCREATE DATABASE if NOT EXISTS `bolson`;
USE `bolson`;


CREATE TABLE if NOT EXISTS `color`(
`codigo_color` INT(11) NOT NULL,
 `descripcion` VARCHAR(40) DEFAULT NULL,
 PRIMARY KEY  (`codigo_color`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla que guarda los colores';


CREATE TABLE if NOT EXISTS `marca`(
`codigo_marca` INT(11) NOT NULL,
 `descripcion` VARCHAR(40) DEFAULT NULL,
  `precio` DOUBLE DEFAULT NULL,
 `etiqueta` VARCHAR(40) DEFAULT NULL,
 PRIMARY KEY  (`codigo_marca`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla que guarda las marcas';

CREATE TABLE if NOT EXISTS `bolsones`(
`codigo_bolsones` INT(11) NOT NULL,
 `descripcion` VARCHAR(40) DEFAULT NULL,
 `codigo_color` INT(11) NOT NULL,
 `codigo_marca` INT(11) NOT NULL, 
 PRIMARY KEY  (`codigo_bolsones`),
 CONSTRAINT `fk_color` FOREIGN KEY (`codigo_color`) REFERENCES `color` (`codigo_color`),
 CONSTRAINT `fk_marca` FOREIGN KEY (`codigo_marca`) REFERENCES `marca` (`codigo_marca`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla que guarda los bolsones con su color y marca';

INSERT INTO `color` (`codigo_color`, `descripcion`) VALUES
(1, 'AMARILLO'),
(2, 'ROJO'),
(6, 'VERDE');

INSERT INTO `marca` (`codigo_marca`, `descripcion`, `precio`, `etiqueta`) VALUES
(10, 'ADIDAS', 670, 'azul'),
(2, 'NIKE', 850, 'rojo'),
(6, 'REEBOK', 900, 'verde');

SELECT * FROM `color`