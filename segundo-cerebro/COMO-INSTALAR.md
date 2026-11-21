# Como instalar o Segundo Cérebro (todas as ferramentas)

Escolha a sua ferramenta. Em todas, o primeiro pedido é o mesmo: **"monta meu segundo cérebro"**. O agente faz 8 perguntas e cria tudo.

Link da skill (para mandar ao agente):
https://raw.githubusercontent.com/dilandia/klaus-labs/main/segundo-cerebro/segundo-cerebro/SKILL.md

---

## OpenBot (navegador ou app)

1. Mande no chat do agente:
   > Instale como skill o arquivo deste link: https://raw.githubusercontent.com/dilandia/klaus-labs/main/segundo-cerebro/segundo-cerebro/SKILL.md
2. Depois: "monta meu segundo cérebro".
3. Em toda conversa nova: "abre meu cérebro". No fim: "salva".

Jeito manual: Settings → Skills → Local skills → adicione a pasta `segundo-cerebro` do zip.

Dica: num time de agentes, aponte todos para a MESMA pasta. Todos passam a saber a mesma coisa.

## Hermes Agent

- **Pelo chat:** mande a mesma frase com o link (acima).
- **Pelo painel:** Competências (Skills) → **+ New skill** → Name `segundo-cerebro` → apague o modelo e cole o `SKILL.md` inteiro. Não use "Learn a skill" (ele reescreve a skill).
- **Pelo terminal da VPS:** copie a pasta para `~/.hermes/skills/produtividade/segundo-cerebro/`.
- Skill nova só vale na próxima conversa: mande `/reset`.

## Claude Code

1. Copie a pasta `segundo-cerebro` (a da skill) para `~/.claude/skills/segundo-cerebro/` (Windows: `C:\Users\<você>\.claude\skills\segundo-cerebro\`).
2. Crie uma pasta para o seu cérebro (ex.: `Documentos/meu-cerebro`), abra o Claude Code nela e peça "monta meu segundo cérebro".
   Ou copie a pasta `modelo/` do zip, renomeie, e preencha os colchetes.
3. O arquivo `CLAUDE.md` da pasta faz o Claude Code ler o cérebro sozinho toda vez que você abrir ali.
4. Para usar o cérebro em QUALQUER pasta, adicione em `~/.claude/CLAUDE.md`:
   > No começo de toda sessão, leia C:\caminho\do\meu-cerebro\CEREBRO.md e siga. No fim, salve.

## Codex, Cursor, Windsurf, Gemini CLI e outros agentes de código

Abra a ferramenta dentro da pasta do cérebro. Elas leem sozinhas o arquivo de instrução que já vem pronto:
- Codex, Cursor, Windsurf e a maioria: `AGENTS.md`
- Gemini CLI: `GEMINI.md`
Os dois só dizem "leia CEREBRO.md". Depois peça "monta meu segundo cérebro".

## ChatGPT (Projetos)

1. Crie um **Projeto** (barra lateral → Projetos → Novo projeto), nome "Meu negócio".
2. Em **Instruções**, cole o texto de `versoes/instrucoes-navegador.md`.
3. Em **Arquivos**, suba `EU.md`, `NEGOCIO.md`, `AGORA.md`, `APRENDIZADOS.md` e `FERRAMENTAS.md` (pasta `modelo/`).
   Primeira vez? Suba só as instruções e peça "monta meu segundo cérebro". Ele entrevista você e devolve os arquivos prontos para você subir.
4. Converse sempre DENTRO do projeto. No fim, peça "salva": ele entrega o AGORA.md novo e a sessão do dia. Substitua o AGORA.md nos arquivos do projeto.

## Claude.ai (Projetos)

Igual ao ChatGPT: Projects → Create project → **Set project instructions** (cole `versoes/instrucoes-navegador.md`) → **Project knowledge** (suba os arquivos). No fim, "salva" e substitua o AGORA.md.

## Gemini (Gems)

Gems → Novo Gem → em **Instruções** cole `versoes/instrucoes-navegador.md` → em **Conhecimento** suba os arquivos. No fim, "salva" e troque o AGORA.md no Gem.

## Sem agente nenhum (Notion, Google Docs, Obsidian)

Os arquivos são texto comum. Cole cada um numa página do Notion ou num Doc. Quando abrir qualquer IA, cole o `AGORA.md` e o `EU.md` antes de pedir algo. Já muda tudo.

---

## Backup e vários computadores (opcional)

Se o agente roda no seu computador ou na VPS, guarde o cérebro num repositório **PRIVADO** do GitHub. Peça ao agente: "coloca meu cérebro num repositório privado no GitHub e faz push no fim de toda sessão". Assim ele funciona igual no notebook, no PC e na VPS.
