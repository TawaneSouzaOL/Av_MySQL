SELECT avg(salario) FROM funcionarios
WHERE departamento_id = 6;

SELECT avg(salario) FROM funcionarios
WHERE departamento_id = 6 AND gerente_id!=102;

INSERT INTO funcionarios (primeiro_nome, sobrenome, email, telefone, dataContratacao, ocupacao_id, salario, gerente_id, departamento_id)
VALUES
('Tawane', 'Souza', 'tawane.souza@momento.org', NULL, '2021-05-24', 9, 4260, 103, 6);

/*----------------------*/

SELECT * FROM funcionarios
WHERE departamento_id = 1;

INSERT INTO funcionarios (primeiro_nome, sobrenome, email, telefone, dataContratacao, ocupacao_id, salario, gerente_id, departamento_id)
VALUES
('Kepilyn', 'Santos', 'kepilyn.ss@momento.org', NULL, '2021-05-24', 3, 3000, 200, 1),
('Caio', 'Emanuel', 'caio.em@momento.org', NULL, '2021-05-24', 3, 3000, 200, 1),
('Letícia', 'França', 'leticia.ff@momento.org', NULL, '2021-05-24', 3, 3000, 200, 1),
('Marco', 'Putrino', 'marco.pp@momento.org', NULL, '2021-05-24', 3, 3000, 200, 1),
('Natália', 'Sabrina', 'natalia.ss@momento.org', NULL, '2021-05-24', 3, 3000, 200, 1),
('Raian', 'Nolaço', 'raian.nn@momento.org', NULL, '2021-05-24', 3, 3000, 200, 1),
('William', 'Araújo', 'william.aa@momento.org', NULL, '2021-05-24', 3, 3000, 200, 1);

SELECT COUNT(*) from funcionarios

SELECT SUM(salario) FROM funcionarios
WHERE departamento_id = 5;

INSERT INTO departamento (departamento_id, departamento_name, posicao_id)
VALUES
(DEFAULT, 'Inovações', 5400);

SELECT AVG(salario) FROM funcionarios WHERE departamento_id = 1 OR departamento_id = 10;
/*SELECT AVG(salario) FROM funcionarios WHERE departamento_id = 1 AND 10;*/

INSERT INTO ocupacoes (ocupacao_id, ocupacao_title, min_salario, max_salario)
VALUES
(DEFAULT, 'Programador', 4000, 6000),
(DEFAULT, 'Desenvolvedor',4000, 6600),
(DEFAULT, 'Gerente de Inovações', 4000, 8000);

INSERT INTO funcionarios (primeiro_nome, sobrenome, email, telefone, dataContratacao, ocupacao_id, salario, gerente_id, departamento_id)
VALUES
('Fabiana', 'Raulino', 'fabiraulino@momento.org', NULL, '2021-05-24', 22, 5500, 100, 12);

DELETE FROM prova_proa.funcionarios WHERE (funcionario_id = 225);

INSERT INTO funcionarios (primeiro_nome, sobrenome, email, telefone, dataContratacao, ocupacao_id, salario, gerente_id, departamento_id)
VALUES
('William', 'Ferreira', 'william.ff@momento.org', NULL, '2021-05-24', 20, 5500, 216, 12),
('Fernanda', 'Lima', 'fernanda.lima@momento.org', NULL, '2021-05-24', 21, 5500, 216, 12);

/*dependentes*/
INSERT INTO dependentes (dependente_id, primeiro_nome, sobrenome, parentesco, funcionario_id)
VALUES
(DEFAULT, 'Inara', 'Ferreira', 'Cônjuge', 226),
(DEFAULT, 'Gabriel', 'Ferreira', 'Filho(a)', 226),
(DEFAULT, 'Rodrigo', 'Lima', 'Cônjuge', 227),
(DEFAULT, 'Mayara', 'Raulino', 'Filho(a)', 216),
(DEFAULT, 'Laura', 'Raulino', 'Flho(a)', 216);

SELECT p.pais_name, r.regiao_name FROM paises
AS p JOIN regiao AS r
ON p.regiao_id = r.regiao_id;
/*"p" e "r" -> abreviações das tabelas "paises" e "regiao"*/

SELECT d.primeiro_nome, d.parentesco, f.primeiro_nome, f.sobrenome FROM dependentes
AS d JOIN funcionarios AS f
ON d.funcionario_id = f.funcionario_id
WHERE d.primeiro_nome LIKE 'Joe%';

SELECT d.primeiro_nome, d.sobrenome, d.parentesco, f.primeiro_nome, f.sobrenome FROM dependentes 
AS d JOIN funcionarios AS f
ON d.funcionario_id = f.funcionario_id
WHERE f.primeiro_nome LIKE 'Jose%';

SELECT r.regiao_name, COUNT (p.pais_id)
FROM regiao AS r JOIN paises AS p 
WHERE r.regiao_id = p.regiao_id 
GROUP BY p.regiao_id
ORDER BY COUNT (p.pais_id) DESC LIMIT 1;

SELECT  f.funcionario_id, f.primeiro_nome, f.sobrenome, d.dependente_id, d.primeiro_nome, d.sobrenome FROM dependentes
AS d JOIN funcionarios AS f
ON d.funcionario_id = f.funcionario_id;

SELECT d.primeiro_nome, d.sobrenome, d.parentesco, f.primeiro_nome, f.sobrenome FROM dependentes
AS d JOIN funcionarios AS f
ON f.funcionario_id = d.funcionario_id
WHERE f.primeiro_nome LIKE 'Karen';

SELECT * FROM funcionarios

ALTER TABLE funcionarios AUTO_INCREMENT = 219;

INSERT INTO funcionarios (primeiro_nome, sobrenome, email, telefone, dataContratacao, ocupacao_id, salario, gerente_id, departamento_id)
VALUES
('Fabianaa', 'Raulinoo', 'fabiraulinoo@momento.org', NULL, '2021-05-24', 22, 5500, 100, 12);

DELETE FROM prova_proa.funcionarios WHERE (funcionario_id = 219);

ALTER TABLE funcionarios AUTO_INCREMENT = 219;

INSERT INTO departamento (departamento_id, departamento_name, posicao_id)
VALUES
(DEFAULT, 'Inteligência Artificial', 5400);

INSERT INTO ocupacoes(ocupacao_title, min_salario, max_salario)
VALUES('Gerente da Inteligência Artificial', 7000, 15000);

UPDATE funcionarios
SET departamento_id = 13, salario = 15000, gerente_id = 100, ocupacao_id = 23
WHERE funcionario_id = 208;
