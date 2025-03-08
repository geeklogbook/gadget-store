-- Active: 1741138916750@@127.0.0.1@3306@base_negocio_landing
USE base_negocio_landing;

-- If you can't load the data using local data local infile
SET GLOBAL local_infile=1;

-- CSV File

LOAD DATA LOCAL INFILE '/ftp/input/Clientes.csv'
INTO TABLE cliente
CHARACTER SET utf8
FIELDS TERMINATED BY ';' ENCLOSED BY '\"' ESCAPED BY '\"'
LINES TERMINATED BY '\n' IGNORE 1 LINES;
