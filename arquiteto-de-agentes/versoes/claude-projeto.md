# Arquiteto de Agentes como Projeto do Claude

A Anthropic não publica limite de caracteres para as instruções do Projeto. O prompt completo (cerca de 20 mil caracteres) cabe sem problema, então use a versão inteira.

## Passo a passo
1. Entre em claude.ai e clique em **Projetos → Criar projeto**.
2. Nome: **Arquiteto de Agentes**. Descrição (opcional): "Monta agentes de IA prontos para o meu negócio."
3. No painel do projeto, clique em **Instruções do projeto** (ícone de lápis) e cole tudo entre `=== INÍCIO ===` e `=== FIM ===` do arquivo `ARQUITETO-system-prompt.md`. Salve.
4. Opcional: em **Conhecimento do projeto**, envie arquivos do seu negócio (tabela de preços, FAQ, manual da marca). O Arquiteto usa essas informações e pergunta menos.
5. Abra uma conversa nova dentro do projeto e escreva **oi**.

## Dicas
- Crie uma conversa nova para cada agente que for montar. Fica mais organizado e o Arquiteto não mistura negócios.
- Se o seu plano não mostrar Projetos, cole o prompt como primeira mensagem de uma conversa nova.
- Quando o agente ficar pronto, crie outro Projeto só para ele (ex.: "Bia · atendente") e cole o prompt do agente nas instruções desse novo projeto.
