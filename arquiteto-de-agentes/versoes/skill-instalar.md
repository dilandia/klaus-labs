# Arquiteto de Agentes como Skill (Claude Code, Hermes, OpenBot, Gemini)

A pasta `arquiteto-de-agentes/` tem o `SKILL.md` no padrão aberto Agent Skills (agentskills.io):
- `name: arquiteto-de-agentes` (minúsculas e hífen, igual ao nome da pasta);
- `description` com 56 caracteres, abaixo do limite de 60 do painel do Hermes;
- corpo com ~200 linhas (o padrão recomenda menos de 500).

## Claude Code
Copie a pasta para `~/.claude/skills/arquiteto-de-agentes/` (no Windows: `C:\Users\<você>\.claude\skills\arquiteto-de-agentes\`). Abra o Claude Code e digite `/arquiteto-de-agentes`, ou só peça "quero criar um agente".

## Hermes Agent
- **Pelo painel:** Competências (Skills) → **+ New skill** → Name `arquiteto-de-agentes` → apague o modelo e cole o conteúdo inteiro do `SKILL.md`. Não use "Learn a skill": ele reescreve a skill em vez de instalar igual.
- **Pelo terminal da VPS:** copie a pasta para `~/.hermes/skills/produtividade/arquiteto-de-agentes/`.
- Skill nova só vale na próxima conversa: mande `/reset`.

## OpenBot
Settings → Skills → Local skills → adicione a pasta `arquiteto-de-agentes`. Depois peça ao bot "quero criar um agente".

## Gemini (Skills)
Veja `gemini-skill.md`, Jeito 2 (Substituir skill → enviar a pasta).
