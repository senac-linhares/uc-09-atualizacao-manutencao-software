# Aula 02 – Falhas, Erros e Defeitos: Como as Empresas de Software Lidam com Problemas

---

## 🎯 Objetivo do Conteúdo

- Entender o que são **falhas**, **erros** e **defeitos** em sistemas de software.
- Aprender como esses problemas aparecem no dia a dia das empresas.
- Conhecer ferramentas e processos para identificar, registrar e controlar defeitos.
- Praticar o uso do **GitHub** para organizar o controle de defeitos.

---

## 🧩 Explicação Simples

### O que são Falhas, Erros e Defeitos?

- **Erro (Error):** É quando alguém faz algo errado durante o desenvolvimento. Pode ser um erro de digitação, lógica ou até de entendimento do problema.
  - Exemplo: Escrever `if (idade > 18)` quando o certo era `if (idade >= 18)`.

- **Defeito (Defect/Bug):** É o resultado do erro no código ou no sistema. O defeito está lá, mas pode não causar problema imediatamente.
  - Exemplo: O sistema deixa um usuário de 18 anos fora de uma promoção por causa do erro acima.

- **Falha (Failure):** É quando o defeito realmente causa um problema durante o uso do sistema.
  - Exemplo: Um cliente de 18 anos tenta se cadastrar e não consegue o desconto prometido.

> **Resumo:**  
> **Erro** → **Defeito** → **Falha**  
> (O erro gera um defeito, que pode causar uma falha quando o sistema é usado.)

---

## 💡 Exemplo Prático do Dia a Dia

Imagine um aplicativo de delivery:

1. **Erro:** O programador esquece de considerar o horário de verão ao calcular o tempo de entrega.
2. **Defeito:** O código calcula o tempo de entrega errado em algumas datas.
3. **Falha:** No dia do início do horário de verão, vários pedidos chegam atrasados e clientes reclamam.

---

## 🖼️ Sugestão Visual

### Fluxograma: Como um erro vira falha

![Fluxograma Erro-Defeito-Falha](https://raw.githubusercontent.com/weltonfelix/imagens-publicas/main/fluxo-erro-defeito-falha.png)

*Se preferir, desenhe no quadro ou use ferramentas como [draw.io](https://app.diagrams.net/).* 

---

## 🛠️ Ferramentas para Identificar e Gerenciar Problemas

### 1. **GitHub Issues**
- Permite registrar, descrever e acompanhar defeitos (bugs).
- Usa **labels** (etiquetas) para organizar (ex: bug, urgente, melhoria).
- Pode ser integrado com projetos (Kanban) para visualizar o andamento.

![Exemplo real de GitHub Issue](https://docs.github.com/assets/cb-20363/images/help/issues/new-issue-form.png)
*Exemplo real de formulário de Issue no GitHub*

### 2. **Sentry / Bugsnag**
- Ferramentas que monitoram sistemas em tempo real.
- Avisam automaticamente quando um erro acontece.
- Mostram detalhes técnicos para ajudar a corrigir rápido.

![Dashboard do Sentry mostrando erros em tempo real](https://sentry-brand.storage.googleapis.com/sentry-home-spot-404.C766tHib.webp)
*Dashboard do Sentry mostrando erros em tempo real*

![Exemplo de alerta de erro no Sentry](https://sentry-brand.storage.googleapis.com/getting-started-img-left.CRIbD4_5.webp)
*Exemplo de alerta de erro no Sentry*

*Para Bugsnag, veja exemplos em: [Bugsnag Gallery](https://www.bugsnag.com/product/error-monitoring)*

### 3. **Quadros Kanban (GitHub Projects, Trello)**
- Visualizam o fluxo dos defeitos: **A Fazer → Em Progresso → Resolvido**.

![Exemplo de quadro Kanban no GitHub Projects](https://docs.github.com/assets/cb-20363/images/help/projects/projects-board.png)
*Exemplo real de quadro Kanban no GitHub Projects*

*Se não tiver acesso ao GitHub Projects, pode usar ferramentas livres como [Trello](https://trello.com/), [draw.io](https://app.diagrams.net/) ou até post-its no quadro físico.*

---

## 🗂️ Como Organizar o Controle de Defeitos no GitHub

1. **Criar uma Issue**
   - Clique em "Issues" e depois em "New Issue".
   - Dê um título claro e descreva o problema.
   - Exemplo: `Erro ao calcular desconto para usuários de 18 anos`.
   
   ![Criando uma Issue no GitHub](https://docs.github.com/assets/cb-33224/images/help/issues/new-issue-button.png)
   *Botão para criar uma nova Issue no GitHub*

2. **Adicionar Labels**
   - Use etiquetas como `bug`, `urgente`, `frontend`, etc.
   
   ![Adicionando labels em uma Issue](https://docs.github.com/assets/cb-33224/images/help/issues/issue-labels.png)
   *Adicionando labels em uma Issue*

3. **Atribuir Responsáveis**
   - Marque quem vai resolver o problema.
   
   ![Atribuindo responsável na Issue](https://docs.github.com/assets/cb-33224/images/help/issues/issue-assignees.png)
   *Atribuindo responsável na Issue*

4. **Usar Projetos**
   - Adicione a issue a um quadro Kanban para acompanhar o progresso.
   
   ![Adicionando Issue ao Project Board](https://docs.github.com/assets/cb-20363/images/help/projects/projects-add-card.png)
   *Adicionando Issue ao Project Board*

5. **Fechar a Issue**
   - Quando corrigido, feche a issue e, se possível, explique como foi resolvido.
   
   ![Fechando uma Issue](https://docs.github.com/assets/cb-20363/images/help/issues/close-issue-button.png)
   *Fechando uma Issue*

---

## 📝 Exercício Prático

1. **Em duplas:**  
   - Pensem em um erro comum que pode acontecer em um sistema (ex: senha fraca aceita, cálculo errado, etc).
   - Descrevam o erro, o defeito e a falha que pode acontecer.
   - Criem uma issue fictícia no GitHub (pode ser só no papel ou em um repositório de teste), preenchendo:
     - Título
     - Descrição
     - Labels sugeridas

2. **Bônus:**  
   - Montem um mini-quadro Kanban (pode ser no papel) mostrando o fluxo da issue.

---

## 🏁 Resumo Final

- **Erro** é o engano do programador.
- **Defeito** é o problema no código.
- **Falha** é quando o usuário sente o problema.
- Empresas usam ferramentas como **GitHub Issues**, **Sentry** e **Bugsnag** para identificar e controlar defeitos.
- Organizar o processo ajuda a resolver problemas mais rápido e evitar que eles se repitam.

---

> **Dica:**  
> Sempre que encontrar um problema, registre! Isso ajuda toda a equipe a entender, priorizar e resolver juntos. 🚀

---
