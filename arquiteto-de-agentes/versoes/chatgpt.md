# Arquiteto de Agentes no ChatGPT

Situação em 17/11/2026 (fontes em `../FONTES.md`):
- **Projetos** funcionam no plano grátis. Não há limite oficial publicado para as instruções do Projeto; por segurança usamos instruções curtas (menos de 1.500 caracteres) e o prompt completo como arquivo. O plano grátis aceita poucos arquivos por Projeto (relatos falam em 5); aqui usamos só 1.
- **GPT personalizado**: desde 16/08/2026 contas pessoais (Free, Go, Plus, Pro) não criam GPT novo. Só workspaces Business, Enterprise e Edu. Quem já tinha um GPT ainda consegue editar. O campo Instructions aceita até 8.000 caracteres.

---

## Opção A · Projeto do ChatGPT (recomendada, funciona no grátis)

1. No ChatGPT, na barra lateral, clique em **Novo projeto** e dê o nome **Arquiteto de Agentes**.
2. Abra as configurações do projeto e, em **Arquivos**, envie o arquivo `ARQUITETO-system-prompt.md`.
3. Em **Instruções**, cole o texto abaixo (cerca de 860 caracteres):

```
Você é o Arquiteto de Agentes, criado pela comunidade Klaus Labs para montar agentes para o negócio de quem está usando você, de qualquer ramo. Siga à risca o arquivo ARQUITETO-system-prompt.md deste projeto: ele é o seu manual completo (menu, entrevista, arquitetura, como escrever o agente, ficha padrão, checklist, modo melhorar, limites e checagem final). Leia o arquivo inteiro antes da primeira resposta de cada conversa.
Resumo do que nunca pode faltar:
- Uma pergunta por vez, no máximo 8, sempre com 2 ou 3 exemplos de resposta.
- Confirme o resumo antes de montar.
- Nunca invente preço, horário, dado do negócio ou preço de ferramenta. O que faltar vira [[MARCADOR]].
- O agente criado sempre tem as seções nunca_inventar e quando_chamar_um_humano.
- O agente criado é do negócio da pessoa e nunca cita a Klaus Labs.
- Entregue na ficha do agente, com o prompt em bloco de código, 3 testes e checklist.
- Nada de promessa de ganho financeiro.
Fale em português do Brasil simples, com acentos.
```

4. Abra uma conversa dentro do projeto e escreva **oi**.

Se o ChatGPT não seguir o arquivo direito (acontece em modelos menores), use a Opção C.

## Opção B · GPT personalizado (só para quem ainda pode criar ou editar GPT)

1. **Explorar GPTs → Criar → Configurar.**
2. **Nome:** Arquiteto de Agentes · **Descrição:** Entrevista você e monta um agente de IA pronto para o seu negócio.
3. **Instruções:** cole o conteúdo de `instrucoes-compactas-8000.md` (6.500 caracteres, cabe no limite de 8.000).
4. **Conhecimento:** envie `ARQUITETO-system-prompt.md`.
5. **Iniciadores de conversa:** "Quero criar um atendente de WhatsApp" · "Quero um agente de prospecção" · "Quero melhorar um agente que já tenho" · "Me dá ideias de agentes para o meu negócio".
6. **Recursos:** pode desligar geração de imagem. Não precisa de Ações.
7. Salve como **Qualquer pessoa com o link** se for distribuir para a comunidade.

## Opção C · Colar na conversa (funciona sempre)

Abra uma conversa nova, cole tudo entre `=== INÍCIO ===` e `=== FIM ===` do `ARQUITETO-system-prompt.md`, envie e escreva **oi**.
