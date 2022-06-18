-- Para criar um banco de dados --

CREATE DATABASE db_escola;

-- Selecionar o banco de dados --

USE db_escola;


-- Criar tabela --
CREATE TABLE tb_professor (
    id INT (11) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE tb_aluno (
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    matricula CHAR(11) UNIQUE NOT NULL
);

CREATE TABLE tb_curso (
    nome VARCHAR(100) UNIQUE NOT NULL,
    codigo CHAR(11) UNIQUE NOT NULL
);

CREATE TABLE tb_disciplina (
    nome VARCHAR(100) UNIQUE NOT NULL,
    codigo CHAR(7) UNIQUE NOT NULL
);

-- Excluir tabela --
DROP TABLE nome_da_tabela;
DROP TABLE tb_professor;

-- Inserir dados

INSERT INTO tb_professor (nome, email, cpf )
VALUES (
    'Alessandro', 'ale@email.com', '12312312312'
);

INSERT INTO tb_professor (nome, email, cpf )
VALUES (
    'Bruno', 'bruno@email.com', '23423423434'
);

INSERT INTO tb_aluno ( nome, cpf, email, matricula)
VALUES (
	'José',
    '09109101900',
    'jose@email.com',
    '9123322345'
);

INSERT INTO tb_aluno ( nome, cpf, email, matricula)
VALUES (
	'Aline',
    '90987809810',
    'aline@email.com',
    '20160990909'
);

-- Selecionar (exibir) os dados --
SELECT * FROM nome_da_tabela; -- Onde * significa todos os dados
SELECT * FROM tb_professor;