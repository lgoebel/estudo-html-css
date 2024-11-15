#!/bin/bash

# Verifica se o arquivo foi fornecido como argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 <arquivo.html>"
    exit 1
fi

arquivo="$1"

# Faz uma cópia de backup do arquivo original
cp "$arquivo" "${arquivo}.bak"

# Substitui href com finais .svg para o formato desejado
sed -i -E 's|href="([^"]+)\.svg"|href="Imagens/\1.png"|g' "$arquivo"

echo "Substituição concluída. Backup criado em ${arquivo}.bak"

