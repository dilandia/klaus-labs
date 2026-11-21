---
name: segundo-cerebro
description: Use para lembrar de tudo: monta, abre e salva a memória.
---

# Segundo Cérebro

Memória permanente para o seu agente. Uma pasta com arquivos de texto que o agente lê no começo de toda conversa e atualiza no fim. Ele para de esquecer quem você é, o que o negócio faz e onde vocês pararam.

Criado pela comunidade Klaus Labs. O cérebro é do negócio de quem usa: leva o nome, as regras e as informações dessa pessoa.

**Quando usar:**
- "monta meu segundo cérebro" / "cria minha memória" → MONTAR
- começo de qualquer conversa, ou "onde paramos?" → ABRIR
- "salva", "encerra", "fim por hoje", ou antes da conversa ficar longa demais → SALVAR
- "faxina no cérebro" → FAXINA

## Onde fica o cérebro

Pergunte ao dono só se não estiver claro. Padrão:
- Claude Code, Codex, Cursor, Gemini CLI: pasta `segundo-cerebro/` dentro da pasta de trabalho (ou a que o dono indicar).
- OpenBot e Hermes: pasta `segundo-cerebro/` no espaço de trabalho do agente (workspace).
- ChatGPT, Claude.ai e Gemini no navegador: não há pasta. Os arquivos ficam nos arquivos do Projeto/Gem, e o SALVAR entrega o texto pronto para o dono atualizar (veja "Sem acesso a arquivos").

## Estrutura

```
segundo-cerebro/
├── CEREBRO.md          manual de operação (estas regras)
├── EU.md               quem é o dono e como gosta de trabalhar
├── NEGOCIO.md          o que vende, para quem, tom de voz, regras da casa
├── AGORA.md            o que está em andamento e pendente (máx. 60 linhas)
├── APRENDIZADOS.md     erros que não se repetem e jeitos certos (máx. 150 linhas)
├── FERRAMENTAS.md      ferramentas e onde ficam as coisas (NUNCA senhas)
├── CLAUDE.md / AGENTS.md / GEMINI.md   1 linha: "leia CEREBRO.md"
├── projetos/           um arquivo por projeto ou cliente grande
└── memoria/
    ├── sessoes/        AAAA-MM-DD-assunto.md, uma por conversa
    ├── decisoes/       AAAA-MM.md, decisões e o porquê
    └── pessoas/        nome.md, uma por pessoa
```

Modelos completos de cada arquivo: https://github.com/dilandia/klaus-labs/tree/main/segundo-cerebro/modelo

## MONTAR

1. Confira se já existe um cérebro. Se existir, não sobrescreva: faça ABRIR.
2. Entreviste o dono, UMA pergunta por vez, em linguagem simples. No máximo 8 perguntas:
   1. Seu nome e o que você faz?
   2. Em uma frase, o que o seu negócio vende e para quem?
   3. Quais são os produtos ou serviços principais e os preços?
   4. Como você quer que eu fale com você? (curto ou detalhado, formal ou solto)
   5. O que eu NUNCA devo fazer?
   6. Que ferramentas você usa no dia a dia? (sem senha!)
   7. No que você está trabalhando agora? O que está pendente?
   8. Tem alguma data importante nas próximas semanas?
   Se o dono disser "não sei" ou "pula", siga em frente e deixe `[preencher]` no lugar.
3. Crie a estrutura acima. Preencha com as respostas, em frases curtas. Nada inventado.
4. Copie as regras da seção "Regras do cérebro" (abaixo) para `CEREBRO.md`.
5. Se for possível usar Git e o dono quiser backup: `git init`, primeiro commit, e oriente a criar um repositório PRIVADO no GitHub.
6. Mostre ao dono a lista de arquivos criados e diga: "A partir de agora, toda conversa começa lendo isso e termina salvando."

## ABRIR

1. Se usa Git: `git pull`.
2. Leia `EU.md`, `NEGOCIO.md`, `AGORA.md` e `APRENDIZADOS.md`. O resto, só se a tarefa pedir.
3. Abra a conversa com uma linha mostrando que lembrou: "Da última vez: X. Pendente: Y. Seguimos por onde?"

## SALVAR

1. Reescreva `AGORA.md`: em andamento, pendente, próximo passo, datas. Tire o que foi resolvido.
2. Crie `memoria/sessoes/AAAA-MM-DD-assunto.md` com: o que foi feito, decisões e por quê, o que funcionou ou deu errado, pendências.
3. Regra nova → `APRENDIZADOS.md` (regra + data + motivo).
4. Decisão importante → `memoria/decisoes/AAAA-MM.md`. Pessoa nova → `memoria/pessoas/nome.md`.
5. Se usa Git: `git add -A && git commit -m "sessão AAAA-MM-DD: assunto" && git push`.
6. Responda em uma linha: "Salvo: AGORA, sessão de hoje e 1 regra nova."

## FAXINA (semanal ou quando pedir)

- `AGORA.md` acima de 60 linhas: mova o que tem mais de 30 dias para a sessão correspondente.
- `APRENDIZADOS.md` acima de 150 linhas: junte regras repetidas e apague as que não valem mais (pergunte antes de apagar).
- Procure informação contraditória entre arquivos e pergunte ao dono qual vale.
- Mostre o que mudou.

## Regras do cérebro

- Você não confia na memória da conversa. Você confia nos arquivos. Se não salvou, não aconteceu.
- Datas sempre completas (21/11/2026). Nunca "ontem", "sexta que vem".
- Antes de criar arquivo, procure se já existe. Atualize em vez de duplicar. Nunca reescreva um arquivo inteiro sem ler antes.
- Informação que ficou errada: corrija ou apague.
- NUNCA grave senha, token, chave de API, cartão ou documento. Em `FERRAMENTAS.md` vai só ONDE a credencial está guardada.
- Repositório no GitHub: sempre PRIVADO.
- Dados de clientes: só o necessário.

## Sem acesso a arquivos (ChatGPT, Claude.ai, Gemini no navegador)

- ABRIR: leia os arquivos anexados ao Projeto/Gem.
- SALVAR: entregue, em blocos separados e prontos para copiar, o `AGORA.md` completo atualizado e o texto da sessão de hoje. Diga: "Substitua o AGORA.md nos arquivos do projeto e guarde a sessão na pasta memoria/sessoes do seu computador ou Drive."
