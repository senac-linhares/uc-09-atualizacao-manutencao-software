# Situação de Aprendizagem — Backlog a partir de Ata de Reunião

**Unidade Curricular:** UC-09 — Atualização e Manutenção de Software  
**Milestone do Projeto:** `lp-petshop-v2`  
**Nível:** Técnico em Desenvolvimento de Sistemas  

---

## 📢 Comunicado do Coordenador

> **Para:** Equipe de Desenvolvimento — Turma UC-09  
> **De:** Coordenação do Setor de Projetos Web  
> **Assunto:** Manutenção do site — Pet Shop Patas Felizes  

Pessoal, bom dia.

Conforme combinado na última reunião de equipe, segue abaixo a **ata da reunião realizada entre nossa gerente de projetos, Marina Costa, e o cliente Roberto Abreu**, proprietário do Pet Shop Patas Felizes.

O site foi desenvolvido pelo nosso estagiário João e entregue na semana passada. O cliente já testou e trouxe uma série de pontos de retorno — alguns são problemas que precisam ser corrigidos, outros são pedidos de novas funcionalidades.

**A tarefa de vocês é a seguinte:**

1. Ler com atenção a ata abaixo
2. Identificar cada item relatado e classificar se é um **Bug** ou uma **Feature**
3. Abrir as **Issues** correspondentes no repositório do projeto no GitHub
4. Organizar tudo como um **Backlog** vinculado ao Milestone `lp-petshop-v2`

Usem as **labels** do repositório para separar claramente o que é problema do que é melhoria — isso é fundamental para o gerenciamento correto do projeto. Cada Issue deve ter sua label correta antes de ser incluída no milestone.

Qualquer dúvida, me chamem.

— Coordenação do Setor

---

## 🗒️ Ata de Reunião — Pet Shop Patas Felizes

---

A reunião foi realizada no dia 22 de março de 2024, às 14h, na sala de reuniões 2 da WebCraft Soluções Digitais. Estiveram presentes Roberto Abreu, proprietário do Pet Shop Patas Felizes, Marina Costa, gerente de projetos da WebCraft, e Ana Ferreira, assistente de projetos responsável pelo registro da ata.

Marina abriu a reunião agradecendo a presença do cliente e cedeu a palavra para que ele apresentasse seu retorno sobre o site entregue.

Roberto iniciou dizendo que a primeira coisa que notou foi que o nome do pet shop aparece errado na aba do navegador: aparece escrito "PatasFelizes", tudo junto, sem espaço. O nome correto é "Patas Felizes". Em seguida, comentou que ao ler o texto de apresentação no topo da página, encontrou vários erros de português: a palavra "profissionalismo" foi digitada como "proficionalismo", o trecho "atendemos cãe" está sem o "s", e a palavra "adestradores" aparece incompleta, escrita como "adestradore".

O cliente relatou que o ponto que mais o incomodou foi que, ao abrir o site para mostrar para sua esposa, não aparecia nenhuma imagem: nem a logo, nem a foto grande da seção principal, nem as fotos dos clientes nos depoimentos. Tudo aparecia com o ícone de imagem quebrada, dando a impressão de que o site estava inacabado.

Roberto também chamou atenção para o botão de agendamento de visita: a cor do botão é amarelo claro com letras também amarelas, tornando o texto praticamente ilegível. Sua mãe, de 67 anos, tentou usar o site e não conseguiu enxergar o que estava escrito no botão. De forma semelhante, o texto da seção "Quem Somos" está em cinza muito claro sobre fundo branco, a ponto de o cliente ter achado que o trecho estava em branco quando acessou pela primeira vez.

Outro ponto levantado foi uma inconsistência nas informações de horário de funcionamento: em um trecho da página consta "das 8h às 18h", enquanto em outro trecho aparece "das 9h às 19h". O horário correto é das 9h às 19h. Roberto ressaltou que isso pode causar confusão nos clientes, que podem ligar no horário errado e não serem atendidos.

Sobre os dados de contato, Roberto apontou dois problemas graves: o endereço de e-mail exibido no site está com o domínio errado — aparece ".com.rb" em vez de ".com.br" — o que significa que nenhum e-mail enviado para aquele endereço chega até a empresa. Além disso, o número de telefone exibido é "(48) 0000-0000", que claramente é um número de placeholder que o desenvolvedor esqueceu de substituir pelo número real, que é (48) 3232-4545.

No rodapé, o cliente notou que o ano do copyright está desatualizado: consta "© 2021", dando a impressão de que o site está abandonado há três anos. Roberto também testou pessoalmente o formulário de contato e relatou que, ao preencher todos os campos e clicar em "Enviar", nada acontece — não aparece mensagem de sucesso nem de erro, o formulário simplesmente não responde.

Um ponto que gerou bastante frustração foi a seção de serviços: desde o início do projeto, ficou combinado que haveria uma grade apresentando os serviços do pet shop — banho e tosa, consulta veterinária, hotel para pets, adestramento, loja de produtos e vacinação. No entanto, ao acessar o site, a seção exibe apenas a mensagem "Serviços em breve...", sem nenhum conteúdo real. Marina confirmou que a seção foi planejada desde o início e estava no escopo contratado.

A sobrinha do cliente, ao acessar o site pelo celular, notou que o menu de navegação ficou todo comprimido, com os itens saindo da tela, pois o site não possui um menu hambúrguer para dispositivos móveis. Roberto reforçou que hoje a maioria dos acessos acontece pelo celular e que esse comportamento precisa ser corrigido.

Por fim, Roberto apresentou três pedidos de melhorias. O primeiro é uma galeria de fotos dos pets atendidos, pois os donos adoram ver as fotos dos animais após o banho e a tosa, e isso seria um diferencial para o site. O segundo é um sistema de agendamento online integrado ao site, onde o cliente poderia escolher o serviço, o dia e o horário, sem precisar ligar ou enviar mensagem. O terceiro é um botão flutuante de WhatsApp, aquele botão verde que fica fixo no canto da tela e facilita o contato direto pelo aplicativo.

Marina agradeceu o retorno detalhado e informou que todos os itens seriam organizados pela equipe técnica com prioridades e prazos definidos. Ficou acordado que as correções e melhorias urgentes seriam entregues em até cinco dias úteis, e uma nova reunião foi agendada para 29 de março de 2024 às 14h para apresentação dos resultados.

*Ata registrada por Ana Ferreira — Assistente de Projetos / WebCraft Soluções Digitais.*

---

## 🛠️ Tarefa — Construção do Backlog

### Por onde começar?

Antes de abrir qualquer Issue, certifique-se de que o repositório já possui as **labels** abaixo configuradas. Se não existirem, crie-as:

| Label | Cor sugerida | Quando usar |
|---|---|---|
| `bug` | 🔴 Vermelho `#d73a4a` | Algo que deveria funcionar mas está errado ou quebrado |
| `enhancement` | 🔵 Azul `#a2eeef` | Nova funcionalidade solicitada pelo cliente |
| `accessibility` | 🟣 Roxo `#7057ff` | Problemas que afetam acessibilidade (contraste, alt text, semântica) |
| `content` | 🟡 Amarelo `#e4e669` | Erros de texto, imagem ou dados incorretos |
| `javascript` | 🟠 Laranja `#f9a825` | Problemas relacionados ao comportamento JavaScript |

> **Uma Issue pode ter mais de uma label.** Por exemplo, um botão com texto ilegível pode ser `bug` + `accessibility` ao mesmo tempo.

---

### Milestone

Todas as Issues abertas para este projeto devem ser vinculadas ao Milestone:

```
lp-petshop-v2
```

Crie o Milestone no repositório antes de começar, com a data de entrega correspondente ao combinado com o cliente.

---

### Abrindo as Issues

Para cada item identificado na ata, abra uma Issue seguindo o template disponível em `templates/issue-template.md`. Lembre-se de:

- Usar um **título claro e objetivo**, com o prefixo `[BUG]` ou `[FEATURE]` conforme o tipo
- Preencher a **descrição** explicando o problema e o impacto para o cliente
- Indicar a **prioridade** (baixa, média, alta ou crítica)
- Adicionar as **labels** corretas
- Vincular ao **Milestone** `lp-petshop-v2`

**Exemplos de títulos bem escritos:**

```
[BUG] Formulário de contato não responde ao clicar em Enviar
[BUG] Imagens quebradas em toda a página
[FEATURE] Adicionar botão flutuante de WhatsApp
```

---

### Backlog — Tabela de Controle

Após criar todas as Issues, preencha a tabela abaixo com os números gerados pelo GitHub. Isso será o **backlog do projeto** — a lista de tudo que precisa ser feito, organizada e priorizada.

| Issue # | Título | Tipo | Label(s) | Prioridade | Status |
|---|---|---|---|---|---|
| | | | | | Aberta |
| | | | | | Aberta |
| | | | | | Aberta |
| | | | | | Aberta |
| | | | | | Aberta |
| | | | | | Aberta |
| | | | | | Aberta |
| | | | | | Aberta |
| | | | | | Aberta |
| | | | | | Aberta |
| | | | | | Aberta |
| | | | | | Aberta |
| | | | | | Aberta |
| | | | | | Aberta |
| | | | | | Aberta |

> **Dica:** O GitHub permite exportar Issues e visualizá-las em formato de Projeto (Kanban). Explore essa funcionalidade para organizar o fluxo de trabalho da equipe.

---

## 📚 Conceitos-Chave

| Conceito | Definição |
|---|---|
| **Bug** | Comportamento incorreto em algo que deveria estar funcionando |
| **Feature** | Funcionalidade nova que o sistema ainda não possui |
| **Backlog** | Lista priorizada de tudo que precisa ser desenvolvido ou corrigido |
| **Milestone** | Agrupamento de Issues com uma meta e prazo definidos |
| **Label** | Etiqueta para categorizar e filtrar Issues |
| **Issue** | Registro formal de um problema ou melhoria no repositório |
| **Acessibilidade (A11y)** | Capacidade do site ser usado por pessoas com diferentes necessidades |
| **WCAG** | Diretrizes internacionais de contraste e acessibilidade para a web |

---

*Atividade elaborada para a UC-09 — Atualização e Manutenção de Software | SENAC*
