bash <<'EOF'
C=$(docker ps --format '{{.Names}}' | grep -E 'paperclip-[0-9]+$' | head -n1)
[ -z "$C" ] && { echo "ERRO: nao achei o container do Paperclip."; exit 1; }
W=$(docker exec "$C" sh -c 'command -v node')
echo "Container: $C | Node atual: $(docker exec "$C" node -v) em $W"
[ "$W" = "/usr/local/bin/node" ] || { echo "ERRO: o Node nao esta no lugar esperado. Nao atualize; mande um print na comunidade."; exit 1; }
T=$(curl -fsSL https://nodejs.org/dist/latest-v24.x/SHASUMS256.txt | grep -oE 'node-v[0-9.]+-linux-x64\.tar\.gz' | head -n1)
[ -z "$T" ] && { echo "ERRO: nao consegui achar o Node 24 no site oficial."; exit 1; }
echo "Baixando $T..."
curl -fsSL -o "/tmp/$T" "https://nodejs.org/dist/latest-v24.x/$T" || { echo "ERRO no download"; exit 1; }
docker cp "/tmp/$T" "$C:/tmp/node.tar.gz"
docker exec -u root "$C" tar -xzf /tmp/node.tar.gz -C /usr/local --strip-components=1 --exclude='*/CHANGELOG.md' --exclude='*/LICENSE' --exclude='*/README.md'
docker restart "$C" >/dev/null && sleep 10
echo "Node agora: $(docker exec "$C" node -v)"
echo "== Abra o Paperclip (F5). Se ele nao abrir, mande um print na comunidade. =="
EOF
