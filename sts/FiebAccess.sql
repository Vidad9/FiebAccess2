CREATE DATABASE FiebAccess;
USE FiebAccess;

CREATE TABLE Usuario (
    id INT IDENTITY NOT NULL,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL,
    nivelAcesso VARCHAR(10) NULL,
    foto VARBINARY(MAX) NULL,
    telefone VARCHAR(9),
    endereço VARCHAR(150),
    statusUsuario VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Categoria (
    id_Categoria INT IDENTITY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NULL,
    statusCategoria VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_Categoria)
);

CREATE TABLE Horario (
    id_Horario INT IDENTITY,
    horaInicio TIME NOT NULL,
    horaFim TIME NOT NULL,
    diaSemana VARCHAR(20) NOT NULL,
    statusHorario VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_Horario)
);

CREATE TABLE Consulta (
    id_Consulta INT IDENTITY,
    id_Usuario INT,
    id_Horario INT NOT NULL,
    dataConsulta DATE NOT NULL,
    statusConsulta VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_Consulta),
    FOREIGN KEY (id_Usuario) REFERENCES Usuario(id),
    FOREIGN KEY (id_Horario) REFERENCES Horario(id_Horario)
);


INSERT INTO Consulta (id_Usuario, id_Horario, dataConsulta, statusConsulta)
VALUES (1, 1, '2023-11-23', 'ATIVO');


DELETE u1
FROM Usuario u1
INNER JOIN Usuario u2 ON u1.email = u2.email
WHERE u1.id > u2.id;

UPDATE Usuario SET senha = '123' WHERE id = 1;


SELECT * FROM Usuario;
SELECT * FROM Categoria;
SELECT * FROM Consulta;
SELECT * FROM Horario;

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
VALUES ('Vinicius Oliveira', 'vinisanoli@gmail.com', 'vinizad4321', 'ADM', null, '123456789', 'Rua A, 123', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('David Borges Sousa', 'davidborges159@gmail.com', 'senha789', 'ADM', null, '121212121', 'Avenida W, 2020', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Gilmar Wellington Viana de Sousa', 'gil@example.com', 'admin123', 'ADM', null, '999999999', 'Avenida AF, 2929', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('João Pedro Arcanjos', 'joão@example.com', 'senha456', 'ADM', null, '222222222', 'Rua AG, 3030', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Pablo Henrique Alves Peixoto', 'pablo@example.com', 'senha789', 'ADM', null, '444444444', 'Avenida AH, 3131', 'ATIVO');
--ADM

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Larissa Costa', 'larissa@example.com', 'tec123', 'USER', null, '555555555', 'Avenida I, 606', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Ricardo Santos', 'ricardo@example.com', 'senha789', 'USER', null, '777777777', 'Rua J, 707', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Pedro Oliveira', 'pedro@example.com', 'tec123', 'USER', null, '222222222', 'Rua L, 909', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Amanda Santos', 'amanda@example.com', 'senha789', 'USER', null, '444444444', 'Avenida M, 1010', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Mariana Almeida', 'mariana@example.com', 'tec123', 'USER', null, '141414141', 'Rua X, 2121', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Lucas Oliveira', 'lucas@example.com', 'senha456', 'USER', null, '161616161', 'Avenida Y, 2222', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Pedro Alves', 'pedro@example.com', 'tec789', 'USER', null, '181818181', 'Rua Z, 2323', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Amanda Almeida', 'amanda@example.com', 'tec123', 'USER', null, '202020202', 'Avenida AA, 2424', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Ricardo Alves', 'ricardo@example.com', 'senha456', 'USER', null, '222222222', 'Rua AB, 2525', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Isabela Rodrigues', 'isabela@example.com', 'tec123', 'USER', null, '666666666', 'Rua AI, 3232', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Pedro Santos', 'pedro@example.com', 'tec789', 'USER', null, '888888888', 'Avenida AJ, 3333', 'ATIVO');

INSERT INTO Usuario (nome, email, senha, nivelAcesso, foto, telefone, endereço, statusUsuario)
VALUES ('Mariana Alves', 'mariana@example.com', 'senha123', 'USER', null, '101010101', 'Rua AK, 3434', 'ATIVO');
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


INSERT INTO Consulta (id_Usuario, id_Horario, dataConsulta, statusConsulta)
VALUES (22, 3, '2023-11-23', 'ATIVO');

-- Consultas agendadas
INSERT INTO Consulta (id_Usuario, id_Horario, dataConsulta, statusConsulta)
VALUES (1, 1, '2023-11-24', 'ATIVO');

INSERT INTO Consulta (id_Usuario, id_Horario, dataConsulta, statusConsulta)
VALUES (3, 2, '2023-11-25', 'ATIVO');

-- Consultas canceladas
INSERT INTO Consulta (id_Usuario, id_Horario, dataConsulta, statusConsulta)
VALUES (2, 1, '2023-11-26', 'CANCELADO');

INSERT INTO Consulta (id_Usuario, id_Horario, dataConsulta, statusConsulta)
VALUES (4, 3, '2023-11-27', 'CANCELADO');


DELETE u1
FROM Usuario u1
INNER JOIN Usuario u2 ON u1.email = u2.email
WHERE u1.id > u2.id;

UPDATE Usuario set senha = '123' where id=1
select * from Usuario
select * from Categoria
select * from Consulta
select * from Horario
