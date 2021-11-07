#!/usr/bin/env bash

sudo npm install -g \
  @angular/language-server \
  @tailwindcss/language-server \
  bash-language-server \
  dockerfile-language-server-nodejs \
  emmet-ls \
  pyright \
  typescript typescript-language-server \
  vim-language-server \
  vls \
  vscode-langservers-extracted \
  yaml-language-server

curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
chmod +x ~/.local/bin/rust-analyzer

curl -L https://github.com/latex-lsp/texlab/releases/latest/download/texlab-x86_64-linux.tar.gz | tar -xzf - > ~/.local/bin/texlab
chmod +x ~/.local/bin/texlab
