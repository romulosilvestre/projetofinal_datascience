-- DDL (Data Definition Language)
-- Linguagem de Definição de Dados 
   -- CREATE
   -- DROP
   -- ALTER
   
-- DML (Data Manipulation Language)

   -- INSERT
   -- UPDATE
   -- DELETE

-- DQL (Data Query Language)
   -- Linguagem de Pesquisa de dados
	  -- SELECT 
      -- WHERE
      -- FROM
      -- >  <   >= =  AND

-- DCL (Data Control Language)
     --  Linguagem de controle de dados
     -- CRIAR USUÁRIOS
     -- Tarefas de ADMIN
     -- Grant
     -- Revoke

-- DTL (Data Transaction Language)
    -- Transações
    
    -- BEGIN TRAN (OU BEGIN TRANSACTION) – Marca o começo de uma transação no banco da dados  que pode ser completada ou não.
    -- COMMIT – Envia todos os dados da transação permanentemente para o banco de dados.
    -- ROLLBACK – Desfaz as alterações feitas na transação realizada.

-- DDL:  CREATE DATABASE (criar um banco de dados)
CREATE DATABASE schooltracker;
-- Selecionar o banco de dados desejado
USE schooltracker;
-- Mostrar tabelas
SHOW tables;

CREATE TABLE aluno (
    id int PRIMARY KEY auto_increment,
    ra char(8) NOT NULL
);
DESCRIBE aluno;
-- INSERT 
INSERT aluno(ra)values('00034549');
INSERT aluno(ra)values('00034547');
SELECT * FROM aluno;
CREATE TABLE diariobordo (
    id int PRIMARY KEY auto_increment,
    texto text NOT NULL,
    datahora datetime,
    fk_aluno_id int
);
 
ALTER TABLE diariobordo ADD CONSTRAINT FK_diariobordo_2
    FOREIGN KEY (fk_aluno_id)
    REFERENCES aluno (id)
    ON DELETE CASCADE;

