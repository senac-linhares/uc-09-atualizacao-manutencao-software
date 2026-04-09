-- Gabarito para o professor: script de criação do banco de dados (corrigido)

CREATE DATABASE IF NOT EXISTS chamados_db;

USE chamados_db;

-- 1. setores
CREATE TABLE IF NOT EXISTS setores (
    setor_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- 2. cargos
CREATE TABLE IF NOT EXISTS cargos (
    cargo_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- 3. usuários
CREATE TABLE IF NOT EXISTS usuarios (
    usuario_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    setor_id INT,
    cargo_id INT,
    FOREIGN KEY (setor_id) REFERENCES setores(setor_id),
    FOREIGN KEY (cargo_id) REFERENCES cargos(cargo_id)
);

-- 4. categorias
CREATE TABLE IF NOT EXISTS categorias (
    categoria_id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100)
);

-- 5. prioridades
CREATE TABLE IF NOT EXISTS prioridades (
    prioridade_id INT AUTO_INCREMENT PRIMARY KEY,
    nivel VARCHAR(50) NOT NULL
);

-- 6. status
CREATE TABLE IF NOT EXISTS status (
    status_id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL
);

-- 7. chamados
CREATE TABLE IF NOT EXISTS chamados (
    chamado_id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    descricao TEXT,
    abertura_data DATETIME DEFAULT CURRENT_TIMESTAMP,
    usuario_id INT,
    categoria_id INT,
    prioridade_id INT,
    status_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
    FOREIGN KEY (categoria_id) REFERENCES categorias(categoria_id),
    FOREIGN KEY (prioridade_id) REFERENCES prioridades(prioridade_id),
    FOREIGN KEY (status_id) REFERENCES status(status_id)
);

-- 8. mensagens
CREATE TABLE IF NOT EXISTS mensagens (
    mensagem_id INT AUTO_INCREMENT PRIMARY KEY,
    chamado_id INT,
    usuario_id INT,
    texto TEXT,
    enviado_em DATETIME,
    FOREIGN KEY (chamado_id) REFERENCES chamados(chamado_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
);

-- 9. equipamentos
CREATE TABLE IF NOT EXISTS equipamentos (
    equip_id INT AUTO_INCREMENT PRIMARY KEY,
    patrimonio VARCHAR(50),
    tipo VARCHAR(100),
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
);

-- 10. logs_auditoria
CREATE TABLE IF NOT EXISTS logs_auditoria (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    tabela_nome VARCHAR(50),
    acao VARCHAR(20),
    data_acao DATETIME DEFAULT CURRENT_TIMESTAMP,
    usuario_id INT
);
