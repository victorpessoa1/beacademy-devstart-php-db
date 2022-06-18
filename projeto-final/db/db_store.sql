CREATE DATABASE db_store;

USE db_store;

CREATE TABLE tb_category (
    id INT(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(100) NOT NULL
);

CREATE TABLE tb_product(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(100) NOT NULL,
    photo VARCHAR(255) NOT NULL,
    value FLOAT(5,2) NOT NULL,
    category_id INT(11) NOT NULL,
    quantity INT(5) NOT NULL,
    created_at DATETIME NOT NULL
);

INSERT INTO tb_category (name, description)
VALUES 
    ('Informática', 'Produtos e acessórios para computador'),
    ('Escritório', 'Canetas, Cadernos, etc'),
    ('Eletrônicos', 'TVs, Som, Som portátil, etc');

INSERT INTO tb_product (name, description, photo, value, category_id, quantity, created_at)
VALUES
    ('caderno', 'caderno do Ben 10', 'https://papelariazonca.com.br/wp-content/uploads/2020/12/Caderbo-ben-10-1.jpg', 29.99, '2', 40, '2022-05-10 02:10:09'),
    ('caderno', 'caderno do Homem de Ferro', 'https://papelariazonca.com.br/wp-content/uploads/2020/12/Caderbo-ben-10-1.jpg', 29.99, '2', 40, '2022-05-10 02:10:09'),
    ('caderno', 'caderno do Capitão América', 'https://papelariazonca.com.br/wp-content/uploads/2020/12/Caderbo-ben-10-1.jpg', 29.99, '2', 40, '2022-05-10 02:10:09');