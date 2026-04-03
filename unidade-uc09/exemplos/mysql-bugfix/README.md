# Projeto MySQL Bug Fix — HelpDesk SENAC

## Contexto do projeto
Este mini projeto simula um sistema de **atendimento técnico (HelpDesk)** com abertura de chamados, técnicos e clientes.

A equipe recebeu scripts com problemas em produção e precisa identificar e corrigir os erros.

## Objetivo pedagógico
Praticar manutenção de banco de dados em cenário realista, cobrindo:
- script de criação com falhas;
- modelagem com tipos de dados inadequados;
- constraints incorretas;
- queries mal montadas.

## Arquivos
- `01-schema-com-erros.sql`: criação do banco e tabelas com erros.
- `02-queries-com-erros.sql`: inserts e consultas com erros.
- `consultas.sql`: lista resumida para atividade rápida.
- `atividade-desafio.md`: versão para aplicar com os alunos.
- `gabarito-professor.md`: versão com respostas e correções esperadas.

## Lista dos 10 erros intencionais
1. `ENUM` da prioridade com valor digitado errado (`'Mdeia'`).
2. coluna `telefone` com tipo `INT` (perde zeros e formatação).
3. coluna `email` sem `UNIQUE` (permite duplicidade indevida).
4. coluna `id_cliente` sem `AUTO_INCREMENT`.
5. coluna `status` com valor padrão inválido (`'aberto'` não existe no enum).
6. coluna `aberto_em` usando `VARCHAR(30)` em vez de data/hora.
7. FK de `chamados.id_cliente` apontando para `tecnicos(id_tecnico)`.
8. `DELETE` sem `WHERE` em query de manutenção.
9. filtro de chamados pendentes usando `status = 'fechado'`.
10. cálculo de tempo médio de resolução com `DATEDIFF` invertido.

## Desafio ao aluno
1. Rodar os scripts e identificar os erros.
2. Corrigir estrutura e consultas.
3. Documentar cada correção (causa + impacto).
4. Registrar em commits objetivos.
