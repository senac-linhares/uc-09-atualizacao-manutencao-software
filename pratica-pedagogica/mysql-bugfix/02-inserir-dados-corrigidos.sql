-- Gabarito para o professor: script de inserção de dados (corrigido)

USE chamados_db;

-- 1. Populando setores
INSERT INTO setores (nome) VALUES ('Tecnologia da Informação');
INSERT INTO setores (nome) VALUES ('Recursos Humanos');
INSERT INTO setores (nome) VALUES ('Financeiro');

-- 2. Populando cargos
INSERT INTO cargos (nome) VALUES ('Analista de Sistemas');
INSERT INTO cargos (nome) VALUES ('Gerente de Operações');

-- 3. Populando prioridades e status
INSERT INTO prioridades (nivel) VALUES ('Baixo'), ('Médio'), ('Crítico');
INSERT INTO status (descricao) VALUES ('Aberto'), ('Em Atendimento'), ('Encerrado');

-- 4. Populando categorias
INSERT INTO categorias (descricao) VALUES ('Hardware'), ('Software'), ('Instalações'), ('Rede');

-- 5. Populando usuários
INSERT INTO usuarios (nome, email, setor_id, cargo_id) VALUES ('José Silva', 'jose@empresa.com', 1, 1);
INSERT INTO usuarios (nome, email, setor_id, cargo_id) VALUES ('Maria Fernandes', 'maria@empresa.com', 2, 2);

-- 6. Populando chamados (CORRETO: ids que existem)
INSERT INTO chamados (titulo, descricao, usuario_id, categoria_id, prioridade_id, status_id)
VALUES ('Problema Impressora', 'Não liga', 1, 1, 3, 1);

INSERT INTO chamados (titulo, descricao, usuario_id, categoria_id, prioridade_id, status_id)
VALUES ('Sistema Lento', 'Lentidão no ERP', 1, 2, 2, 1);

INSERT INTO chamados (titulo, descricao, usuario_id, categoria_id, prioridade_id, status_id)
VALUES ('Troca de mouse', 'Mouse com fio ruim', 2, 3, 1, 1);

-- 7. Populando mensagens (CORRETO: formato YYYY-MM-DD HH:MM:SS)
INSERT INTO mensagens (chamado_id, usuario_id, texto, enviado_em)
VALUES (1, 1, 'Iniciando atendimento...', '2026-12-25 14:00:00');

-- 8. Populando equipamentos
INSERT INTO equipamentos (patrimonio, tipo, usuario_id) VALUES ('CP-100', 'Computador Portátil', 1);
INSERT INTO equipamentos (patrimonio, tipo, usuario_id) VALUES ('MON-05', 'Monitor 24', 2);

-- 9. Populando audit logs
INSERT INTO logs_auditoria (tabela_nome, acao, usuario_id) 
VALUES ('chamados', 'Inclusão', 1);
