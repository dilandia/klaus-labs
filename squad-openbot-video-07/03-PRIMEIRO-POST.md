# 03 · Primeiro post: 01 "Entre no laboratório"

## O post
| Item | Valor |
|---|---|
| Formato | Estático, 1080 × 1350 (4:5), JPEG, 391 KB |
| Arquivo local | `C:\Users\Diego\Downloads\KLAUS AGENCIA\INSTAGRAM KLAUS LABS\posts\01-estatico-entre-no-laboratorio\slide-01.jpg` |
| Versão 4K (não usar na API, passa de 1440 px) | `...\01-estatico-entre-no-laboratorio\4k\slide-01-2160x2700.jpg` |
| URL pública (já no ar) | https://klausagencia.com.br/previa/klaus-labs-ig/post-01.jpg |
| Pilar | Porta de entrada (apresentação da marca) |
| CTA | Pergunta nos comentários |
| Impulsionar? | Não (é a apresentação) |

A URL foi conferida em 18/11/2026: responde 200, `Content-Type: image/jpeg`, 1080 × 1350, `noindex` (não aparece no Google). Fica no container de prévias da Klaus, pasta `previews/klaus-klaus-labs-ig/`, só com esse arquivo.

## Legenda (670 caracteres, 4 hashtags)
```
Abri a porta do laboratório.

O Klaus Labs é uma comunidade para quem quer colocar agentes de IA para trabalhar: na agenda, na loja virtual, no atendimento, no conteúdo, na empresa pequena que ainda faz tudo na mão.

Aqui a gente monta o agente, testa com caso real, anota o que quebrou e conserta. Toda sexta entra um agente novo na biblioteca, pronto para usar.

Neste perfil vou mostrar o que funciona, o que não funciona e como montar o seu, mesmo sem nunca ter programado.

Segue o @klauslabs.ia e me conta nos comentários: qual tarefa você entregaria primeiro para um agente?

klauslabs.com.br (link na bio)

#agentesdeia #inteligenciaartificial #automacao #klauslabs
```

## Texto alternativo (até 100 caracteres)
```
Agentes de IA na bancada. Foto: laboratório escuro com prateleiras de frascos iluminados.
```

## Como o Publicador vai chamar o Composio
1. `INSTAGRAM_GET_USER_INFO` → confere `username = klauslabs` e pega o `ig_user_id`.
2. `INSTAGRAM_POST_IG_USER_MEDIA` com `ig_user_id`, `image_url = https://klausagencia.com.br/previa/klaus-labs-ig/post-01.jpg`, `caption = <legenda acima>`, `alt_text = <texto alternativo>` → devolve o `creation_id`.
3. `INSTAGRAM_POST_IG_USER_MEDIA_PUBLISH` com `ig_user_id` e `creation_id` → post no ar.

## Como subir a imagem de outros posts (quando precisar)
A URL precisa abrir sem login e devolver o JPEG direto. Três caminhos, do mais rápido para o mais simples:

1. **Prévia da Klaus (o que foi usado no post 01).** Peça ao Claude Code: "sobe o slide-01.jpg do post NN em /previa/klaus-labs-ig/post-NN.jpg". Ele copia para a VPS de prévias (pasta `previews/klaus-klaus-labs-ig/`, dono `tiago:tiago`, arquivo 644) e confere o 200.
2. **Repositório público no GitHub.** Suba o JPEG num repositório público e use o link `raw.githubusercontent.com/...`. Funciona, mas a imagem fica pública para sempre.
3. **Plano B ao vivo**: se a API recusar a URL, publique pelo app do Instagram no celular com a mesma imagem e legenda (o arquivo está na pasta do post). Na aula, isso vira um momento honesto: "a API travou, o time preparou tudo, eu só apertei publicar".

Não use Google Drive, Dropbox ou WeTransfer: o link abre uma página HTML e a Meta recusa.

## Observação de segurança
A imagem do post 01 é pública de propósito (vai para o Instagram de qualquer jeito). Não suba para a prévia nada que não vá ser publicado.
