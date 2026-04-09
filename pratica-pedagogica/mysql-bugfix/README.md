# Atividade de Bugfix: Banco de Dados MySQL

Nesta atividade, você encontrará scripts SQL para um sistema de abertura de chamados. O sistema possui 10 tabelas e permite gerenciar usuários, categorias de chamados, prioridades, equipamentos e logs de auditoria.

## Objetivos
1. **Corrigir os Erros de Criação**: Execute o arquivo `01-criar-banco-com-erros.sql` e encontre os erros que impedem a criação do banco de dados e suas tabelas (há pelo menos 5 erros de digitação e sintaxe).
2. **Corrigir os Erros de Inserção**: Após criar o banco, tente executar `02-inserir-dados-com-erros.sql`. Você encontrará problemas como violação de chaves estrangeiras, tipos de dados incompatíveis e formatos de data incorretos (há pelo menos 5 erros deste tipo).

## Arquivos Disponíveis
- `01-criar-banco-com-erros.sql`: Script de estrutura com erros.
- `01-criar-banco-corrigido.sql`: Gabarito do script de estrutura.
- `02-inserir-dados-com-erros.sql`: Script de dados com erros.
- `02-inserir-dados-corrigidos.sql`: Gabarito do script de dados.

## Instruções para o Aluno
- Analise as mensagens de erro retornadas pelo MySQL.
- Corrija uma falha por vez até que o script execute por completo.
- Observe as dependências entre as tabelas (Chaves Estrangeiras).
