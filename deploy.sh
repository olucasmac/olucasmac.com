#!/bin/bash

set -e  # Para o script se der erro

# CONFIGS
REPO="https://github.com/olucasmac/olucasmac.com.git"
BUILD_DIR="public"
DEPLOY_BRANCH="gh-pages"
SOURCE_BRANCH="main"  # ou master, se for o seu caso
CNAME_DOMAIN="olucasmac.com"

echo "📦 Comitando alterações no código-fonte (branch $SOURCE_BRANCH)..."
git add .
read -p "📝 Mensagem do commit: " COMMIT_MSG
git commit -m "$COMMIT_MSG"
git push origin $SOURCE_BRANCH

echo "🏗️  Gerando site com Hugo..."
hugo

echo "🌐 Adicionando CNAME ao build..."
echo "$CNAME_DOMAIN" > $BUILD_DIR/CNAME

# Limpa o repositório Git anterior da public/
rm -rf $BUILD_DIR/.git

echo "🚀 Enviando conteúdo da pasta $BUILD_DIR para a branch $DEPLOY_BRANCH..."

cd $BUILD_DIR
git init
git checkout -b $DEPLOY_BRANCH
git remote add origin $REPO
git add .
git commit -m "Deploy site: $COMMIT_MSG"
git push -f origin $DEPLOY_BRANCH
cd ..

echo "✅ Deploy finalizado! Código-fonte enviado para $SOURCE_BRANCH, site publicado em $DEPLOY_BRANCH."
