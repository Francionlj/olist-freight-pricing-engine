#!/bin/bash

# ==========================================
# Script de Inicialização do Ambiente Local
# Projeto: Olist Freight Pricing Engine
# ==========================================

echo "Iniciando o setup do ambiente de desenvolvimento..."

# 1. Cria o ambiente virtual (.venv) usando o Python 3 do macOS
echo "-> [1/4] Criando o diretório .venv..."
python3 -m venv .venv

# 2. Ativa o ambiente virtual (sintaxe para Unix/macOS)
echo "-> [2/4] Ativando o ambiente virtual..."
source .venv/bin/activate

# 3. Garante que o pip local está na versão mais recente
echo "-> [3/4] Atualizando o pip core..."
pip install --upgrade pip

# 4. Instala as dependências de produção e, em seguida, as de desenvolvimento
echo "-> [4/4] Instalando dependências do projeto..."

if [ -f "requirements.txt" ]; then
    echo "Instalando pacotes de produção (requirements.txt)..."
    pip install -r requirements.txt
else
    echo "Aviso: requirements.txt não encontrado."
fi

if [ -f "requirements-dev.txt" ]; then
    echo "Instalando pacotes de desenvolvimento (requirements-dev.txt)..."
    pip install -r requirements-dev.txt
fi

echo "=========================================="
echo "Setup concluído com sucesso!"
echo "Para ativar o ambiente no seu terminal, rode:"
echo "source .venv/bin/activate"
echo "=========================================="