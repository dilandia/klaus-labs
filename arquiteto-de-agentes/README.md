# Arquiteto de Agentes

**Um agente que cria outros agentes para o seu negócio, seja qual for o ramo.**

Você conta o que vende e qual tarefa quer tirar das suas costas. O Arquiteto faz no máximo 8 perguntas, uma de cada vez e sempre com exemplos, mostra um resumo do que entendeu e, com o seu ok, monta o agente.

## O que você recebe no final
- **O prompt do agente pronto**, para colar e usar.
- **O que trocar**: a lista do que só você sabe (preço, horário, link), marcado como `[[MARCADOR]]`. O agente nunca inventa esses dados.
- **3 mensagens de teste**, uma delas para conferir se ele respeita os limites.
- **Checklist** antes de colocar o agente na frente do cliente.
- **Onde colar**, de acordo com a ferramenta que você usa.

Ele também tem o modo **melhorar um agente**: você cola o prompt e a conversa que deu errado, ele mostra a causa e devolve o trecho corrigido.

## Jeito mais rápido (OpenBot, Hermes, Claude Code)
Mande esta mensagem para o seu agente:

> Instale como skill o arquivo deste link: https://raw.githubusercontent.com/dilandia/klaus-labs/main/arquiteto-de-agentes/arquiteto-de-agentes/SKILL.md

Depois peça: "quero criar um agente".

## ChatGPT, Claude ou Gemini
1. Abra o [prompt completo](ARQUITETO-system-prompt.md).
2. Copie tudo entre `=== INÍCIO ===` e `=== FIM ===`.
3. Cole numa conversa nova e escreva **oi**.

Para deixar salvo como Projeto ou Skill, siga o passo a passo da pasta [versoes](versoes).

## Arquivos
| Arquivo | Para que serve |
|---|---|
| [ARQUITETO-system-prompt.md](ARQUITETO-system-prompt.md) | O prompt completo, para colar em qualquer chat |
| [arquiteto-de-agentes/SKILL.md](arquiteto-de-agentes/SKILL.md) | A skill para Claude Code, Hermes, OpenBot e Gemini |
| [versoes/chatgpt.md](versoes/chatgpt.md) | Como instalar no Projeto do ChatGPT |
| [versoes/claude-projeto.md](versoes/claude-projeto.md) | Como instalar no Projeto do Claude |
| [versoes/gemini-skill.md](versoes/gemini-skill.md) | Como instalar como Skill do Gemini |
| [versoes/skill-instalar.md](versoes/skill-instalar.md) | Como instalar no Claude Code, Hermes e OpenBot |
| [versoes/instrucoes-compactas-8000.md](versoes/instrucoes-compactas-8000.md) | Versão compacta, para ferramentas com limite de tamanho |
| Arquiteto-de-Agentes-Guia.pdf | Guia completo em PDF |
| Arquiteto-de-Agentes-Arquivos.zip | Tudo isso num pacote para baixar |

## Combinados
- O agente criado se apresenta como assistente virtual do seu negócio e não finge ser você.
- Ele informa, tira dúvida, organiza e agenda. Diagnóstico, parecer e negociação ficam com você.
- Ele ajuda a ganhar tempo. O resultado depende do seu negócio.

---
Criado por Diego Ramos · [@diegorgo no YouTube](https://www.youtube.com/channel/UCHXHRdd6Sp3Cd7poovCBbew) · [Comunidade gratuita](https://klauslabs.com.br/grupo) · [Klaus Labs PRO](https://klauslabs.com.br)
