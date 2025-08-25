CREATE DATABASE clinica_nana;

USE clinica_nana;

CREATE TABLE tbl_consultas(
id_consulta int auto_increment not null primary key,
id_paciente int,
id_medico int,
id_clinica int,
especialidade VARCHAR(50),
data_hora_agendada double,
data_hora_inicio double,
status VARCHAR(50) );


SET GLOBAL local_infile = 1;

LOAD DATA INFILE 'C:/Users/36134552025.1/Desktop/projeto inal/consultas.csv'
INTO TABLE tbl_consultas
FIELDS TERMINATED BY ','
LINES TERMINATED  BY '\n'
IGNORE 1 ROWS;

SELECT * FROM tbl_consultas;












CREATE TABLE tbl_avaliacoes(
id_consulta int auto_increment not null primary key,
nota_satisfacao DOUBLE,
comentario VARCHAR(30)
);

SET GLOBAL local_infile = 1;

LOAD DATA INFILE 'C:/Users/36134552025.1/Desktop/projeto inal/avaliacoes.csv'
INTO TABLE tbl_avaliacoes
FIELDS TERMINATED BY ','
LINES TERMINATED  BY '\n'
IGNORE 1 ROWS;

SELECT * FROM tbl_avaliacoes;










CREATE TABLE tbl_clinicas(
id_clinica int,
nome VARCHAR(50),
cidade VARCHAR(30),
capacidade_diaria DOUBLE
);

SET GLOBAL local_infile = 1;

LOAD DATA INFILE 'C:/Users/36134552025.1/Desktop/projeto inal/clinicas.csv'
INTO TABLE tbl_clinicas
FIELDS TERMINATED BY ','
LINES TERMINATED  BY '\n'
IGNORE 1 ROWS;

SELECT * FROM tbl_clinicas;













CREATE TABLE tbl_medicos(
id_medico int,
nome VARCHAR(50),
especialidade VARCHAR(50),
tempo_medio_atendimento DOUBLE
);

SET GLOBAL local_infile = 1;

LOAD DATA INFILE 'C:/Users/36134552025.1/Desktop/projeto inal/medicos.csv'
INTO TABLE tbl_medicos
FIELDS TERMINATED BY ','
LINES TERMINATED  BY '\n'
IGNORE 1 ROWS;

SELECT * FROM tbl_medicos;












CREATE TABLE tbl_pacientes(
id_paciente int,
idade DOUBLE,
sexo VARCHAR(50),
cidade VARCHAR(50),
plano_saude VARCHAR(50)
);

SET GLOBAL local_infile = 1;

LOAD DATA INFILE '"C:/Users/36134552025.1/Desktop/projeto inal/pacientes.csv'
INTO TABLE tbl_pacientes
FIELDS TERMINATED BY ','
LINES TERMINATED  BY '\n'
IGNORE 1 ROWS;

SELECT * FROM tbl_pacientes;

SELECT * FROM DATABASE clinica_nana