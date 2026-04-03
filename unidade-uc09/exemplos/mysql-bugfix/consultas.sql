-- Resumo rapido do projeto MySQL com erros intencionais
-- Projeto completo em:
-- 1) 01-schema-com-erros.sql
-- 2) 02-queries-com-erros.sql

USE helpdesk_senac;

-- Consulta A (com erro): deveria listar chamados pendentes
SELECT id_chamado, titulo, status
FROM chamados
WHERE status = 'fechada';

-- Consulta B (com erro): calculo de tempo medio invertido
SELECT AVG(DATEDIFF(aberto_em, fechado_em)) AS media_dias_resolucao
FROM chamados
WHERE status = 'fechada';

-- Desafio ao aluno:
-- 1. Localizar os 10 erros descritos no README do mysql-bugfix.
-- 2. Corrigir schema e consultas.
-- 3. Validar os resultados com testes de dados.
