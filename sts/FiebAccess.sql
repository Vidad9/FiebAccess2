CREATE DATABASE FiebAccess
USE FiebAccess
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
SELECT * FROM Usuario
  

CREATE TABLE Categoria (
   id_Categoria      INT IDENTITY,
   nome              VARCHAR(100)    NOT NULL,
   descricao         VARCHAR(255)    NULL,
   statusCategoria   VARCHAR(20)     NOT NULL, -- ATIVO ou INATIVO

   PRIMARY KEY (id_Categoria)
);
--DROP TABLE Categoria
 
 CREATE TABLE Horario (
   id_Horario INT IDENTITY,
   horaInicio TIME NOT NULL,
   horaFim TIME NOT NULL,
   diaSemana VARCHAR(20) NOT NULL,
   statusHorario VARCHAR(20) NOT NULL, -- ATIVO ou INATIVO

   PRIMARY KEY (id_Horario)
);
--DROP TABLE Horario

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

CREATE TABLE Consulta (
   id_Consulta INT IDENTITY,
   id_Usuario INT NOT NULL,
   id_Profissional INT NOT NULL,
   dataConsulta DATE NOT NULL,
   horaConsulta TIME NOT NULL,
   statusConsulta VARCHAR(20) NOT NULL, -- ATIVO, CANCELADO, CONCLUÍDO, etc.

   PRIMARY KEY (id_Consulta),
   FOREIGN KEY (id_Usuario) REFERENCES Usuario(id), 
   FOREIGN KEY (id_Profissional) REFERENCES Profissional (id_Prof)
);
--DROP TABLE Consulta
--DROP DATABASE FiebAccess
--criar consulta


INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Vinicius Oliveira', 'vinisex0@gmail.com', 'sexo123', 'ADM', null, '123456789', 'Rua A, 123', 'ATIVO');

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

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Mariana Santos', 'mariana@example.com', 'admin123', 'USER', null, '999999999', 'Rua D, 101', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Gustavo Alves', 'gustavo@example.com', 'senha456', 'USER', null, '222222222', 'Avenida E, 202', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Camila Silva', 'camila@example.com', 'senha789', 'USER', null, '444444444', 'Rua F, 303', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('João Almeida', 'joao@example.com', 'senha123', 'USER', null, '666666666', 'Avenida G, 404', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Rodrigo Oliveira', 'rodrigo@example.com', 'senha456', 'USER', null, '888888888', 'Rua H, 505', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Larissa Almeida', 'larissa@example.com', 'admin123', 'USER', null, '444444444', 'Avenida S, 1616', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Fernando Alves', 'fernando@example.com', 'senha789', 'USER', null, '666666666', 'Rua T, 1717', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Camila Rodrigues', 'camila@example.com', 'senha123', 'USER', null, '888888888', 'Avenida U, 1818', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Isabela Santos', 'isabela@example.com', 'senha456', 'USER', null, '101010101', 'Rua V, 1919', 'ATIVO');
--USER

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('David Borges Sousa', 'david@example.com', 'senha789', 'ADM', null, '121212121', 'Avenida W, 2020', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Gilmar Wellington Viana de Sousa', 'gil@example.com', 'admin123', 'ADM', null, '999999999', 'Avenida AF, 2929', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('João Pedro Arcanjos', 'joão@example.com', 'senha456', 'ADM', null, '222222222', 'Rua AG, 3030', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Pablo Henrique Alves Peixoto', 'pablo@example.com', 'senha789', 'ADM', null, '444444444', 'Avenida AH, 3131', 'ATIVO');
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


INSERT INTO Horario (horaInicio, horaFim, diaSemana, statusHorario)
VALUES ('08:00:00', '09:00:00', 'Segunda-feira', 'ATIVO');

INSERT INTO Horario (horaInicio, horaFim, diaSemana, statusHorario)
VALUES ('10:00:00', '11:00:00', 'Terça-feira', 'ATIVO');

INSERT INTO Horario (horaInicio, horaFim, diaSemana, statusHorario)
VALUES ('14:00:00', '15:00:00', 'Quarta-feira', 'INATIVO');
--Horario


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

-- Inserir uma consulta agendada com um paciente e um profissional existentes
INSERT INTO Consulta (id_Usuario, id_Profissional, dataConsulta, horaConsulta, statusConsulta)
VALUES (1, 2, '2023-08-30', '14:00:00', 'ATIVO');

-- Inserir outra consulta agendada com um paciente e um profissional existentes
INSERT INTO Consulta (id_Usuario, id_Profissional, dataConsulta, horaConsulta, statusConsulta)
VALUES (3, 4, '2023-09-05', '10:30:00', 'ATIVO');

-- Inserir uma consulta cancelada com um paciente e um profissional existentes
INSERT INTO Consulta (id_Usuario, id_Profissional, dataConsulta, horaConsulta, statusConsulta)
VALUES (5, 6, '2023-09-10', '16:00:00', 'Inativo');


select * from Usuario
UPDATE Usuario set senha = '123' where id=1



select * from Categoria
select * from Consulta
select * from Horario

select * from Profissional

