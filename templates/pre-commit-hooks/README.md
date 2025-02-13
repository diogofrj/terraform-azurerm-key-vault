# Guia de Configuração e Uso do Pre-Commit Hooks

Este guia detalha o processo de instalação e configuração do Pre-Commit Hooks para projetos Terraform, visando garantir a qualidade, segurança e padronização do código.

## 📋 Pré-requisitos

Antes de iniciar, certifique-se de ter:

- [Python 3.6+](https://www.python.org/downloads/) instalado
- [Git](https://git-scm.com/) instalado e configurado
- Projeto Terraform configurado e versionado

## 🛠️ Instalação

Siga os passos abaixo para configurar o ambiente:

1. Instale o pre-commit via pip:

```bash
pip install pre-commit
```

2. Copie o arquivo `.pre-commit-config.yaml` para o diretório raiz do projeto Terraform.

3. Instale os hooks necessários:

```bash
pre-commit install
```




pre-commit autoupdate


pre-commit run --all-files


pre-commit run --all-files --show-diff-on-failure


pre-commit run --all-files --show-diff-on-failure --verbose