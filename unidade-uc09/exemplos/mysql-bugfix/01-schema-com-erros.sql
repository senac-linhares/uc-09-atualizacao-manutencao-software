-- Projeto: HelpDesk SENAC
-- Arquivo com erros intencionais para atividade de manutenção

DROP DATABASE IF EXISTS helpdesk_senac;
CREATE DATABASE helpdesk_senac;
USE helpdesk_senac;

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY, -- ERRO 4: faltou AUTO_INCREMENT
    nome VARCHAR(120) NOT NULL,
    email VARCHAR(120) NOT NULL, -- ERRO 3: deveria ter UNIQUE
    telefone INT NOT NULL, -- ERRO 2: INT nao e adequado para telefone
    criado_em DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tecnicos (
    id_tecnico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    especialidade VARCHAR(80) NOT NULL,
    ativo TINYINT(1) NOT NULL DEFAULT 1
);

CREATE TABLE chamados (
    id_chamado INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_tecnico INT,
    titulo VARCHAR(150) NOT NULL,
    descricao TEXT,
    prioridade ENUM('Baixa', 'Mdeia', 'Alta', 'Critica') NOT NULL, -- ERRO 1: Mdeia
    status ENUM('aberta', 'em_andamento', 'fechada') NOT NULL DEFAULT 'aberto', -- ERRO 5
    aberto_em VARCHAR(30) NOT NULL, -- ERRO 6: deveria ser DATETIME
    fechado_em DATETIME NULL,
    CONSTRAINT fk_chamado_cliente
        FOREIGN KEY (id_cliente) REFERENCES tecnicos(id_tecnico), -- ERRO 7
    CONSTRAINT fk_chamado_tecnico
        FOREIGN KEY (id_tecnico) REFERENCES tecnicos(id_tecnico)
);
