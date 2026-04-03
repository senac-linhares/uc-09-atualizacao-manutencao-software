# Conceitos fundamentais da UC09

## 🛠️ O que é manutenção de software?
É o conjunto de ações realizadas **depois que o sistema já está em uso**, com o objetivo de corrigir problemas, adaptar o sistema, melhorar o desempenho ou prevenir falhas.

## Tipos de manutenção

| Tipo | Significado | Exemplo |
|---|---|---|
| Corretiva | Corrige defeitos já identificados | ajuste em cálculo com erro |
| Adaptativa | Ajusta o sistema a novas regras | mudança em lei ou API |
| Perfectiva | Melhora desempenho ou usabilidade | tela mais rápida e clara |
| Preventiva | Evita problemas futuros | refatoração e testes |

## Termos importantes

| Termo | Explicação simples |
|---|---|
| Falha | quando o sistema apresenta comportamento inesperado |
| Erro | engano humano no desenvolvimento ou operação |
| Defeito | problema existente no código ou no projeto |
| Incidente | ocorrência reportada por usuário ou monitoramento |
| Log | registro de eventos do sistema |
| Métrica | número usado para acompanhar a saúde da aplicação |
| SLA | tempo combinado para responder ou resolver um problema |
| Rollback | retorno para uma versão anterior estável |
| Deploy | publicação de uma nova versão |

## Fluxo básico de manutenção
1. Identificar o problema.
2. Reproduzir o erro.
3. Analisar causa raiz.
4. Corrigir com segurança.
5. Testar.
6. Versionar e documentar.
7. Monitorar após o deploy.

## Boas práticas
- registrar evidências do problema;
- não corrigir sem entender a causa;
- testar antes e depois da alteração;
- manter histórico com `commit` claro e revisável;
- comunicar impacto, risco e resultado.
