## 🐛 [BUG] Título claro e objetivo do problema

> **Dica:** Use o formato `[BUG] O que está errado + onde acontece`.
> Exemplo: `[BUG] Botão de login não responde ao clicar na página inicial`

---

### 📋 Descrição do Problema

> Descreva **o que está acontecendo** de forma clara e objetiva. Inclua o impacto que esse bug causa ao usuário ou ao negócio.

**O que acontece:**
<!-- Ex: Ao clicar no botão "Salvar", a página recarrega sem salvar os dados. -->

**Impacto:**
<!-- Ex: O usuário perde todas as informações preenchidas no formulário. -->

---

### 🔁 Passos para Reproduzir

> Liste **todos os passos** necessários para que qualquer pessoa consiga reproduzir o bug. Seja específico!

1. Acesse a página `[URL ou nome da tela]`
2. Preencha o campo `[nome do campo]` com `[valor usado]`
3. Clique no botão `[nome do botão]`
4. Observe que `[o que acontece de errado]`

---

### ✅ Comportamento Esperado

> Descreva o que **deveria acontecer** corretamente após os passos acima.

<!-- Ex: Os dados deveriam ser salvos e o usuário redirecionado para a tela de confirmação. -->

---

### ❌ Comportamento Atual

> Descreva exatamente o que **está acontecendo** de errado.

<!-- Ex: A página recarrega e exibe uma tela em branco, sem mensagem de erro. -->

---

### 📸 Evidências

> Anexe prints, vídeos, logs ou mensagens de erro que ajudem a entender o problema.

- [ ] Print da tela com o erro
- [ ] Mensagem de erro exibida ao usuário
- [ ] Log do console do navegador (F12 → Console)
- [ ] Log do servidor / terminal

```
[Cole aqui qualquer mensagem de erro ou log relevante]
```

---

### 🌍 Ambiente

> Em qual ambiente o bug foi encontrado?

| Campo            | Valor                              |
|------------------|------------------------------------|
| Ambiente         | `[ ] Desenvolvimento [ ] Homologação [ ] Produção` |
| Sistema Operacional | Ex: Windows 11 / macOS 14 / Ubuntu 22 |
| Navegador        | Ex: Chrome 123 / Firefox 115       |
| Versão do Sistema | Ex: v1.2.3 / commit `abc1234`      |
| Dispositivo      | Ex: Desktop / Mobile / Tablet      |

---

### 🎯 Critérios de Aceite (Definition of Done)

> O bug estará **resolvido** quando:

- [ ] O comportamento esperado descrito acima for atingido
- [ ] Nenhum outro fluxo for quebrado pela correção
- [ ] O fix tiver sido testado no ambiente de homologação
- [ ] O revisor tiver aprovado o Pull Request

---

### 🚨 Prioridade

> Qual a urgência desse bug?

- [ ] 🟢 **Baixa** — Pequeno inconveniente, não impede o uso do sistema
- [ ] 🟡 **Média** — Afeta parte do fluxo, mas há um caminho alternativo
- [ ] 🔴 **Alta** — Bloqueia funcionalidade importante para o usuário
- [ ] 🚒 **Crítica** — Sistema fora do ar ou perda de dados em produção

---

### 🏷️ Labels Sugeridas

> Marque as labels que se aplicam a este bug:

- [ ] `bug`
- [ ] `front-end`
- [ ] `back-end`
- [ ] `banco-de-dados`
- [ ] `regressão`
- [ ] `ux/ui`
- [ ] `segurança`

---

### 📝 Informações Adicionais

> Alguma hipótese de causa? Contexto extra? Relacionado a alguma issue ou PR?

<!-- Ex: O bug passou a ocorrer após o merge do PR #42. -->
<!-- Ex: Suspeito que o problema esteja na função `salvarDados()` do arquivo `form.js`. -->
