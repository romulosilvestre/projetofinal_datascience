-- DROP : apagar tabela ou banco
DROP DATABASE revisaosql;
-- CREATE: criar tabela, banco entre outros
CREATE DATABASE revisaosql;
-- USE : usar o banco
USE revisaosql;

-- criar uma tabela
CREATE TABLE aluno(  
    -- id chave primária e auto incremento (1,2,3,4......)
    -- único, universal e imutável
    -- não se repete, todo mundo depende dele, não muda
    id int primary key auto_increment,
    -- um limite de 8 caracteres, não nulo, não se repete.
    ra char(8) NOT NULL UNIQUE
); 
-- DML (Data Manipulation Languagem - Ling. Manip. de Dados
-- INSERT , DELETE , UPDATE
-- 
INSERT INTO aluno(ra) VALUES('12345670');
INSERT INTO aluno(ra) VALUES('12345671');
INSERT INTO aluno(ra) VALUES('12345672');
INSERT INTO aluno(ra) VALUES('12345673');
INSERT INTO aluno(ra) VALUES('12345674');
INSERT INTO aluno(ra) VALUES('12345675');
INSERT INTO aluno(ra) VALUES('12345676');
INSERT INTO aluno(ra) VALUES('12345677');
INSERT INTO aluno(ra)VALUES('12345678');
INSERT INTO aluno(ra) VALUES('12345679');
INSERT INTO aluno(ra) VALUES('12345680');
INSERT INTO aluno(ra) VALUES('12345681');
INSERT INTO aluno(ra) VALUES('12345682');
INSERT INTO aluno(ra) VALUES('12345683');
INSERT INTO aluno(ra) VALUES('12345684');
INSERT INTO aluno(ra) VALUES('12345685');
INSERT INTO aluno(ra) VALUES('12345686');
INSERT INTO aluno(ra) VALUES('12345687');
INSERT INTO aluno(ra) VALUES('12345688');
INSERT INTO aluno(ra) VALUES('12345689');
INSERT INTO aluno(ra) VALUES('12345690');
INSERT INTO aluno(ra) VALUES('12345691');
INSERT INTO aluno(ra) VALUES('12345692');
INSERT INTO aluno(ra) VALUES('12345693');
INSERT INTO aluno(ra) VALUES('12345694');

-- Pesquise todas as colunas (*) da tabela aluno
SELECT * FROM aluno;

-- Criar diário de bordo
CREATE TABLE diariobordo (
    id int PRIMARY KEY auto_increment,
    texto text NOT NULL,
    datahora datetime NOT NULL,
    fk_aluno_id int NOT NULL
);

 
ALTER TABLE diariobordo ADD CONSTRAINT FK_diariobordo_2
    FOREIGN KEY (fk_aluno_id)
    REFERENCES aluno (id)
    ON DELETE CASCADE;
    
SELECT * FROM diariobordo;
describe diariobordo;
SELECT * FROM aluno;
INSERT diariobordo(texto,
                   datahora,
                   fk_aluno_id)VALUES('estou revisando com os colegas e o professor o conteúdo de ontem',
                                      '2024-08-01 16:27:00',
                                       6);
INSERT diariobordo(texto,
                   datahora,
                   fk_aluno_id)VALUES('sou vascaino estou triste',
                                      '2024-08-01 16:30:00',
                                       8);
                                       
INSERT diariobordo(texto,
                   datahora,
                   fk_aluno_id)VALUES('a aula foi legal',
                                      '2024-08-01 09:16:00',
                                       13);
INSERT diariobordo(texto,
                   datahora,
                   fk_aluno_id)VALUES('estou aprendendo insert',
                                      '2024-08-01 09:33:00',
                                       24);
INSERT diariobordo(texto,
                   datahora,
                   fk_aluno_id)VALUES('estou aprendendo insert de novo',
                                      '2024-08-01 09:33:00',
                                       24);
SELECT * FROM aluno;
SELECT *  FROM diariobordo;
SELECT * FROM 
     diariobordo 
     JOIN 
	 aluno 
     ON diariobordo.fk_aluno_id = aluno.id;
SELECT
     d.texto,
     d.datahora,
     a.ra
     FROM 
     diariobordo d 
     JOIN 
	 aluno a 
     ON d.fk_aluno_id = a.id;




-- Exercício
-- Modelo Conceitual - crie uma nova entidade chamada avaliacao.
                                                      -- id pk
                                                      -- nota1 int
                                                      -- nota2 int
                                                      -- nota3 int
                                                      -- nota4 int
                                                      -- fk_aluno_id
-- Modelo Lógico
-- Modelo Físico (brModelo)
-- INSERTs de 5 alunos com as notas
-- SELECT * FROM avaliacao;
-- SELECT JOIN : tabela aluno com tabela avaliação.


ALTER TABLE avaliacao
ADD CONSTRAINT CHECK (nota1 <= 25),
ADD CONSTRAINT CHECK (nota2 <= 25),
ADD CONSTRAINT CHECK (nota3 <= 25),
ADD CONSTRAINT CHECK (nota4 <= 25);

truncate table aluno;
-- DQL
show tables;

-- Exercício


CREATE TABLE avaliacao (
    id int PRIMARY KEY,
    nota1 int,
    nota2 int,
    nota3 int,
    nota4 int,
    fk_aluno_id int
);

ALTER TABLE avaliacao ADD CONSTRAINT FK_avaliacao_2
    FOREIGN KEY (fk_aluno_id)
    REFERENCES aluno (id)
    ON DELETE RESTRICT;


