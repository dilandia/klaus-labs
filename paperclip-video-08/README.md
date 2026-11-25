[![Paperclip do zero: um CEO de IA que contrata agentes](../imagens/paperclip-video-08.jpg)](https://youtu.be/YlXWwWSbBUI)

# Paperclip do zero: um CEO de IA que contrata agentes

**Uma empresa de agentes de IA rodando sozinha na sua VPS.** Você instala o Paperclip na Hostinger em 1 clique, prepara a VPS com um comando, dá a missão ao CEO e ele contrata o time: repórter, redator, revisor e publicador. A rotina das 7h dispara o trabalho todo dia, e cada agente passa a tarefa para o próximo.

Na aula o time monta a **IA do Dia**, uma newsletter diária de IA para donos de pequenos negócios. No fim, conectamos Gmail e Google Planilhas pelo Composio e o agente manda e-mail de verdade para a lista.

Aula completa: https://youtu.be/YlXWwWSbBUI

## O jeito mais fácil: o guia interativo
**[guia-paperclip-na-hostinger.html](guia-paperclip-na-hostinger.html)**: baixe e abra no navegador. São 9 passos com botão de copiar em cada comando, caixinha para marcar o que já fez e uma tabela com os erros mais comuns e a solução de cada um.

## Os arquivos, na ordem da aula
| # | Arquivo | Onde usar |
|---|---|---|
| 1 | [01-COMANDO-PREPARAR-VPS.sh](01-COMANDO-PREPARAR-VPS.sh) | Terminal da VPS, **antes** de abrir o Paperclip. Instala o Python, corrige o endereço https (sem isso os Connectors não abrem) e confere o Node. |
| 2 | [02-COMANDO-ATUALIZAR-CLAUDE.sh](02-COMANDO-ATUALIZAR-CLAUDE.sh) | Terminal da VPS, **depois** de logar o Claude no Paperclip. Atualiza o Claude Code para aceitar os modelos novos. |
| 3 | [03-AGENTS-CEO.md](03-AGENTS-CEO.md) | Agents › CEO › Instructions › AGENTS.md. As instruções de CEO: planejar, contratar, delegar e prestar contas. |
| 4 | [04-PRIMEIRA-MISSAO-IA-DO-DIA.txt](04-PRIMEIRA-MISSAO-IA-DO-DIA.txt) | Primeira tarefa do CEO. Ele propõe o time, você aprova e ele contrata. |
| 5 | [05-TESTE-PLANILHA.txt](05-TESTE-PLANILHA.txt) | Extra: testa a conexão com o Google Planilhas (lê e escreve uma linha, sem mandar e-mail). |
| 6 | [06-TESTE-EMAIL.txt](06-TESTE-EMAIL.txt) | Extra: manda e-mail pelo Gmail para quem está na planilha. |
| 7 | [07-SE-PRECISAR-ATUALIZAR-NODE.sh](07-SE-PRECISAR-ATUALIZAR-NODE.sh) | Só se o comando 1 avisar "Node abaixo do 20". |
| – | [planilha-ia-do-dia-assinantes.xlsx](planilha-ia-do-dia-assinantes.xlsx) | Modelo da planilha: abas Assinantes e Edições. Suba no Drive e salve como Planilhas Google. |

> A ordem importa: o comando 2 só depois do login. Se o Claude for atualizado antes, o login trava em "Preparing browser sign-in".

## Sem baixar nada
Mande para o seu agente (Claude Code, OpenBot, Hermes) o link do arquivo e peça para ele ler:
`https://raw.githubusercontent.com/dilandia/klaus-labs/main/paperclip-video-08/01-COMANDO-PREPARAR-VPS.sh`

Você vai precisar de: uma VPS da Hostinger com o Paperclip instalado em 1 clique e uma assinatura do Claude (ou chave de API).

---
Criado por Diego Ramos · [@diegorgo no YouTube](https://www.youtube.com/channel/UCHXHRdd6Sp3Cd7poovCBbew) · [Comunidade gratuita](https://klauslabs.com.br/grupo) · [Klaus Labs PRO](https://klauslabs.com.br)
