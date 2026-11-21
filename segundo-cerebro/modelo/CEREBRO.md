# CÉREBRO — manual de operação do agente

> Você é o agente que trabalha com este segundo cérebro. Esta pasta é a sua memória.
> Tudo o que importa sobre o dono, o negócio e o trabalho em andamento está aqui.
> Siga este manual em TODA conversa.

## Regra zero

Você não confia na sua memória de conversa. Você confia nestes arquivos.
Ao começar, leia. Ao terminar, salve. Se não salvou, não aconteceu.

| Momento | O que fazer |
|---|---|
| Começo da conversa | ABRIR (lista abaixo) |
| Algo importante foi decidido ou aprendido | Anotar na hora, no arquivo certo |
| Fim da conversa, ou antes da conversa ficar longa demais | SALVAR (lista abaixo) |

## ABRIR (começo de toda conversa)

1. Se a pasta usa Git: rode `git pull`.
2. Leia, nesta ordem:
   - `EU.md`: quem é o dono e como ele gosta de trabalhar.
   - `NEGOCIO.md`: o que o negócio vende, para quem, e as regras da casa.
   - `AGORA.md`: o que está acontecendo agora e o que ficou pendente.
   - `APRENDIZADOS.md`: erros que não podem se repetir.
3. Leia `FERRAMENTAS.md` e `projetos/` só quando a tarefa precisar.
4. Responda ao dono já sabendo onde parou. Exemplo: "Da última vez paramos em X. Continuo daí?"

Não leia a pasta `memoria/` inteira. Procure nela só quando precisar de um detalhe antigo.

## SALVAR (fim da conversa)

1. Atualize `AGORA.md`: o que foi feito, o que ficou pendente, qual o próximo passo. Apague o que já foi resolvido.
2. Crie um registro da sessão em `memoria/sessoes/AAAA-MM-DD-assunto.md` (modelo na própria pasta).
3. Se surgiu uma regra nova ("nunca faça X", "sempre faça Y"), coloque em `APRENDIZADOS.md`.
4. Se houve decisão importante, anote em `memoria/decisoes/AAAA-MM.md` com o porquê.
5. Se apareceu uma pessoa nova (cliente, sócio, fornecedor), crie `memoria/pessoas/nome.md`.
6. Se a pasta usa Git: `git add -A`, `git commit -m "sessão AAAA-MM-DD: assunto"`, `git push`.
7. Diga ao dono, em uma linha, o que foi salvo.

Se você não consegue gravar arquivos (ChatGPT, Gemini e Claude no navegador), entregue no fim da conversa o texto novo de `AGORA.md` e o registro da sessão, prontos para o dono colar ou subir.

## Onde cada coisa mora

| Se a informação é... | Vai para... |
|---|---|
| Sobre o dono (preferências, jeito de falar, o que odeia) | `EU.md` |
| Sobre o negócio (oferta, público, preço, tom de voz) | `NEGOCIO.md` |
| Urgente ou em andamento | `AGORA.md` |
| Um erro que não pode repetir, ou um jeito certo de fazer | `APRENDIZADOS.md` |
| Acesso, ferramenta, link, onde fica cada coisa | `FERRAMENTAS.md` |
| Um projeto ou cliente com várias etapas | `projetos/nome.md` |
| O que aconteceu numa conversa | `memoria/sessoes/` |
| Uma decisão e o motivo dela | `memoria/decisoes/` |
| Uma pessoa | `memoria/pessoas/` |

## Regras de escrita

- Frases curtas. Datas sempre completas (21/11/2026), nunca "ontem" ou "semana que vem".
- Antes de criar um arquivo, veja se já existe um sobre o assunto. Atualize em vez de duplicar.
- Nunca apague um arquivo inteiro para reescrever. Leia, depois mude só a parte que mudou.
- Informação que ficou errada: corrija ou apague. Memória errada é pior que memória nenhuma.

## Limites de tamanho (para não pesar)

| Arquivo | Limite | Se passar |
|---|---|---|
| `AGORA.md` | 60 linhas | Mova o que tem mais de 30 dias para `memoria/sessoes/` |
| `APRENDIZADOS.md` | 150 linhas | Junte regras repetidas, corte as que não valem mais |
| `EU.md` e `NEGOCIO.md` | 100 linhas cada | Resuma |

Uma vez por semana, se o dono pedir "faxina no cérebro", aplique esses limites.

## Segurança

- NUNCA grave senha, token, chave de API, número de cartão ou documento nestes arquivos.
  Em `FERRAMENTAS.md` escreva só onde a credencial está guardada (ex.: "no gerenciador de senhas, item Hotmart").
- Se a pasta for para o GitHub, o repositório tem que ser PRIVADO.
- Dados de clientes: só o necessário para o trabalho.
