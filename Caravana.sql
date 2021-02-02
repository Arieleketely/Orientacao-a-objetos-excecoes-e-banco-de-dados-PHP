-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE login (
senha VARCHAR(255),
usuario VARCHAR(255)
);

CREATE TABLE pessoa (
nome VARCHAR(255),
telefone VARCHAR(255),
idpessoa INTEGER PRIMARY KEY
);

CREATE TABLE evento (
data DATE,
nome VARCHAR(255),
idevento INTEGER PRIMARY KEY
);

CREATE TABLE caravana (
quantp INTEGER,
idcaravana INTEGER PRIMARY KEY,
idpessoa INTEGER,
idevento INTEGER,
idcoordenador INTEGER,
idcidade INTEGER,
FOREIGN KEY(idpessoa) REFERENCES pessoa (idpessoa),
FOREIGN KEY(idevento) REFERENCES evento (idevento)
);

CREATE TABLE coordenador (
telefone VARCHAR(255),
nome VARCHAR(255),
idcoordenador INTEGER PRIMARY KEY
);

CREATE TABLE cidade (
idcidade INTEGER PRIMARY KEY,
nome VARCHAR(255)
);

ALTER TABLE caravana ADD FOREIGN KEY(idcoordenador) REFERENCES coordenador (idcoordenador);
ALTER TABLE caravana ADD FOREIGN KEY(idcidade) REFERENCES cidade (idcidade)