-- Projeto: HelpDesk SENAC
-- Queries com erros intencionais para manutencao
USE helpdesk_senac;

INSERT INTO clientes (id_cliente, nome, email, telefone)
VALUES
(1, 'Ana Silva', 'ana@empresa.com', 27999990001),
(2, 'Bruno Rocha', 'bruno@empresa.com', 27988887777),
(3, 'Ana Clone', 'ana@empresa.com', 27911112222);

INSERT INTO tecnicos (nome, especialidade)
VALUES
('Carlos Lima', 'Banco de Dados'),
('Marina Costa', 'API C#');

INSERT INTO chamados (
    id_cliente, id_tecnico, titulo, descricao, prioridade, status, aberto_em, fechado_em
)
VALUES
(1, 1, 'Erro no login', 'Usuario nao autentica no sistema', 'Alta', 'em_andamento', '2026-04-01 08:30:00', NULL),
(2, 2, 'API lenta', 'Tempo de resposta acima de 5s', 'Critica', 'fechada', '2026-04-01 09:00:00', '2026-04-01 12:30:00'),
(3, 1, 'Tela travando', 'Front-end congela ao salvar', 'Baixa', 'aberta', '2026-04-02 10:00:00', NULL);

-- ERRO 8: DELETE sem WHERE (apaga todos os chamados)
DELETE FROM chamados;

-- ERRO 9: deveria listar pendentes, mas filtra fechados
SELECT id_chamado, titulo, status
FROM chamados
WHERE status = 'fechada';

-- ERRO 10: DATEDIFF invertido gera valor negativo no tempo medio
SELECT AVG(DATEDIFF(aberto_em, fechado_em)) AS media_dias_resolucao
FROM chamados
WHERE status = 'fechada';
