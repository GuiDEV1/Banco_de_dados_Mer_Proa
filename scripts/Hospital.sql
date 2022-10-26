/* 
Banco de dados criado para um hospital e relacionando suas tabelas.
autor: Guilherme Mascarenhas Dias
Data: 24/10/2022
versão: 1.0
*/


CREATE DATABASE HOSPITAL;
USE HOSPITAL;


CREATE TABLE MEDICO (
`ID_MEDICO` INT(11) AUTO_INCREMENT PRIMARY KEY ,
`NOME_MEDICO` VARCHAR(255) NOT NULL ,
`CARGO_MEDICO` VARCHAR(255)  ,
`CPF_MEDICO` VARCHAR(255) NOT NULL ,
`DATA_DE_NACIMENTO_MEDICO` DATE ,
`TELEFONE` VARCHAR(255) ,
`NOME_LOGRADOURO` VARCHAR(255) ,
`LOGRADOURO` VARCHAR(255) ,
`NUMERO` INT(11) ,
`BAIRRO` VARCHAR(255) 
);

ALTER TABLE MEDICO ADD `CEP` VARCHAR(255);

CREATE TABLE CONSULTA (
 `ID_CONSULTA` INT(11) AUTO_INCREMENT PRIMARY KEY ,
 `DATA_CONSULTA` DATE ,
 `HORA_CONSULTA` TIME ,
 `VALOR_CONSULTA` FLOAT(9.2) 
); 

ALTER TABLE `CONSULTA` ADD foreign key (`FK_MEDICO`) REFERENCES `MEDICO` (`ID_MEDICO`);
ALTER TABLE `CONSULTA` ADD  FOREIGN KEY (`FK_PACIENTE`) REFERENCES `PACIENTE` (`ID_PACIENTE`);
ALTER TABLE `CONSULTA` ADD  FOREIGN KEY (`FK_CONVENIO`) REFERENCES `CONVENIO` (`ID_CONVENIO`);

CREATE TABLE PACIENTE (
 `ID_PACIENTE` INT(11) AUTO_INCREMENT PRIMARY KEY ,
 `NOME_PACIENTE` VARCHAR(255) NOT NULL ,
 `DATA_DE_NASCIMENTO_PACIENTE` DATE ,
 `CPF_PACIENTE` VARCHAR(255) NOT NULL ,
 `RG_PACIANTE` VARCHAR(255) ,
 `EMAIL_PACIENTE` VARCHAR(255) ,
 `NOME_LOGRADOURO` VARCHAR(255) ,
 `LOGRADOURO` VARCHAR(255) ,
 `NUMERO` INT(11) ,
 `BAIRRO` VARCHAR(255) ,
 `CEP` VARCHAR(255)
);


CREATE TABLE CONVENIO (
`ID_CONVENIO` INT(11) AUTO_INCREMENT PRIMARY KEY ,
`NOME_CONVENIO` VARCHAR(255) NOT NULL ,
`CNPJ_CONVENIO` VARCHAR(255) NOT NULL
);

ALTER TABLE CONVENIO ADD FOREIGN KEY (`FK_PACIENTE`) REFERENCES `PACIENTE` (`ID_PACIENTE`);

CREATE TABLE RECEITA (
`ID_RECEITA` INT(11) AUTO_INCREMENT PRIMARY KEY ,
`MEDICAMENTOS_RECEITA` VARCHAR(255) NOT NULL ,
`QUANTIDADE_RECEITA` INT(11) NOT NULL ,
`INSTRUCOES_RECEITA` TEXT
);

ALTER TABLE RECEITA ADD `FK_PACIENTE` INT(11);
ALTER TABLE RECEITA ADD FOREIGN KEY (`FK_PACIENTE`) REFERENCES PACIENTE (`ID_PACIENTE`);  

CREATE TABLE QUARTOS (
`ID_QUARTOS`  INT(11) AUTO_INCREMENT PRIMARY KEY ,
`TIPO_DE_QUARTOS` varchar(255) NOT NULL,
`DESCRICAO_QUARTOS` TEXT ,
`VALOR_DIARIO_QUARTOS` FLOAT(9,2) NOT NULL
);

CREATE TABLE INTERNACOES (
`ID_INTERNACOES` INT(11) AUTO_INCREMENT PRIMARY KEY,
`DATA_DE_ENTRADA` DATE NOT NULL ,
`DATA_DE_PREVISAO_DE_ALTA` DATE ,
`DATA_DE_ALTA` DATE NOT NULL ,
`DESCRICAO_INTERNACOES` TEXT
);

ALTER TABLE INTERNACOES ADD `FK_PACIENTE` INT(11);
ALTER TABLE INTERNACOES ADD FOREIGN KEY (`FK_PACIENTE`) REFERENCES PACIENTE (`ID_PACIENTE`);
ALTER TABLE INTERNACOES ADD `FK_QUARTOS` INT(11);
ALTER TABLE INTERNACOES ADD FOREIGN KEY (`FK_QUARTOS`) REFERENCES QUARTOS (`ID_QUARTOS`);
ALTER TABLE INTERNACOES ADD `FK_CRE_ENFERMEIRO` INT(11);
ALTER TABLE INTERNACOES ADD FOREIGN KEY (`FK_CRE_ENFERMEIRO`) REFERENCES ENFERMEIRO (`CRE_ENFERMEIRO`);


CREATE TABLE ENFERMEIRO(
`CRE_ENFERMEIRO` INT(11) AUTO_INCREMENT PRIMARY KEY,
`NOME_ENFERMEIRO` VARCHAR(255) NOT NULL ,
`CPF_ENFERMEIRO` VARCHAR(255) NOT NULL
);







