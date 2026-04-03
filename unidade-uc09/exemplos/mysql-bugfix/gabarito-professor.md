# Gabarito do Professor — MySQL Bug Fix

## Visão geral
Este gabarito descreve os 10 erros esperados, o impacto e uma correção de referência.

## Erros esperados e correções

1. Erro: valor `Mdeia` no `ENUM` de prioridade.
Impacto: valor inconsistente, regras de negócio quebradas.
Correção:
```sql
prioridade ENUM('Baixa', 'Media', 'Alta', 'Critica') NOT NULL
```

2. Erro: `telefone` como `INT`.
Impacto: perda de zeros à esquerda e limitação de formato.
Correção:
```sql
telefone VARCHAR(20) NOT NULL
```

3. Erro: `email` sem `UNIQUE`.
Impacto: cadastro duplicado para mesmo e-mail.
Correção:
```sql
email VARCHAR(120) NOT NULL UNIQUE
```

4. Erro: `id_cliente` sem `AUTO_INCREMENT`.
Impacto: controle manual de ID e risco de colisão.
Correção:
```sql
id_cliente INT AUTO_INCREMENT PRIMARY KEY
```

5. Erro: `DEFAULT 'aberto'` fora dos valores do enum.
Impacto: falha de inserção padrão.
Correção:
```sql
status ENUM('aberta', 'em_andamento', 'fechada') NOT NULL DEFAULT 'aberta'
```

6. Erro: `aberto_em` com `VARCHAR(30)`.
Impacto: ordenação e cálculos de data comprometidos.
Correção:
```sql
aberto_em DATETIME NOT NULL
```

7. Erro: FK `id_cliente` apontando para `tecnicos`.
Impacto: integridade referencial incorreta.
Correção:
```sql
CONSTRAINT fk_chamado_cliente
  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
```

8. Erro: `DELETE FROM chamados;` sem `WHERE`.
Impacto: perda total dos dados da tabela.
Correção segura:
```sql
DELETE FROM chamados
WHERE status = 'fechada' AND fechado_em < '2026-01-01';
```

9. Erro: query de pendentes filtrando `status = 'fechada'`.
Impacto: relatório operacional incorreto.
Correção:
```sql
SELECT id_chamado, titulo, status
FROM chamados
WHERE status IN ('aberta', 'em_andamento');
```

10. Erro: `DATEDIFF(aberto_em, fechado_em)` invertido.
Impacto: média de resolução negativa.
Correção:
```sql
SELECT AVG(TIMESTAMPDIFF(HOUR, aberto_em, fechado_em)) AS media_horas_resolucao
FROM chamados
WHERE status = 'fechada' AND fechado_em IS NOT NULL;
```

## Script de referência corrigido (resumo)
```sql
DROP DATABASE IF EXISTS helpdesk_senac;
CREATE DATABASE helpdesk_senac;
USE helpdesk_senac;

CREATE TABLE clientes (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(120) NOT NULL,
  email VARCHAR(120) NOT NULL UNIQUE,
  telefone VARCHAR(20) NOT NULL,
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
  prioridade ENUM('Baixa', 'Media', 'Alta', 'Critica') NOT NULL,
  status ENUM('aberta', 'em_andamento', 'fechada') NOT NULL DEFAULT 'aberta',
  aberto_em DATETIME NOT NULL,
  fechado_em DATETIME NULL,
  CONSTRAINT fk_chamado_cliente FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
  CONSTRAINT fk_chamado_tecnico FOREIGN KEY (id_tecnico) REFERENCES tecnicos(id_tecnico)
);
```

## Verificação sugerida pelo professor
1. Rodar o schema corrigido sem erro.
2. Inserir dados de teste.
3. Executar consultas de pendentes e média de resolução.
4. Validar se não existem e-mails duplicados.
5. Confirmar integridade entre `chamados` e `clientes`.
