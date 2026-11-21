# Arquiteto de Agentes no Gemini (Skill)

Atenção: em 17/11/2026 o Google começou a trocar os **Gems** por **Skills** nas contas pessoais. Os Gems viraram somente leitura e somem em 17/12/2026. Skills estão liberadas para contas pessoais de maiores de 18 anos. A página oficial não informa limite de caracteres das instruções. (Fonte: support.google.com/gemini/answer/18560919)

## Jeito 1 · Criar à mão (mais simples)
1. Entre em gemini.google.com e clique em **Personalizar → Skills** (se não aparecer, clique antes em **Mais**).
2. Clique em **Criar → Criar manualmente**.
3. Preencha:
   - **Nome:** arquiteto-de-agentes
   - **Descrição:** Entrevista você e monta um agente de IA pronto para o seu negócio, com prompt, testes e checklist. Use quando quiser criar ou melhorar um agente.
   - **Instruções:** cole tudo entre `=== INÍCIO ===` e `=== FIM ===` do `ARQUITETO-system-prompt.md`. Se o Gemini recusar por tamanho, cole o conteúdo de `instrucoes-compactas-8000.md`.
4. Clique em **Criar**.
5. Numa conversa, digite **/arquiteto-de-agentes** e depois **oi**.

## Jeito 2 · Enviar a pasta pronta (web ou app do Mac)
1. Crie a skill pelo Jeito 1 (pode ser só com o nome).
2. No menu da skill (**Mais opções**), clique em **Substituir skill** e envie a pasta `arquiteto-de-agentes` (que está nesta pasta `versoes/`, com o `SKILL.md` dentro). O nome da pasta precisa ser igual ao nome da skill.

## Se você ainda usa um Gem antigo
O Google converte o Gem em Skill automaticamente. Confira depois se as instruções vieram inteiras; se não, refaça pelo Jeito 1.
