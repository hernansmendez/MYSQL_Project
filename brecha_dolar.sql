DROP SCHEMA IF EXISTS `brecha_dolar`;
CREATE SCHEMA IF NOT EXISTS `brecha_dolar`;
USE `brecha_dolar`;

CREATE TABLE IF NOT EXISTS `d_oficial` (
    `fechaHora` TIMESTAMP NOT NULL COMMENT 'FECHA Y HORA',
    `id_tipo` INT NOT NULL DEFAULT 1 COMMENT 'ID FIJO',
    `compra` DECIMAL(10,2) NOT NULL COMMENT 'VALOR COMPRA',
    `venta` DECIMAL(10,2) NOT NULL COMMENT 'VALOR VENTA',
    PRIMARY KEY (`fechaHora`, `id_tipo`)
);

CREATE TABLE IF NOT EXISTS `d_ahorro` (
    `fechaHora` TIMESTAMP NOT NULL COMMENT 'FECHA Y HORA',
    `id_tipo` INT NOT NULL DEFAULT 2 COMMENT 'ID FIJO',
    `compra` DECIMAL(10,2) NULL COMMENT 'VALOR COMPRA',
    `venta` DECIMAL(10,2) NOT NULL COMMENT 'VALOR VENTA',
    PRIMARY KEY (`fechaHora`, `id_tipo`)
);

CREATE TABLE IF NOT EXISTS `d_mep` (
    `fechaHora` TIMESTAMP NOT NULL COMMENT 'FECHA Y HORA',
    `id_tipo` INT NOT NULL DEFAULT 3 COMMENT 'ID FIJO',
    `compra` DECIMAL(10,2) NOT NULL COMMENT 'COTIZACION',
    `venta` DECIMAL(10,2) NOT NULL COMMENT 'COTIZACION',
    PRIMARY KEY (`fechaHora`, `id_tipo`)
);

CREATE TABLE IF NOT EXISTS `d_crypto` (
    `fechaHora` TIMESTAMP NOT NULL COMMENT 'FECHA Y HORA',
    `id_tipo` INT NOT NULL DEFAULT 4 COMMENT 'ID FIJO',
    `compra` DECIMAL(10,2) NOT NULL COMMENT 'VALOR COMPRA',
    `venta` DECIMAL(10,2) NOT NULL COMMENT 'VALOR VENTA',
    PRIMARY KEY (`fechaHora`, `id_tipo`)
);

CREATE TABLE IF NOT EXISTS `d_blue` (
    `fechaHora` TIMESTAMP NOT NULL COMMENT 'FECHA Y HORA',
    `id_tipo` INT NOT NULL DEFAULT 5 COMMENT 'ID FIJO',
    `compra` DECIMAL(10,2) NOT NULL COMMENT 'VALOR COMPRA',
    `venta` DECIMAL(10,2) NOT NULL COMMENT 'VALOR VENTA',
    PRIMARY KEY (`fechaHora`, `id_tipo`)
);

CREATE TABLE IF NOT EXISTS `cotizaciones` (
    `fechaHora` TIMESTAMP NOT NULL COMMENT 'FECHA Y HORA',
    `id_tipo` INT NOT NULL COMMENT 'PRIMARY KEY',
    `compra` DECIMAL(10,2) NOT NULL COMMENT 'COTIZACION',
    `venta` DECIMAL(10,2) NOT NULL COMMENT 'COTIZACION',
    FOREIGN KEY (`fechaHora`, `id_tipo`) REFERENCES `d_oficial` (`fechaHora`, `id_tipo`),
    FOREIGN KEY (`fechaHora`, `id_tipo`) REFERENCES `d_ahorro` (`fechaHora`, `id_tipo`),
    FOREIGN KEY (`fechaHora`, `id_tipo`) REFERENCES `d_mep` (`fechaHora`, `id_tipo`),
    FOREIGN KEY (`fechaHora`, `id_tipo`) REFERENCES `d_crypto` (`fechaHora`, `id_tipo`),
    FOREIGN KEY (`fechaHora`, `id_tipo`) REFERENCES `d_blue` (`fechaHora`, `id_tipo`)
);

CREATE TABLE IF NOT EXISTS `brecha_ah_b` (
    `fechaHora` TIMESTAMP NOT NULL COMMENT 'FECHA Y HORA',
    `id_tipo` INT NOT NULL COMMENT 'PRIMARY KEY',
    `brecha_ah_b_porcentaje` DECIMAL(5,2) COMMENT 'Diferencia porcentual Ahorro-Blue',
    `brecha_ah_b_pesos` DECIMAL(10,2) COMMENT 'Diferencia en pesos Ahorro-Blue',
    FOREIGN KEY (`fechaHora`, `id_tipo`) REFERENCES `cotizaciones` (`fechaHora`, `id_tipo`)
);

-- INSERCIÓN DE DATOS

-- Inserción de datos en d_oficial
INSERT INTO `d_oficial` (`fechaHora`,`id_tipo`, `compra`, `venta`)
VALUES
    ('2023-11-09 15:20', 1, 348.00, 368.00),
    ('2023-11-09 15:25', 1, 348.00, 368.00),
    ('2023-11-09 15:30', 1, 348.00, 368.00),
    ('2023-11-09 15:35', 1, 348.00, 368.00),
    ('2023-11-09 15:40', 1, 348.00, 368.00),
    ('2023-11-09 15:45', 1, 348.00, 368.00),
    ('2023-11-09 15:50', 1, 348.00, 368.00),
    ('2023-11-09 15:55', 1, 348.00, 368.00),
    ('2023-11-09 16:00', 1, 348.00, 368.00),
    ('2023-11-09 16:05', 1, 348.00, 368.00),
    ('2023-11-09 16:10', 1, 348.00, 368.00),
    ('2023-11-09 16:15', 1, 348.00, 368.00),
    ('2023-11-09 16:20', 1, 348.00, 368.00),
    ('2023-11-09 16:25', 1, 348.00, 368.00),
    ('2023-11-09 16:30', 1, 348.00, 368.00),
    ('2023-11-09 16:35', 1, 348.00, 368.00),
    ('2023-11-09 16:40', 1, 348.00, 368.00),
    ('2023-11-09 16:45', 1, 348.00, 368.00),
    ('2023-11-09 16:50', 1, 348.00, 368.00),
    ('2023-11-09 18:50', 1, 348.00, 368.00),
    ('2023-11-09 19:55', 1, 348.00, 368.00);

-- Inserción de datos en d_ahorro
INSERT INTO `d_ahorro` (`fechaHora`, `id_tipo`, `compra`, `venta`)
VALUES
    ('2023-11-09 15:20', 2, 716.00, 736.00),
    ('2023-11-09 15:25', 2, 716.00, 736.00),
    ('2023-11-09 15:30', 2, 716.00, 736.00),
    ('2023-11-09 15:35', 2, 716.00, 736.00),
    ('2023-11-09 15:40', 2, 716.00, 736.00),
    ('2023-11-09 15:45', 2, 716.00, 736.00),
    ('2023-11-09 15:50', 2, 716.00, 736.00),
    ('2023-11-09 15:55', 2, 716.00, 736.00),
    ('2023-11-09 16:00', 2, 716.00, 736.00),
    ('2023-11-09 16:05', 2, 716.00, 736.00),
    ('2023-11-09 16:10', 2, 716.00, 736.00),
    ('2023-11-09 16:15', 2, 716.00, 736.00),
    ('2023-11-09 16:20', 2, 716.00, 736.00),
    ('2023-11-09 16:25', 2, 716.00, 736.00),
    ('2023-11-09 16:30', 2, 716.00, 736.00),
    ('2023-11-09 16:35', 2, 716.00, 736.00),
    ('2023-11-09 16:40', 2, 716.00, 736.00),
    ('2023-11-09 16:45', 2, 716.00, 736.00),
    ('2023-11-09 16:50', 2, 716.00, 736.00),
    ('2023-11-09 18:50', 2, 716.00, 736.00),
    ('2023-11-09 19:55', 2, 716.00, 736.00);

-- Inserción de datos en d_blue
INSERT INTO `d_blue` (`fechaHora`, `id_tipo`, `compra`, `venta`)
VALUES
    ('2023-11-09 15:20', 5, 900.00, 950.00),
    ('2023-11-09 15:25', 5, 900.00, 950.00),
    ('2023-11-09 15:30', 5, 900.00, 950.00),
    ('2023-11-09 15:35', 5, 900.00, 950.00),
    ('2023-11-09 15:40', 5, 900.00, 950.00),
    ('2023-11-09 15:45', 5, 900.00, 950.00),
    ('2023-11-09 15:50', 5, 900.00, 950.00),
    ('2023-11-09 15:55', 5, 900.00, 950.00),
    ('2023-11-09 16:00', 5, 900.00, 950.00),
    ('2023-11-09 16:05', 5, 900.00, 950.00),
    ('2023-11-09 16:10', 5, 900.00, 950.00),
    ('2023-11-09 16:15', 5, 900.00, 950.00),
    ('2023-11-09 16:20', 5, 900.00, 950.00),
    ('2023-11-09 16:25', 5, 900.00, 950.00),
    ('2023-11-09 16:30', 5, 900.00, 950.00),
    ('2023-11-09 16:35', 5, 900.00, 950.00),
    ('2023-11-09 16:40', 5, 900.00, 950.00),
    ('2023-11-09 16:45', 5, 900.00, 950.00),
    ('2023-11-09 16:50', 5, 900.00, 950.00),
    ('2023-11-09 18:50', 5, 900.00, 950.00),
    ('2023-11-09 19:55', 5, 900.00, 950.00);

-- Inserción de datos en d_crypto
INSERT INTO `d_crypto` (`fechaHora`, `id_tipo`, `compra`, `venta`)
VALUES
    ('2023-11-09 15:20', 4, 855.00, 890.00),
    ('2023-11-09 15:25', 4, 855.00, 890.00),
    ('2023-11-09 15:30', 4, 855.00, 890.00),
    ('2023-11-09 15:35', 4, 855.00, 890.00),
    ('2023-11-09 15:40', 4, 855.00, 890.00),
    ('2023-11-09 15:45', 4, 855.00, 890.00),
    ('2023-11-09 15:50', 4, 855.00, 890.00),
    ('2023-11-09 15:55', 4, 855.00, 890.00),
    ('2023-11-09 16:00', 4, 855.00, 890.00),
    ('2023-11-09 16:05', 4, 850.00, 885.00),
    ('2023-11-09 16:10', 4, 850.00, 885.00),
    ('2023-11-09 16:15', 4, 850.00, 885.00),
    ('2023-11-09 16:20', 4, 850.00, 885.00),
    ('2023-11-09 16:25', 4, 850.00, 885.00),
    ('2023-11-09 16:30', 4, 850.00, 885.00),
    ('2023-11-09 16:35', 4, 850.00, 885.00),
    ('2023-11-09 16:40', 4, 850.00, 885.00),
    ('2023-11-09 16:45', 4, 850.00, 885.00),
    ('2023-11-09 16:50', 4, 850.00, 885.00),
    ('2023-11-09 18:50', 4, 855.00, 895.00),
    ('2023-11-09 19:55', 4, 865.00, 903.00);

INSERT INTO `d_mep` (`fechaHora`, `id_tipo`, `compra`, `venta`)
VALUES
    ('2023-11-09 15:20', 3, 866.16, 868.20),
    ('2023-11-09 15:25', 3, 866.16, 868.20),
    ('2023-11-09 15:30', 3, 866.16, 868.20),
    ('2023-11-09 15:35', 3, 866.16, 868.20),
    ('2023-11-09 15:40', 3, 866.16, 868.20),
    ('2023-11-09 15:45', 3, 866.16, 868.20),
    ('2023-11-09 15:50', 3, 866.16, 868.20),
    ('2023-11-09 15:55', 3, 866.16, 868.20),
    ('2023-11-09 16:00', 3, 866.16, 868.20),
    ('2023-11-09 16:05', 3, 866.16, 868.20),
    ('2023-11-09 16:10', 3, 866.16, 868.20),
    ('2023-11-09 16:15', 3, 866.16, 868.20),
    ('2023-11-09 16:20', 3, 866.16, 868.20),
    ('2023-11-09 16:25', 3, 866.16, 868.20),
    ('2023-11-09 16:30', 3, 866.16, 868.20),
    ('2023-11-09 16:35', 3, 866.16, 868.20),
    ('2023-11-09 16:40', 3, 866.16, 868.20),
    ('2023-11-09 16:45', 3, 866.16, 868.20),
    ('2023-11-09 16:50', 3, 866.16, 868.20),
    ('2023-11-09 18:50', 3, 866.16, 868.20),
    ('2023-11-09 19:55', 3, 866.16, 868.20);
    
    



-- Inserción de datos en la tabla cotizaciones
SET foreign_key_checks = 0;
INSERT INTO `cotizaciones` (`fechaHora`, `id_tipo`, `compra`, `venta`)
SELECT `fechaHora`, `id_tipo`, `compra`, `venta`
FROM (
    SELECT `fechaHora`, `id_tipo`, `compra`, `venta` FROM `d_oficial`
    UNION
    SELECT `fechaHora`, `id_tipo`, `compra`, `venta` FROM `d_ahorro`
    UNION
    SELECT `fechaHora`, `id_tipo`, `compra`, `venta` FROM `d_mep`
    UNION
    SELECT `fechaHora`, `id_tipo`, `compra`, `venta` FROM `d_crypto`
    UNION
    SELECT `fechaHora`, `id_tipo`, `compra`, `venta` FROM `d_blue`
) AS subquery
WHERE NOT EXISTS (
    SELECT 1
    FROM `cotizaciones`
    WHERE `cotizaciones`.`fechaHora` = subquery.`fechaHora` AND `cotizaciones`.`id_tipo` = subquery.`id_tipo`
);
SET foreign_key_checks = 1;


-- select * from cotizaciones;

-- CREACIÓN DE VISTAS

-- Vista para dólar oficial
CREATE VIEW vw_d_oficial_with_brecha AS
SELECT
	DATE_FORMAT(o.`fechaHora`, '%Y-%m-%d %H:%i') AS `fechaHora`,
    o.`id_tipo`,
    o.`compra` AS `max_compra_oficial`,
    o.`venta` AS `max_venta_oficial`,
    b.`brecha_ah_b_porcentaje`,
    b.`brecha_ah_b_pesos`
FROM
    `d_oficial` o
JOIN
    (SELECT fechaHora, MAX(venta) AS max_venta
     FROM d_oficial
     GROUP BY fechaHora) max_o
ON
    o.`fechaHora` = max_o.`fechaHora` AND o.`venta` = max_o.`max_venta`
JOIN
    `brecha_ah_b` b
ON
    o.`fechaHora` = b.`fechaHora` AND o.`id_tipo` = b.`id_tipo`
WHERE
    o.`fechaHora` = (SELECT MAX(fechaHora) FROM d_oficial);

-- Vista para dólar blue
CREATE VIEW vw_d_blue_with_brecha AS
SELECT
    DATE_FORMAT(b.`fechaHora`, '%Y-%m-%d %H:%i') AS `fechaHora`,
    b.`id_tipo`,
    b.`compra` AS `max_compra_blue`,
    b.`venta` AS `max_venta_blue`,
    br.`brecha_ah_b_porcentaje`,
    br.`brecha_ah_b_pesos`
FROM
    `d_blue` b
JOIN
    (SELECT fechaHora, MAX(venta) AS max_venta
     FROM d_blue
     GROUP BY fechaHora) max_b
ON
    b.`fechaHora` = max_b.`fechaHora` AND b.`venta` = max_b.`max_venta`
JOIN
    `brecha_ah_b` br
ON
    b.`fechaHora` = br.`fechaHora` AND b.`id_tipo` = br.`id_tipo`
WHERE
    b.`fechaHora` = (SELECT MAX(fechaHora) FROM d_blue);

-- Vista para dólar ahorro
CREATE VIEW vw_d_ahorro_with_brecha AS
SELECT
    DATE_FORMAT(a.`fechaHora`, '%Y-%m-%d %H:%i') AS `fechaHora`,
    a.`id_tipo`,
    a.`compra` AS `max_compra_ahorro`,
    a.`venta` AS `max_venta_ahorro`,
    ab.`brecha_ah_b_porcentaje`,
    ab.`brecha_ah_b_pesos`
FROM
    `d_ahorro` a
JOIN
    (SELECT fechaHora, MAX(venta) AS max_venta
     FROM d_ahorro
     GROUP BY fechaHora) max_a
ON
    a.`fechaHora` = max_a.`fechaHora` AND a.`venta` = max_a.`max_venta`
JOIN
    `brecha_ah_b` ab
ON
    a.`fechaHora` = ab.`fechaHora` AND a.`id_tipo` = ab.`id_tipo`
WHERE
    a.`fechaHora` = (SELECT MAX(fechaHora) FROM d_ahorro);

-- Vista para dólar MEP
CREATE VIEW vw_d_mep_with_brecha AS
SELECT
    DATE_FORMAT(m.`fechaHora`, '%Y-%m-%d %H:%i') AS `fechaHora`,
    m.`id_tipo`,
    m.`compra` AS `max_compra_mep`,
    m.`venta` AS `max_venta_mep`,
    bm.`brecha_ah_b_porcentaje`,
    bm.`brecha_ah_b_pesos`
FROM
    `d_mep` m
JOIN
    (SELECT fechaHora, MAX(venta) AS max_venta
     FROM d_mep
     GROUP BY fechaHora) max_m
ON
    m.`fechaHora` = max_m.`fechaHora` AND m.`venta` = max_m.`max_venta`
JOIN
    `brecha_ah_b` bm
ON
    m.`fechaHora` = bm.`fechaHora` AND m.`id_tipo` = bm.`id_tipo`
WHERE
    m.`fechaHora` = (SELECT MAX(fechaHora) FROM d_mep);

-- Vista para dólar Crypto
CREATE VIEW vw_d_crypto_with_brecha AS
SELECT
    DATE_FORMAT(c.`fechaHora`, '%Y-%m-%d %H:%i') AS `fechaHora`,
    c.`id_tipo`,
    c.`compra` AS `max_compra_crypto`,
    c.`venta` AS `max_venta_crypto`,
    bc.`brecha_ah_b_porcentaje`,
    bc.`brecha_ah_b_pesos`
FROM
    `d_crypto` c
JOIN
    (SELECT fechaHora, MAX(venta) AS max_venta
     FROM d_crypto
     GROUP BY fechaHora) max_c
ON
    c.`fechaHora` = max_c.`fechaHora` AND c.`venta` = max_c.`max_venta`
JOIN
    `brecha_ah_b` bc
ON
    c.`fechaHora` = bc.`fechaHora` AND c.`id_tipo` = bc.`id_tipo`
WHERE
    c.`fechaHora` = (SELECT MAX(fechaHora) FROM d_crypto);

select * from vw_d_crypto_with_brecha;


-- FUNCIONES

SET GLOBAL log_bin_trust_function_creators = 1;

DELIMITER //

CREATE FUNCTION cot_fecha_hora(p_id_tipo INT, p_fechaHora TIMESTAMP)
RETURNS DECIMAL(10,2)
BEGIN
    DECLARE v_result DECIMAL(10,2);

    SELECT compra INTO v_result
    FROM cotizaciones
    WHERE id_tipo = p_id_tipo AND DATE_FORMAT(fechaHora, '%Y-%m-%d %H:%i') = DATE_FORMAT(p_fechaHora, '%Y-%m-%d %H:%i');

    RETURN v_result;
END //

DELIMITER ;

-- Ejemplo de uso de la función
SET @id_tipo = 5;
SET @fechaHora = '2023-11-09 16:20'; -- Ajusta la fecha y hora según tus datos

SELECT cot_fecha_hora(@id_tipo, @fechaHora) AS resultado;



DELIMITER //

CREATE FUNCTION brecha_fecha(p_fechaHora DATETIME)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE v_brecha_pesos DECIMAL(10,2);

    SELECT brecha_ah_b_pesos INTO v_brecha_pesos
    FROM brecha_ah_b
    WHERE fechaHora = p_fechaHora
    LIMIT 1;

    RETURN v_brecha_pesos;
END //

DELIMITER ;
SET @fechaHoraBrecha = '2023-11-09 16:20'; 
-- SELECT brecha_fecha(@fechaHoraBrecha) AS resultado;


-- STORE PROCEDURES

-- SP PARA INSERCIÓN DE DATOS EN TABLA brecha_ah_b
DELIMITER //

CREATE PROCEDURE InsertarDatosBrechaAhB()
BEGIN
    -- Desactivar restricciones de clave externa
    SET foreign_key_checks = 0;

    -- Inserción de datos en la tabla brecha_ah_b si la combinación fechaHora+idTipo no existe
    INSERT INTO `brecha_ah_b` (`fechaHora`, `id_tipo`, `brecha_ah_b_porcentaje`, `brecha_ah_b_pesos`)
    SELECT
        DATE_FORMAT(c.`fechaHora`, '%Y-%m-%d %H:%i') AS `fechaHora`,
        c.`id_tipo`,
        ((b.`venta` - a.`venta`) / a.`venta`) * 100 AS `brecha_ah_b_porcentaje`,
        (b.`venta` - a.`venta`) * 200 AS `brecha_ah_b_pesos`
    FROM
        `cotizaciones` c
    JOIN
        `cotizaciones` a ON c.`fechaHora` = a.`fechaHora` AND a.`id_tipo` = 2 -- Ahorro
    JOIN
        `cotizaciones` b ON c.`fechaHora` = b.`fechaHora` AND b.`id_tipo` = 5 -- Blue
    WHERE NOT EXISTS (
        SELECT 1
        FROM `brecha_ah_b`
        WHERE `brecha_ah_b`.`fechaHora` = DATE_FORMAT(c.`fechaHora`, '%Y-%m-%d %H:%i') AND `brecha_ah_b`.`id_tipo` = c.`id_tipo`
    );

    -- Volver a activar restricciones de clave externa
    SET foreign_key_checks = 1;
END //

DELIMITER ;


CALL InsertarDatosBrechaAhB();
SELECT * FROM brecha_ah_b;


-- SP PARA OBTENER MÁXIMA COTIZACIÓN DEL DÍA
DELIMITER $$

CREATE PROCEDURE ObtenerMaxCotizacionPorDia(IN p_fecha DATE, OUT p_max_venta DECIMAL(10, 2))
BEGIN
    -- Variable para la fecha del próximo día
    DECLARE next_day DATE;

    -- Calcular la fecha del próximo día
    SET next_day = DATE_ADD(p_fecha, INTERVAL 1 DAY);

    -- Obtener la máxima cotización de venta para el día especificado
    SELECT MAX(venta) INTO p_max_venta
    FROM cotizaciones
    WHERE DATE_FORMAT(fechaHora, '%Y-%m-%d %H:%i') >= p_fecha AND DATE_FORMAT(fechaHora, '%Y-%m-%d %H:%i') < next_day;

END $$

DELIMITER ;

CALL ObtenerMaxCotizacionPorDia('2023-11-09', @max_venta);
SELECT @max_venta;



-- CREACION DE TRIGGERS

-- CREACIÓN DE LA TABLA cotizaciones_log

CREATE TABLE IF NOT EXISTS `cotizaciones_log` (
    `log_id` INT AUTO_INCREMENT PRIMARY KEY,
    `usuario` VARCHAR(255) NOT NULL,
    `fecha` DATE NOT NULL,
    `hora` TIME NOT NULL,
    `id_tipo` INT NOT NULL,
    `compra` DECIMAL(10,2) NOT NULL,
    `venta` DECIMAL(10,2) NOT NULL
);


-- CREACIÓN DE LA TABLA brecha_log

CREATE TABLE IF NOT EXISTS `brecha_log` (
    `log_id` INT AUTO_INCREMENT PRIMARY KEY,
    `usuario` VARCHAR(255) NOT NULL,
    `fecha` DATE NOT NULL,
    `hora` TIME NOT NULL,
    `id_tipo` INT NOT NULL,
    `brecha_ah_b_porcentaje` DECIMAL(5,2) NOT NULL,
    `brecha_ah_b_pesos` DECIMAL(10,2) NOT NULL
);


-- TRIGGER AFTER INSERT PARA LA TABLA cotizaciones

-- Este triger agrega una fila a la tabla cotizaciones_log por cada fila insertada a la tabla cotizaciones, con el usuario, fecha y hora por separado.

DELIMITER //

CREATE TRIGGER after_insert_cotizaciones_alternative
AFTER INSERT ON cotizaciones
FOR EACH ROW
BEGIN
    -- Insertar datos en la tabla cotizaciones_log
    INSERT INTO cotizaciones_log (usuario, fecha, hora, id_tipo, compra, venta)
    VALUES (SYSTEM_USER(), DATE(NOW()), TIME(NOW()), NEW.id_tipo, NEW.compra, NEW.venta);
END //

DELIMITER ;

-- TRIGGER BEFORE INSERT PARA LA TABLA cotizaciones
-- Trigger para comrpobar que las fechas en la tabla cotizaciones se encuentren en un rango de fechas permitido.
DELIMITER //

CREATE TRIGGER before_insert_cotizaciones
BEFORE INSERT ON cotizaciones
FOR EACH ROW
BEGIN
    DECLARE min_date DATETIME;
    DECLARE max_date DATETIME;

    -- Definir el rango de fechas permitido
    SET min_date = '2023-1-1 00:00:00';
    SET max_date = '2023-12-31 00:00:00';

    -- Verificar si la fecha y hora están dentro del rango permitido
    IF NEW.fechaHora < min_date OR NEW.fechaHora >= max_date THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: La fecha y hora deben estar dentro del rango permitido.';
    END IF;
END //

DELIMITER ;


-- TRIGGER BEFORE INSERT PARA LA TABLA cotizaciones
-- Trigger para comrpobar que las fechas en la tabla cotizaciones se encuentren en un rango de fechas permitido.


DELIMITER //
CREATE TRIGGER before_insert_brecha_ah_b
BEFORE INSERT ON brecha_ah_b
FOR EACH ROW
BEGIN
    DECLARE min_date DATETIME;
    DECLARE max_date DATETIME;

    -- Definir el rango de fechas permitido
    SET min_date = '2023-01-01 00:00:00';
    SET max_date = '2023-12-31 23:59:59';

    -- Verificar si la fecha y hora están dentro del rango permitido
    IF NEW.fechaHora < min_date OR NEW.fechaHora > max_date THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: La fecha y hora deben estar dentro del rango permitido para brecha_ah_b.';
    END IF;
END //
DELIMITER ;

-- TRIGGER BEFORE INSERT PARA LA TABLA brecha_ah_b
-- Trigger para comrpobar que las fechas en la tabla brecha_ah_b se encuentren en un rango de fechas permitido.

DELIMITER //

CREATE TRIGGER after_insert_brecha_ah_b
AFTER INSERT ON brecha_ah_b
FOR EACH ROW
BEGIN
    -- Insertar datos en la tabla brecha_log
    INSERT INTO brecha_log (usuario, fecha, hora, id_tipo, brecha_ah_b_porcentaje, brecha_ah_b_pesos)
    VALUES (SYSTEM_USER(), DATE(NOW()), TIME(NOW()), NEW.id_tipo, NEW.brecha_ah_b_porcentaje, NEW.brecha_ah_b_pesos);
END //

DELIMITER ;

-- Insertamos nuevos registros en todas las tablas

-- Inserción de datos en la tabla d_oficial con fechaHora específica
INSERT INTO `d_oficial` (`fechaHora`, `id_tipo`, `compra`, `venta`)
VALUES ('2023-11-21 16:45:00', 1, 45.67, 46.78);
-- Inserción de datos en la tabla d_ahorro con fechaHora específica
INSERT INTO `d_ahorro` (`fechaHora`, `id_tipo`, `compra`, `venta`)
VALUES ('2023-11-21 16:45:00', 2, 56.78, 57.89);
-- Inserción de datos en la tabla d_mep con fechaHora específica
INSERT INTO `d_mep` (`fechaHora`, `id_tipo`, `compra`, `venta`)
VALUES ('2023-11-21 16:45:00', 3, 67.89, 68.90);
-- Inserción de datos en la tabla d_crypto con fechaHora específica
INSERT INTO `d_crypto` (`fechaHora`, `id_tipo`, `compra`, `venta`)
VALUES ('2023-11-21 16:45:00', 4, 78.90, 79.91);
-- Inserción de datos en la tabla d_blue con fechaHora específica
INSERT INTO `d_blue` (`fechaHora`, `id_tipo`, `compra`, `venta`)
VALUES ('2023-11-21 16:45:00', 5, 89.91, 90.92);

-- Inserción de datos nuevos en la tabla cotizaciones
SET foreign_key_checks = 0;
INSERT INTO `cotizaciones` (`fechaHora`, `id_tipo`, `compra`, `venta`)
SELECT `fechaHora`, `id_tipo`, `compra`, `venta`
FROM (
    SELECT `fechaHora`, `id_tipo`, `compra`, `venta` FROM `d_oficial`
    UNION
    SELECT `fechaHora`, `id_tipo`, `compra`, `venta` FROM `d_ahorro`
    UNION
    SELECT `fechaHora`, `id_tipo`, `compra`, `venta` FROM `d_mep`
    UNION
    SELECT `fechaHora`, `id_tipo`, `compra`, `venta` FROM `d_crypto`
    UNION
    SELECT `fechaHora`, `id_tipo`, `compra`, `venta` FROM `d_blue`
) AS subquery
WHERE NOT EXISTS (
    SELECT 1
    FROM `cotizaciones`
    WHERE `cotizaciones`.`fechaHora` = subquery.`fechaHora` AND `cotizaciones`.`id_tipo` = subquery.`id_tipo`
);
SET foreign_key_checks = 1;

-- Llamar a la función para llenar la tabla brecha_ah_b
 CALL InsertarDatosBrechaAhB();

-- Seleccionar datos de las tablas log
SELECT * FROM cotizaciones_log;


SELECT * FROM brecha_log;


-- Creación de usuarios
CREATE USER IF NOT EXISTS 'guest1'@'localhost' IDENTIFIED BY '123abc';
CREATE USER IF NOT EXISTS 'guest2'@'localhost' IDENTIFIED BY '123abc';

-- Dar permisos de solo lectura en todas las tablas del esquema 'brecha_dolar' al usuario 'guest1'
GRANT SELECT ON brecha_dolar.* TO 'guest1'@'localhost';

-- Dar permisos de lectura, inserción y modificación de datos en todas las tablas del esquema 'brecha_dolar' al usuario 'guest2'
GRANT SELECT, INSERT, UPDATE ON brecha_dolar.* TO 'guest2'@'localhost';

-- Verificar los usuarios que contienen 'guest'
SELECT * FROM mysql.user WHERE user LIKE '%guest%';


-- Sentencias TCL

SET @@autocommit = 0;
SET  @@FOREIGN_KEY_CHECKS = 0;
SET SQL_SAFE_UPDATES = 0;

START TRANSACTION;
DELETE FROM cotizaciones WHERE id_tipo  = 5;

ROLLBACK;
-- COMMIT;

SELECT * FROM cotizaciones;

START TRANSACTION;
INSERT INTO brecha_ah_b (fechaHora, id_tipo, brecha_ah_b_porcentaje, brecha_ah_b_pesos)
VALUES
    ('2023-11-21 17:00:00', 1, 55.00, 6500.00),
    ('2023-11-21 17:00:00', 2, 55.00, 6500.00),
    ('2023-11-21 17:00:00', 3, 55.00, 6500.00),
    ('2023-11-21 17:00:00', 4, 55.00, 6500.00);
    SAVEPOINT sp1;
INSERT INTO brecha_ah_b (fechaHora, id_tipo, brecha_ah_b_porcentaje, brecha_ah_b_pesos)
VALUES
    ('2023-11-21 17:00:00', 5, 55.00, 6500.00),
    ('2023-11-21 17:05:00', 1, 55.50, 6600.00),
    ('2023-11-21 17:05:00', 2, 55.50, 6600.00),
    ('2023-11-21 17:05:00', 3, 55.50, 6600.00);
    SAVEPOINT sp2;
-- RELEASE SAVEPOINT sp1;

ROLLBACK;
COMMIT;

SET  @@FOREIGN_KEY_CHECKS = 1;
SET SQL_SAFE_UPDATES = 1;






