# 03 · Primeiro post e problemas comuns

Use depois que o Maestro montar o time e mostrar a tabela final.

## Antes do primeiro post
1. **Composio conectado.** Em Marketplace › Apps › composio, faça o login na sua conta Composio (grátis). Deixe marcado só o **IG · Publicador**.
2. **Instagram conectado.** Peça ao Maestro o link de conexão do Instagram. Ele vale cerca de 10 minutos. Entre com a conta da marca e libere a Página do Facebook ligada a ela.
3. **Conta profissional.** O Instagram precisa ser Empresa ou Criador de conteúdo, ligado a uma Página do Facebook. Conta pessoal não publica pela API.
4. **Imagem com URL pública.** O Instagram baixa a imagem de um link. Veja os caminhos na skill `marca-instagram`, arquivo `references/url-publica.md` (está no anexo do blueprint). Google Drive e Dropbox não funcionam.

## Rodar o primeiro post
Escreva no chat do Maestro: **rodar o primeiro post**.

1. **Estrategista:** briefing do post 01 com o primeiro tema que você passou. Formato estático (1 imagem), chamada = pergunta nos comentários.
2. **Redator:** legenda, texto alternativo e checagem.
3. **Diretor de Arte:** imagem 1080 × 1350 em JPEG e URL pública conferida.
4. **Revisor de Marca:** checklist da marca. Se estiver tudo certo, monta o cartão final no canal.
5. **Você:** teste a trava primeiro. Escreva "ok, legal": o Publicador tem que responder que está aguardando aprovação. Depois escreva **aprovado** (ou "ajusta: ...").
6. **Publicador:** confere a conta, cria o post e publica. Manda o link no canal.
7. **Estrategista:** fecha com o que saiu, o link e o próximo post sugerido.

Saiu o primeiro? Ligue a rotina diária em Rotinas (ela é criada desligada).

## Problemas comuns
| O que aconteceu | O que fazer |
|---|---|
| "Encurte as instruções para 2.000 caracteres" | Cole nas instruções só o `01-COLAR-NO-MAESTRO.txt` (cerca de 1.900 caracteres). O blueprint vai no chat, nunca no campo de instruções |
| O Maestro criou o time sem perguntar nada da marca | Diga: "pare, apague o que criou e comece pelas 5 perguntas da marca" |
| O Maestro diz que não achou as skills | Elas estão no fim do blueprint, na seção "ANEXO: as 5 skills". Diga: "as skills estão no anexo do blueprint, crie os 7 arquivos de lá" |
| A skill já existia na biblioteca | Peça para ele comparar e usar a versão do anexo |
| Todos os agentes ganharam o Composio | Marketplace › Apps › composio: deixe marcado só o IG · Publicador |
| "The MCP server composio needs a sign-in" | Marketplace › Apps › composio › entrar. Depois peça para testar de novo |
| O link de conectar o Instagram não funciona | Ele vale cerca de 10 minutos. Peça um novo |
| Erro de permissão ao publicar | Conta profissional, Página do Facebook ligada e todas as permissões marcadas no login |
| "Mídia inválida" ou "Only photo or video can be accepted" | A imagem não está numa URL pública, ou é WebP. Use JPEG com link direto |
| O Revisor devolve o post várias vezes | Confira se a skill anti-loop-squad está instalada em todos os agentes |
| O OpenBot mostra "Continuar / Reatribuir / Cancelar tarefa" | Clique em Cancelar tarefa e peça de novo, numa tarefa mais curta |
| Quero parar tudo agora | Escreva "pausa" no canal, ou crie um arquivo chamado `PAUSAR` na pasta do time |
| A API travou e o post precisa sair | Imagem e legenda ficam prontas na pasta do time. Publique pelo app do Instagram |

Nada resolveu? Copie a última mensagem de erro (sem chave nem senha) e poste em Dúvidas na comunidade: https://klauslabs.com.br/grupo
