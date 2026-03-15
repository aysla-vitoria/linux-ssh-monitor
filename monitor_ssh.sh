#!/bin/bash

LOG_FILE="/var/log/auth.log"

echo "--- 🕵️ Monitor de Segurança SSH (WSL) ---"
echo "Monitorando tentativas em tempo real..."

# Usamos sudo para garantir a leitura do log
sudo tail -f $LOG_FILE | grep --line-buffered "Failed password" | while read LINHA; do
    
    # Extrai o IP 
    IP=$(echo "$LINHA" | grep -oE "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}")
    
    # Extrai o Usuário 
    USER=$(echo "$LINHA" | grep -oP 'for (invalid user )?\K[^ ]+')

    echo -e "\n\e[31m[!] TENTATIVA DE INVASÃO DETECTADA!\e[0m"
    echo "👤 Usuário: $USER"
    echo "🌐 Origem: ${IP:-127.0.0.1}"
    echo "⏰ Data: $(date)"
    echo "--------------------------------------"
done
