bash <<'EOF'
echo "== Parte 1: preparar o Paperclip (Hostinger 1 clique) =="
C=$(docker ps --format '{{.Names}}' | grep -E 'paperclip-[0-9]+$' | head -n1)
[ -z "$C" ] && { echo "ERRO: nao achei o container do Paperclip. Rode: docker ps"; exit 1; }
D=$(docker inspect "$C" --format '{{ index .Config.Labels "com.docker.compose.project.working_dir" }}')
F=$(docker inspect "$C" --format '{{ index .Config.Labels "com.docker.compose.project.config_files" }}')
P=$(docker inspect "$C" --format '{{ index .Config.Labels "com.docker.compose.project" }}')
S=$(docker inspect "$C" --format '{{ index .Config.Labels "com.docker.compose.service" }}')
DOM=$(docker inspect "$C" | grep -oE '[a-z0-9-]+(\.[a-z0-9-]+)*\.hstgr\.cloud' | awk '{print length, $0}' | sort -rn | head -n1 | cut -d' ' -f2)
[ -z "$DOM" ] && DOM="$P.$(hostname).hstgr.cloud"
URL="https://$DOM"
echo "Container: $C | Pasta: $D | Endereco: $URL"
echo "[1/3] Corrigindo o endereco https (para os Connectors funcionarem)..."
cat > "$D/docker-compose.override.yml" <<YML
services:
  $S:
    environment:
      PAPERCLIP_PUBLIC_URL: "$URL"
YML
ARGS=""; for f in $(echo "$F" | tr ',' ' '); do ARGS="$ARGS -f $f"; done
(cd "$D" && docker compose -p "$P" $ARGS -f "$D/docker-compose.override.yml" up -d) || { echo "ERRO ao recriar o container"; exit 1; }
sleep 8
C=$(docker ps --format '{{.Names}}' | grep -E 'paperclip-[0-9]+$' | head -n1)
echo "[2/3] Instalando Python 3 (necessario para o login do Claude)..."
docker exec -u root "$C" sh -c 'export DEBIAN_FRONTEND=noninteractive; apt-get update -qq && apt-get install -y -qq python3 >/dev/null; python3 --version'
NV=$(docker exec "$C" node -v 2>/dev/null); echo "Node: ${NV:-nao encontrado}"
NM=$(echo "$NV" | tr -d 'v' | cut -d. -f1); [ "${NM:-0}" -lt 20 ] 2>/dev/null && echo "ATENCAO: Node abaixo do 20. Nao continue; mande um print na comunidade."
echo "[3/3] Conferindo o endereco de retorno..."
sleep 10
curl -s "$URL/api/tools/oauth/client-metadata" | grep -o '"redirect_uris":\[[^]]*\]'
echo "== PARTE 1 PRONTA. Confira: Python 3.x, Node 20 ou maior e o endereco acima comecando com https. Agora faca o login do Claude no Paperclip. =="
EOF
