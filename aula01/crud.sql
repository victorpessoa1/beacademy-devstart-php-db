USE db_escola;

-- Inserir 1 registro --
INSERT INTO tb_professor (nome, email, cpf)
VALUES ('Chiquim das Tapiocas', 'chiquim@email.com', '12312312323');

-- Inserir vários registros --
INSERT INTO tb_professor (nome, email, cpf)
VALUES 
    ('Zezim das Rapaduas', 'zezim@email.com', '12345678945'),
    ('Luiza das Rapaduas', 'luiza@email.com', '12345678946'),
    ('Maria das Rapaduas', 'maria@email.com', '12345678947');

-- Excluir 1 registro --
DELETE FROM tb_professor WHERE email = 'x';
DELETE FROM tb_professor WHERE id='1';

-- Excluir todos --

-- Editar dados de 1 registro --

UPDATE tb_professor set nome = 'Luiza da Caucaia' WHERE cpf = '12345678946';

-- Editar dados de todos os registros --
UPDATE tb_professor SET nome = 'Francisco';

-- Selecionar todos os dados de todos os professores --
SELECT * FROM tb_professor;


-- Selecionar todos os dados do professor de id = 5 --
SELECT * FROM tb_professor WHERE id='5';

-- Selecionar alguns dados de todos os professores --
SELECT nome, cpf FROM tb_professor;

-- descrever uma tabela --
DESC tb_category;