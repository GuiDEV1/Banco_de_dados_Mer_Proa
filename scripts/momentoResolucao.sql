

INSERT INTO funcionarios (primeiro_nome, sobrenome, email, telefone, datacontratacao, ocupacao_id, salario, gerente_id, departamento_id)
values 
('Guilherme', 'Macarenhas', 'guimaster55@gamil.com', '333255','2023-01-01','4','15000',100,6);

/************************** **************************/
INSERT INTO FUNCIONARIOS
(primeiro_nome, sobrenome, email, telefone, datacontratacao, ocupacao_id, salario, gerente_id, departamento_id)
VALUES
('Victor', 'Hugo', 'victorugoUX@gmail.com.br', '(11) 96932-6449', '2023-01-03', 3, 3000.00, null, 1);

INSERT INTO FUNCIONARIOS
(primeiro_nome, sobrenome, email, telefone, datacontratacao, ocupacao_id, salario, gerente_id, departamento_id)
VALUES
('Vinicius', 'Calo', 'viniciuscaloJavaMaingmail.com.br', '(11) 96979-2157', '2023-01-06', 3, 3000.00, null, 1);

INSERT INTO FUNCIONARIOS
(primeiro_nome, sobrenome, email, telefone, datacontratacao, ocupacao_id, salario, gerente_id, departamento_id)
VALUES
('Rodrigo', 'Sales Veloso', 'rodrigoBackEnd@gmail.com.br', '(11) 96978-6797', '2023-01-09', 3, 3000.00, null, 1);

INSERT INTO FUNCIONARIOS
(primeiro_nome, sobrenome, email, telefone, datacontratacao, ocupacao_id, salario, gerente_id, departamento_id)
VALUES
('Isabela', 'Rosseto', 'isabelaScrum@gmail.com.br', '(11) 98287-3606', '2023-01-14', 3, 3000.00, null, 1);

INSERT INTO FUNCIONARIOS
(primeiro_nome, sobrenome, email, telefone, datacontratacao, ocupacao_id, salario, gerente_id, departamento_id)
VALUES
('Jenifer', 'Carmo', 'jeniferUX@gmail.com.br', '(11) 98229-4858', '2023-01-23', 3, 3000.00, null, 1);

INSERT INTO FUNCIONARIOS
(primeiro_nome, sobrenome, email, telefone, datacontratacao, ocupacao_id, salario, gerente_id, departamento_id)
VALUES
('Diogo', 'Souza', 'diogoBackEnd@gmail.com.br', '(11) 98287-3606', '2023-01-14', 3, 3000.00, null, 1);

INSERT INTO FUNCIONARIOS
(primeiro_nome, sobrenome, email, telefone, datacontratacao, ocupacao_id, salario, gerente_id, departamento_id)
VALUES
('João marcos', 'Rebelo-', 'JoaoBackEndjava@gmail.com.br', '(11) 98070-8895', '2023-01-24', 3, 3000.00, null, 1);

/***************************************************************************/

select count(*) from funcionarios;  -- Total = 48

/**************************************************************/

select count(*) from funcionarios where departamento_id = 10;   -- Total = 6

/**********************************************/

select avg(salario) from funcionarios where departamento_id = 6; --Media: 7300.000000

/**************************************************/

select sum(salario) from funcionarios where departamento_id = 5; --Total: 41200.00

/****************************************************************/

insert into departamento 
(departamento_name, posicao_id)
values ('inovacao', 5400);

/********************************************************/


INSERT INTO ocupacoes(ocupacao_id,ocupacao_title,min_salario,max_salario) VALUES (20,'Programador',4500.00,9500.00)(20,'Gerente de Inovações',6500.00,12000.00);

SELECT AVG(`salario`) FROM funcionarios WHERE departamento_id = '1' AND '10';

INSERT INTO funcionarios(primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES 
('Fabiana','Raulino','fabiana.raulino@momento.org','3112-3344','2022-05-28',21,5633.00,NULL,12),
(216,'William','Ferreira','william.ferreira@momento.org','35667-4548','2022-05-28',20,5633.00,215,12),
(217,'Fernanda','Lima','fernanda.lima@momento.org','34567-4558','2022-05-28',9,5633.00,215,12);

INSERT INTO dependentes(dependente_id,primeiro_nome,sobrenome,parentesco,funcionario_id) VALUES 
(34,'Maya','Raulino','Filho(a)',215),
(35,'Laura','Raulino','Filho(a)',215),
(36,'Inara','Ferreira','Cônjuge',216),
(37,'Gabriel','Ferreira','Filho(a)',216),
(38,'Rodrigo','Lima','Filho(a)',217);

/********************************************************************8/

SELECT paises.*,regiao_name 
FROM paises
inner join regiao
on paises.regiao_id = regiao.regiao_id;

/*************************************************************/

SELECT dependentes.primeiro_nome, funcionarios.primeiro_nome
From dependentes
INNER JOIN funcionarios 
ON dependentes.funcionario_id = funcionarios.funcionario_id
WHERE dependentes.primeiro_nome = 'Joe';

/***********************************************************/

SELECT dependentes.primeiro_nome, funcionarios.primeiro_nome, dependentes.parentesco
From dependentes
INNER JOIN funcionarios 
ON dependentes.funcionario_id = funcionarios.funcionario_id
WHERE dependentes.funcionario_id = 112;

/********************************************************************/

SELECT paises.pais_name, regiao.regiao_name, COUNT(*) From paises INNER JOIN regiao On paises.regiao_id = regiao.regiao_id WHERE paises.regiao_id = 1; 
SELECT paises.pais_name, regiao.regiao_name, COUNT(*) From paises INNER JOIN regiao On paises.regiao_id = regiao.regiao_id WHERE paises.regiao_id = 2; 
SELECT paises.pais_name, regiao.regiao_name, COUNT(*) From paises INNER JOIN regiao On paises.regiao_id = regiao.regiao_id WHERE paises.regiao_id = 3; 
SELECT paises.pais_name, regiao.regiao_name, COUNT(*) From paises INNER JOIN regiao On paises.regiao_id = regiao.regiao_id WHERE paises.regiao_id = 4; 

/******************************************************************************/

SELECT dependentes.primeiro_nome, funcionarios.primeiro_nome
From dependentes
INNER JOIN funcionarios 
ON dependentes.funcionario_id = funcionarios.funcionario_id ;

/**********************************************************************************/

SELECT* FROM funcionarios WHERE primeiro_nome LIKE 'Karen';
SELECT dependentes.primeiro_nome, funcionarios.primeiro_nome, dependentes.parentesco From dependentes INNER JOIN funcionarios ON dependentes.funcionario_id = funcionarios.funcionario_id WHERE dependentes.funcionario_id = 146;  Possui um filho;

/****************************************************/

INSERT INTO departamento(departamento_id,departamento_name,posicao_id) VALUES (13,'Juídico',1500);
UPDATE 'funcionarios' SET 'ocupacao_id' = '22', 'salario' = '12000.00' WHERE 'funcionarios'.'funcionario_id' = 207;

INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,telefone,dataContratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES 
(218,'Bento','Augusto','bento.augusto.org','3442-3445','2022-06-01',23,5000.00,207,13),
(219,'Claudia','Regina','claudia.regina.org','3389-3995','2022-06-01',24,7500.00,207,13),
(220,'Fernanda','Lima','fernanda.lima@momento.org','34567-4558','2022-05-28',25,17000.00,207,13);
