# Atividade Desafio — Manutenção de Banco MySQL

## Cenário
Você faz parte da equipe de manutenção do sistema **HelpDesk SENAC**.
Depois de uma atualização, surgiram falhas no banco de dados e nas consultas.

Sua missão é corrigir o ambiente para que ele volte a funcionar com segurança.

## Objetivo da atividade
Identificar e corrigir até 10 erros em:
- script de criação do banco;
- tipos de dados e constraints;
- consultas SQL de manutenção e análise.

## Arquivos-base
1. `01-schema-com-erros.sql`
2. `02-queries-com-erros.sql`
3. `consultas.sql`

## Regras
- Não apagar o projeto e reescrever do zero.
- Corrigir os problemas mantendo a estrutura original do domínio (clientes, técnicos e chamados).
- Registrar as alterações em commits claros.
- Entregar evidências de teste das queries corrigidas.

## Tarefas
1. Execute o schema e identifique erros de modelagem.
2. Corrija problemas de tipo de dados e relacionamento.
3. Rode os inserts e trate inconsistências.
4. Corrija consultas perigosas ou com lógica incorreta.
5. Gere um pequeno relatório com:
- erro encontrado;
- impacto em produção;
- correção aplicada.

## Dicas (sem spoiler da resposta)
- Verifique se o tipo da coluna suporta o dado real.
- Confira se valores padrão pertencem ao `ENUM`.
- Analise para onde cada chave estrangeira aponta.
- Cuidado com comandos destrutivos sem filtro.
- Revise expressões de cálculo de datas.

## Entregáveis do aluno
1. Scripts corrigidos (`schema` e `queries`).
2. Arquivo `relatorio-correcao.md` com 10 itens.
3. Histórico de commits com mensagens objetivas.

## Critérios de avaliação
- Correção técnica dos erros: 40%
- Segurança da solução (sem riscos de perda de dados): 25%
- Clareza do relatório: 20%
- Boas práticas de versionamento: 15%

## Tempo sugerido
- 30 min: análise inicial dos scripts
- 60 min: correções e validações
- 30 min: relatório e revisão final
