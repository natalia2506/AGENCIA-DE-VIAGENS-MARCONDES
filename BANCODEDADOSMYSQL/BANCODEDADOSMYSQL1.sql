use mviagens;

CREATE TABLE Cliente (
    id_cliente INTEGER PRIMARY KEY auto_increment,
    nome_cliente VARCHAR(30),
    nomesocial_cliente VARCHAR(30),
    idade_cliente INTEGER,
    identidade_cliente VARCHAR(11),
    cpf_cliente VARCHAR(11),
    telefone_cliente VARCHAR(11),
    endereco_cliente VARCHAR(30),
    email_cliente VARCHAR(30)
);

CREATE TABLE realiza (
    id_viagem INTEGER,
    id_cliente INTEGER
);
 
ALTER TABLE realiza ADD CONSTRAINT FK_realiza_1
    FOREIGN KEY (id_viagem)
    REFERENCES Viagem (id_viagem)
    ON DELETE RESTRICT;
 
ALTER TABLE realiza ADD CONSTRAINT FK_realiza_2
    FOREIGN KEY (id_cliente)
    REFERENCES Cliente (id_cliente)
    ON DELETE RESTRICT;

CREATE TABLE Viagem (
    id_viagem INTEGER PRIMARY KEY auto_increment,
    data_ida VARCHAR(11),
    data_volta VARCHAR(11),
    preco DECIMAL(5,2),
    id_origem INTEGER,
    id_destino INTEGER
);
 
ALTER TABLE Viagem ADD CONSTRAINT FK_Viagem_2
    FOREIGN KEY (id_origem)
    REFERENCES Origem (id_origem)
    ON DELETE CASCADE;
 
ALTER TABLE Viagem ADD CONSTRAINT FK_Viagem_3
    FOREIGN KEY (id_destino)
    REFERENCES Destino (id_destino)
    ON DELETE CASCADE;
    
CREATE TABLE Origem (
    id_origem INTEGER PRIMARY KEY auto_increment,
    nome_origem VARCHAR(30),
    pais_origem VARCHAR(30)
);

CREATE TABLE Destino (
    id_destino INTEGER PRIMARY KEY auto_increment,
    nome_destino VARCHAR(30),
    pais_destino VARCHAR(30)
);

