-- Script de insert para o banco de chamados
-- Contém erros que o aluno deve identificar e corrigir

USE chamados_db;

-- 1. Populando setores
INSERT INTO setores (setor_id, nome) VALUES (1, 'Tecnologia da Informação');
INSERT INTO setores (setor_id, nome) VALUES (2, 'Recursos Humanos');
INSERT INTO setores (setor_id, nome) VALUES (2, 'Financeiro');

-- 2. Populando cargos
INSERT INTO cargos (nome) VALUES ('Analista de Sistemas');
INSERT INTO cargos (nome) VALUES ('Gerente de Operações');

-- 3. Populando prioridades e status
INSERT INTO prioridades (nivel) VALUES ('Baixo'), ('Médio'), ('Crítico');
INSERT INTO status (descricao) VALUES ('Aberto'), ('Em Atendimento'), ('Encerrado');

-- 4. Tentando inserir um chamado antes do usuário (violación FK)
INSERT INTO chamados (titulo, descricao, usuario_id, categoria_id, prioridade_id, status_id)
VALUES ('Problema Impressora', 'Não liga', 999, 1, 3, 1);

-- 5. Populando usuários coloque seus dados reais.
INSERT INTO usuarios (nome, email, setor_id, cargo_id) VALUES ('José Silva', 'jose@empresa.com', 1, 1);
INSERT INTO usuarios (nome, email, setor_id, cargo_id) VALUES ('Maria Fernandes', 'maria@empresa.com', 2, 2);

-- 6. Erro de tipo de dados
INSERT INTO chamados (titulo, descricao, usuario_id, categoria_id, prioridade_id, status_id)
VALUES ('Sistema Lento', 'Lentidão no ERP', 1, 1, 'MUITO ALTA', 1);

-- 7. Erro de formato de data
INSERT INTO mensagens (chamado_id, usuario_id, texto, enviado_em)
VALUES (1, 2, 'Verificando a conexão...', '25/12/2026 14:00:00');

-- 8. Mais categorias
INSERT INTO categorias (descricao) VALUES ('Rede'), ('Software'), ('Instalações');

-- 9. Tentando usar status que não existe
INSERT INTO chamados (titulo, descricao, usuario_id, categoria_id, prioridade_id, status_id)
VALUES ('Troca de mouse', 'Mouse com fio ruim', 1, 3, 1, 15);
