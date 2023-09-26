CREATE DATABASE FiebAccess
CREATE TABLE Usuario(
id                 INT IDENTITY NOT NULL,   
nome               VARCHAR(100)    NOT NULL,
email              VARCHAR(100)    NOT NULL,
senha              VARCHAR(100)    NOT NULL,
nivelAcesso        VARCHAR(10)     NULL, -- ADM, TEC ou USER
foto               VARBINARY(MAX)  NULL,
telefone           VARCHAR(9),
endereço           VARCHAR(150),
statusUsuario      VARCHAR(20)     NOT NULL, -- ATIVO ou INATIVO ou TROCAR_SENHA

PRIMARY KEY (id)
);

--DROP TABLE Usuario
 

CREATE TABLE Aluno (
id_Aluno              INT IDENTITY,   
id_Usuario            INT,
nome                  VARCHAR(100)    NOT NULL,
endereco              VARCHAR(150),
email                 VARCHAR(100)    NOT NULL,
senha                 VARCHAR(100)    NOT NULL,
nivelAcesso           VARCHAR(10)     NULL, -- ADM, TEC ou USER
foto                  VARBINARY(MAX)  NULL,
statusUsuario         VARCHAR(20)     NOT NULL, -- ATIVO ou INATIVO ou TROCAR_SENHA
 

PRIMARY KEY (id_Aluno),
FOREIGN KEY (id_Usuario) REFERENCES Usuario (id),
);
 
--DROP TABLE Aluno

 

CREATE TABLE Consultório (
   id_Consul        INT IDENTITY,
   nome             VARCHAR(100)    NOT NULL,
   email            VARCHAR(100)    NOT NULL,
   senha            VARCHAR(100)    NOT NULL,
   nivelAcesso      VARCHAR(10)     NULL, -- ADM, TEC ou USER
   statusUsuario    VARCHAR(20)     NOT NULL, -- ATIVO ou INATIVO ou TROCAR_SENHA

   
   PRIMARY KEY (id_Consul)
);

--DROP TABLE Consultório


CREATE TABLE Categoria (
   id_Categoria      INT IDENTITY,
   nome              VARCHAR(100)    NOT NULL,
   descricao         VARCHAR(255)    NULL,
   statusCategoria   VARCHAR(20)     NOT NULL, -- ATIVO ou INATIVO

   PRIMARY KEY (id_Categoria)
);

--DROP TABLE Categoria
 

CREATE TABLE Profissional (
   id_Prof          INT IDENTITY,
   id_Categoria      INT,
   nome             VARCHAR(100)    NOT NULL,
   email            VARCHAR(100)    NOT NULL,
   senha            VARCHAR(100)    NOT NULL,
   nivelAcesso      VARCHAR(10)     NULL, -- ADM, TEC ou USER
   foto             VARBINARY(MAX)  NULL,
   statusUsuario    VARCHAR(20)     NOT NULL, -- ATIVO ou INATIVO ou TROCAR_SENHA
 

   PRIMARY KEY (id_Prof),
   FOREIGN KEY (id_Categoria) REFERENCES Categoria (id_Categoria),
);

--DROP TABLE Profissional
--DROP DATABASE FiebAccess



INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Ana Silva', 'ana@example.com', 'senha123', 'USER', null, '123456789', 'Rua A, 123', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Rafael Oliveira', 'rafael@example.com', 'senha456', 'USER', null, '987654321', 'Avenida B, 456', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Carla Alves', 'carla@example.com', 'senha789', 'USER', null, '555555555', 'Rua C, 789', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Lucas Rodrigues', 'lucas@example.com', 'tec789', 'USER', null, '888888888', 'Rua E, 222', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Patrícia Santos', 'patricia@example.com', 'senha123', 'USER', null, '333333333', 'Rua F, 555', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Fernanda Almeida', 'fernanda@example.com', 'senha456', 'USER', null, '777777777', 'Rua G, 777', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Fernando Rodrigues', 'fernando@example.com', 'senha123', 'USER', null, '333333333', 'Rua N, 1111', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Carolina Alves', 'carolina@example.com', 'senha456', 'USER', null, '555555555', 'Avenida O, 1212', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Ricardo Silva', 'ricardo@example.com', 'tec789', 'USER', null, '777777777', 'Rua P, 1313', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Amanda Rodrigues', 'amanda@example.com', 'senha123', 'USER', null, '999999999', 'Avenida Q, 1414', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Gustavo Oliveira', 'gustavo@example.com', 'senha456', 'USER', null, '222222222', 'Rua R, 1515', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Luisa Rodrigues', 'luisa@example.com', 'senha123', 'USER', null, '333333333', 'Rua AC, 2626', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Gustavo Santos', 'gustavo@example.com', 'senha456', 'USER', null, '555555555', 'Avenida AD, 2727', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Carolina Almeida', 'carolina@example.com', 'tec789', 'USER', null, '777777777', 'Rua AE, 2828', 'ATIVO');
--USER

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Mariana Santos', 'mariana@example.com', 'admin123', 'ADM', null, '999999999', 'Rua D, 101', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Gustavo Alves', 'gustavo@example.com', 'senha456', 'ADM', null, '222222222', 'Avenida E, 202', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Camila Silva', 'camila@example.com', 'senha789', 'ADM', null, '444444444', 'Rua F, 303', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('João Almeida', 'joao@example.com', 'senha123', 'ADM', null, '666666666', 'Avenida G, 404', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Rodrigo Oliveira', 'rodrigo@example.com', 'senha456', 'ADM', null, '888888888', 'Rua H, 505', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Larissa Almeida', 'larissa@example.com', 'admin123', 'ADM', null, '444444444', 'Avenida S, 1616', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Fernando Alves', 'fernando@example.com', 'senha789', 'ADM', null, '666666666', 'Rua T, 1717', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Camila Rodrigues', 'camila@example.com', 'senha123', 'ADM', null, '888888888', 'Avenida U, 1818', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Isabela Santos', 'isabela@example.com', 'senha456', 'ADM', null, '101010101', 'Rua V, 1919', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('João Alves', 'joao@example.com', 'senha789', 'ADM', null, '121212121', 'Avenida W, 2020', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Fernando Oliveira', 'fernando@example.com', 'admin123', 'ADM', null, '999999999', 'Avenida AF, 2929', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Camila Almeida', 'camila@example.com', 'senha456', 'ADM', null, '222222222', 'Rua AG, 3030', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Lucas Santos', 'lucas@example.com', 'senha789', 'ADM', null, '444444444', 'Avenida AH, 3131', 'ATIVO');
--ADM

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Larissa Costa', 'larissa@example.com', 'tec123', 'TEC', null, '555555555', 'Avenida I, 606', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Ricardo Santos', 'ricardo@example.com', 'senha789', 'TEC', null, '777777777', 'Rua J, 707', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Isabela Almeida', 'isabela@example.com', 'tec456', 'TEC', null, '999999999', 'Avenida K, 808', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Pedro Oliveira', 'pedro@example.com', 'tec123', 'TEC', null, '222222222', 'Rua L, 909', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Amanda Santos', 'amanda@example.com', 'senha789', 'TEC', null, '444444444', 'Avenida M, 1010', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Mariana Almeida', 'mariana@example.com', 'tec123', 'TEC', null, '141414141', 'Rua X, 2121', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Lucas Oliveira', 'lucas@example.com', 'senha456', 'TEC', null, '161616161', 'Avenida Y, 2222', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Pedro Alves', 'pedro@example.com', 'tec789', 'TEC', null, '181818181', 'Rua Z, 2323', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Amanda Almeida', 'amanda@example.com', 'tec123', 'TEC', null, '202020202', 'Avenida AA, 2424', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Ricardo Alves', 'ricardo@example.com', 'senha456', 'TEC', null, '222222222', 'Rua AB, 2525', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Isabela Rodrigues', 'isabela@example.com', 'tec123', 'TEC', null, '666666666', 'Rua AI, 3232', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Pedro Santos', 'pedro@example.com', 'tec789', 'TEC', null, '888888888', 'Avenida AJ, 3333', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Mariana Alves', 'mariana@example.com', 'senha123', 'TEC', null, '101010101', 'Rua AK, 3434', 'ATIVO');
--TEC
--Usuario
--40 Inserts


INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (1, 'Felipe Silva', 'Rua A, 123', 'ana@example.com', 'senha123', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (2, 'Enzo Oliveira', 'Avenida B, 456', 'rafael@example.com', 'senha456', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (3, 'Felipe Alves', 'Rua C, 789', 'carla@example.com', 'senha789', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (4, 'Rodrigo Rodrigues', 'Rua E, 222', 'lucas@example.com', 'tec789', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (5, 'Nicolas Santos', 'Rua F, 555', 'patricia@example.com', 'senha123', 'USER', null,'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (6, 'Geovana Almeida', 'Rua G, 777', 'fernanda@example.com', 'senha456', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (7, 'Luis Rodrigues', 'Rua N, 1111', 'fernando@example.com', 'senha123', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (8, 'Gabriela Alves', 'Avenida O, 1212', 'carolina@example.com', 'senha456', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (9, 'Gabriele Silva', 'Rua P, 1313', 'ricardo@example.com', 'tec789', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (10, 'Luisa Rodrigues', 'Avenida Q, 1414', 'amanda@example.com', 'senha123', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (11, 'Gepeto Oliveira', 'Rua R, 1515', 'gustavo@example.com', 'senha456', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (12, 'Milene Rodrigues', 'Rua AC, 2626', 'luisa@example.com', 'senha123', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (13, 'Fernando Santos', 'Avenida AD, 2727', 'gustavo@example.com', 'senha456', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (14, 'Juca Almeida', 'Rua AE, 2828', 'carolina@example.com', 'tec789', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (15, 'Pedro Almeida', 'Rua AF, 2929', 'pedro@example.com', 'tec123', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (16, 'Amanda Santos', 'Rua AG, 3030', 'amanda@example.com', 'tec456', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (17, 'Lucas Oliveira', 'Avenida AH, 3131', 'lucas@example.com', 'tec789', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (18, 'Camila Alves', 'Rua AI, 3232', 'camila@example.com', 'tec123', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (19, 'Rodrigo Almeida', 'Avenida AJ, 3333', 'rodrigo@example.com', 'tec456', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (20, 'Isabela Rodrigues', 'Rua AK, 3434', 'isabela@example.com', 'tec789', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (21, 'Maria Alves', 'Rua AM, 3535', 'maria@example.com', 'tec123', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (22, 'Gustavo Santos', 'Avenida AN, 3636', 'gustavo@example.com', 'tec456', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (23, 'Carla Oliveira', 'Rua AO, 3737', 'carla@example.com', 'tec789', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (24, 'Luciana Almeida', 'Avenida AP, 3838', 'luciana@example.com', 'tec123', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (25, 'Ricardo Alves', 'Rua AQ, 3939', 'ricardo@example.com', 'tec456', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (26, 'Ana Oliveira', 'Avenida AR, 4040', 'ana@example.com', 'tec789', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (27, 'Fernando Almeida', 'Rua AS, 4141', 'fernando@example.com', 'tec123', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (28, 'Camila Santos', 'Avenida AT, 4242', 'camila@example.com', 'tec456', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (29, 'João Almeida', 'Rua AU, 4343', 'joao@example.com', 'tec789', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (30, 'Larissa Oliveira', 'Avenida AV, 4444', 'larissa@example.com', 'tec123', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (31, 'Gustavo Almeida', 'Rua AX, 4545', 'gustavo@example.com', 'tec456', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (32, 'Mariana Santos', 'Avenida AY, 4646', 'mariana@example.com', 'tec789', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (33, 'Pedro Almeida', 'Rua AZ, 4747', 'pedro@example.com', 'tec123', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (34, 'Amanda Oliveira', 'Avenida BA, 4848', 'amanda@example.com', 'tec456', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (35, 'Lucas Alves', 'Rua BB, 4949', 'lucas@example.com', 'tec789', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (36, 'Carla Almeida', 'Avenida BC, 5050', 'carla@example.com', 'tec123', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (37, 'Fernando Santos', 'Rua BD, 5151', 'fernando@example.com', 'tec456', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (38, 'Camila Alves', 'Avenida BE, 5252', 'camila@example.com', 'tec789', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (39, 'João Oliveira', 'Rua BF, 5353', 'joao@example.com', 'tec123', 'USER', null, 'ATIVO');

INSERT INTO Aluno (id_Usuario, nome, endereco, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (40, 'Larissa Almeida', 'Avenida BG, 5454', 'larissa@example.com', 'tec456', 'USER', null, 'ATIVO');
--ALUNO
--40 Inserts



INSERT INTO Consultório (nome, email, senha, nivelAcesso, statusUsuario)
VALUES ('Consultório A', 'consultorioA@example.com', 'senha123', 'USER', 'ATIVO');

INSERT INTO Consultório (nome, email, senha, nivelAcesso, statusUsuario)
VALUES ('Consultório B', 'consultorioB@example.com', 'senha456', 'USER', 'ATIVO');
--USER

INSERT INTO Consultório (nome, email, senha, nivelAcesso, statusUsuario)
VALUES ('Consultório C', 'consultorioC@example.com', 'admin123', 'ADM', 'ATIVO');
--ADM

INSERT INTO Consultório (nome, email, senha, nivelAcesso, statusUsuario)
VALUES ('Consultório D', 'consultorioD@example.com', 'tec123', 'TEC', 'ATIVO');

INSERT INTO Consultório (nome, email, senha, nivelAcesso, statusUsuario)
VALUES ('Consultório E', 'consultorioE@example.com', 'tec456', 'TEC', 'ATIVO');
--TEC
--Consultório



INSERT INTO Categoria (nome, descricao, statusCategoria)
VALUES ('Categoria 1', 'Psiquiatra', 'ATIVO');

INSERT INTO Categoria (nome, descricao, statusCategoria)
VALUES ('Categoria 2', 'Psicólogo', 'ATIVO');

INSERT INTO Categoria (nome, descricao, statusCategoria)
VALUES ('Categoria 3', 'Nutrólogo', 'ATIVO');

INSERT INTO Categoria (nome, descricao, statusCategoria)
VALUES ('Categoria 4', 'Nutricionista', 'ATIVO');

INSERT INTO Categoria (nome, descricao, statusCategoria)
VALUES ('Categoria 5', 'Dentista', 'INATIVO');
--Categoria



INSERT INTO Profissional (id_Categoria, nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (1, 'Maria da Silva', 'profissional1@example.com', 'senha123', 'USER', null, 'ATIVO');

INSERT INTO Profissional (id_Categoria, nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (1, 'João Oliveira', 'profissional2@example.com', 'senha456', 'USER', null, 'ATIVO');

INSERT INTO Profissional (id_Categoria, nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (1, 'Gustavo Carvalho', 'profissional1@example.com', 'senha123', 'USER', null, 'ATIVO');

INSERT INTO Profissional (id_Categoria, nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (1, 'Amanda Gomes', 'profissional2@example.com', 'senha456', 'USER', null, 'ATIVO');

INSERT INTO Profissional (id_Categoria, nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (2, 'Ana Santos', 'profissional4@example.com', 'senha123', 'USER', null, 'ATIVO');

INSERT INTO Profissional (id_Categoria, nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (2, 'Pedro Rodrigues', 'profissional5@example.com', 'senha456', 'USER', null, 'ATIVO');

INSERT INTO Profissional (id_Categoria, nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (2, 'Marcelo Teixeira', 'profissional4@example.com', 'senha123', 'USER', null, 'ATIVO');

INSERT INTO Profissional (id_Categoria, nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (2, 'Camila Ribeiro', 'profissional5@example.com', 'senha456', 'USER', null, 'ATIVO');

INSERT INTO Profissional (id_Categoria, nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (3, 'Laura Almeida', 'profissional4@example.com', 'senha123', 'USER', null, 'ATIVO');

INSERT INTO Profissional (id_Categoria, nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (3, 'Bruno Pereira de Paula', 'profissional5@example.com', 'senha456', 'USER', null, 'ATIVO');

INSERT INTO Profissional (id_Categoria, nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (3, 'Larissa Vieira', 'profissional4@example.com', 'senha123', 'USER', null, 'ATIVO');

INSERT INTO Profissional (id_Categoria, nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (3, 'Felipe Alves', 'profissional5@example.com', 'senha456', 'USER', null, 'ATIVO');

INSERT INTO Profissional (id_Categoria, nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (4, 'Carla Pereira', 'profissional4@example.com', 'senha123', 'USER', null, 'ATIVO');

INSERT INTO Profissional (id_Categoria, nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (4, 'Lucas Ferreira', 'profissional5@example.com', 'senha456', 'USER', null, 'ATIVO');

INSERT INTO Profissional (id_Categoria, nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (4, 'Heloisa Mariano', 'profissional4@example.com', 'senha123', 'USER', null, 'ATIVO');

INSERT INTO Profissional (id_Categoria, nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (4, 'Juliana Lima', 'profissional5@example.com', 'senha456', 'USER', null, 'ATIVO');

INSERT INTO Profissional (id_Categoria, nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (5, 'Isabeli Souza', 'profissional3@example.com', 'senha789', 'USER', null, 'INATIVO');

INSERT INTO Profissional (id_Categoria, nome, email, senha, nivelAcesso, foto, statusUsuario)
VALUES (5, 'Thiago Pereira', 'profissional3@example.com', 'senha789', 'USER', null, 'INATIVO');
--Profissional


select * from Usuario
UPDATE Usuario set senha = '123' where id=1




select * from Aluno






select * from Consultório


select * from Categoria



select * from Profissional

