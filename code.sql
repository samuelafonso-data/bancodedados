-- Ativar chave estrangeira
PRAGMA foreign_keys = ON;

-- Limpar tabelas se já existirem
DROP TABLE IF EXISTS VEICULOS_MULTAVEIS;
DROP TABLE IF EXISTS VEICULOS_DETRAN;

-- Tabela principal
CREATE TABLE VEICULOS_DETRAN (
    placa TEXT PRIMARY KEY,
    renavam TEXT,
    nome_proprietario TEXT,
    cpf_proprietario TEXT,
    situacao TEXT
);

-- Tabela dependente (1:N)
CREATE TABLE VEICULOS_MULTAVEIS (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    placa TEXT,
    renavam TEXT,
    modelo TEXT,
    marca TEXT,
    ano INTEGER,
    cpf_proprietario TEXT,
    FOREIGN KEY (placa) REFERENCES VEICULOS_DETRAN(placa)
);

INSERT INTO VEICULOS_MULTAVEIS (placa) VALUES ('ZZZ9999');