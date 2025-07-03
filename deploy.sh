#!/bin/bash

# Para evitar conflitos, remove o git antigo da pasta public
rm -rf public/.git

# Build do site
hugo

# Entra na pasta gerada
cd public

# Inicia o repositório do zero
git init
git remote add origin https://github.com/olucasmac/olucasmac.com.git

# Cria a branch gh-pages e envia
git checkout -b gh-pages
git add .
git commit -m "Deploy site"
git push -f origin gh-pages

# Volta pra raiz
cd ..
