# Blog pessoal de Lucas M. A. Costa

Este é o repositório do meu blog pessoal, feito com [Hugo](https://gohugo.io/) e publicado via [GitHub Pages](https://pages.github.com/).

O site é hospedado em:  
👉 **https://www.olucasmac.com**

---

## ✍️ Sobre o projeto

- Gerado com Hugo (tema: [hello-friend-ng](https://github.com/rhazdon/hugo-theme-hello-friend-ng))
- Código-fonte fica na branch `main`
- Arquivos estáticos (HTML, CSS, JS, etc.) são gerados em `public/` e enviados para a branch `gh-pages`
- Deploy feito via script manual

---

## 📦 Requisitos

- [Hugo](https://gohugo.io/getting-started/installing/) (versão extended)
- Git
- Chave SSH ou token de acesso ao GitHub (caso use HTTPS)

---

## 🚀 Rodando localmente

Para rodar o blog em modo desenvolvimento:

```bash
hugo server -D
```

Acesse em: `http://localhost:1313`

---

## 📤 Fazendo deploy

### Etapas realizadas pelo script:

1. Comita o código-fonte e envia para a branch `main`
2. Gera os arquivos estáticos com `hugo`
3. Adiciona o arquivo `CNAME` automaticamente
4. Envia o conteúdo da pasta `public/` para a branch `gh-pages`

### Como usar:

```bash
./deploy.sh
```

Você será solicitado a digitar a mensagem de commit.

> **Importante:** o diretório `public/` é recriado a cada build, e não é versionado pela `main`.

---

## 🗂️ Estrutura de branches

| Branch      | Conteúdo                      | Descrição                            |
|-------------|-------------------------------|--------------------------------------|
| `main`      | Código-fonte (Hugo)           | Onde ficam os posts, layouts, config |
| `gh-pages`  | Site gerado (pasta `public/`) | Branch usada pelo GitHub Pages       |

---

## 📁 Estrutura básica do projeto

```
.
├── content/         # Posts e páginas
├── layouts/         # Layouts personalizados (opcional)
├── static/          # Arquivos estáticos (CNAME, imagens, etc.)
├── public/          # Gerado automaticamente pelo Hugo (não versionado)
├── config.toml      # Configuração do Hugo
├── deploy.sh        # Script de publicação
└── README.md
```

---

## 📝 Licença

Conteúdo licenciado sob [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/).  
Ou seja: você pode remixar, adaptar e compartilhar — desde que dê os créditos e **não use comercialmente**.
