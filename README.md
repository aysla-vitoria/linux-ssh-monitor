# 🕵️ SSH Real-Time Monitor (Bash)

Script em Bash desenvolvido para monitorar tentativas de ataques de força bruta (Brute Force) via SSH em sistemas Linux.

## 🚀 Funcionalidades
- **Monitoramento em Tempo Real:** Utiliza o comando `tail -f` para analisar os logs do sistema (`/var/log/auth.log`) instantaneamente.
- **Detecção de Intrusão:** Filtra tentativas de login falhas e extrai informações críticas.
- **Extração de Dados:** Identifica o usuário alvo e o IP de origem do atacante.
- **Alertas Visuais:** Interface amigável no terminal com marcação de data e hora.

## 🛠️ Tecnologias
- **Bash Scripting**
- **RegEx** (Expressões Regulares para extração de dados)
- **Linux Auth Logs** (Segurança de infraestrutura)

## 📖 Como Usar

Para rodar este monitor no seu ambiente Linux (ou WSL), siga os passos abaixo:

### 1. Pré-requisitos
Certifique-se de que o serviço de log do sistema e o SSH estão ativos:
```bash
sudo service rsyslog start
sudo service ssh start

### 2. Instalação
Clone o repositório e entre na pasta:
