#!/bin/bash

# Caminho da pasta onde as imagens foram movidas
new_path="Imagens/"

# Substitui o caminho das imagens em todos os arquivos HTML no diretório atual
find . -type f -name "*.html" -exec sed -i "s|src=\"\([^\"]*\)\.jpg\"|src=\"$new_path\1.jpg\"|g" {} +
