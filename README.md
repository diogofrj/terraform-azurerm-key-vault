# 📂 Documentação Geral - Estrutura de Pastas 🗂️

Este repositório foi criado para servir como base de exemplos, onde você pode baixar, customizar e desenvolver módulos reutilizáveis para serem integrados em diversos projetos. Ele organiza scripts, templates e configurações que auxiliam na implementação de infraestrutura como código, utilizando ferramentas como Terraform, Terragrunt, Azure CLI, entre outras. 🚀

## 🏗️ Estrutura do Repositório

A seguir, uma visão geral dos principais diretórios e arquivos:

### 📍 Raiz do Repositório

- **📄 .env.template**  
  Arquivo modelo com as variáveis de ambiente necessárias para autenticação e configuração dos serviços (por exemplo, credenciais e parâmetros do Cloud Provider). Após clonar o repositório, renomeie-o para `.env` e ajuste os valores conforme o seu ambiente. 🔑

- **🚫 .gitignore**  
  Arquivo que especifica quais arquivos e pastas não devem ser versionados. Mantenha-o atualizado para evitar o commit de arquivos sensíveis ou desnecessários. 🙈

- **⚙️ .pre-commit-config.yaml**  
  Configuração para pre-commit hooks que garantem a qualidade e integridade do código, executando ferramentas como Trivy para scans de segurança e Terraform Docs para documentação. 🔍

- **📖 README.md**  
  Este documento (além do atual) fornece informações sobre o repositório, seu propósito e orientações de utilização. 📚

### 📁 Pasta Scripts

Contém diversos scripts de shell que automatizam tarefas importantes e rotineiras: 🤖

- **📜 scripts/tools/runtf.sh**  
  Script que agrega funções para operações com Terraform, como criar backups, validar configurações, executar planos, aplicar mudanças, além de diversas funções auxiliares para gerenciamento da infraestrutura. 🏗️

- **📦 scripts/tools/install_tools.sh**  
  Script responsável por instalar e validar ferramentas essenciais (como Checkov, Terraform, e outras utilitárias) necessárias para o funcionamento do ambiente. 🛠️

- **💾 scripts/create_backend.sh**  
  Script que automatiza o processo de criação do backend, configurando recursos como Resource Group, Storage Account e Container no Azure para armazenamento do estado do Terraform. ☁️

### 📂 Pasta Templates

Esta pasta reúne modelos que padronizam configurações e facilitam a criação de novos projetos: 🎨

- **📝 templates/Makefiles**  
  Contém diversos arquivos Makefile para automatizar comandos relacionados ao Terraform e Terragrunt, como `init`, `plan`, `apply`, `destroy`, além de comandos para executar pré-commits, versionamento e ações com Git. ⚡

- **🔧 templates/azure-pipelines**  
  Modelos de configuração para pipelines no Azure DevOps. Assim, você pode facilmente configurar a integração contínua (CI) e deploy da infraestrutura usando o Azure Pipelines. 🚀

- **📄 templates/terraform-docs**  
  Arquivos que padronizam a geração de documentação automatizada para módulos Terraform, incluindo um modelo de arquivo de configuração (`.terraform-docs.yml`) e uma estrutura de pastas (como a pasta `docs` com subdiretórios para diagramas e guias). 📊

- **🤖 templates/github-actions**  
  Exemplos de workflows para GitHub Actions, permitindo a integração e automação dentro da plataforma GitHub. 🐙

### 📚 Pasta de Documentação

Dentro dos diretórios de templates, você encontrará também arquivos e subpastas focados em documentação: 📖

- **🖼️ templates/terraform-docs/images**  
  Pasta destinada ao armazenamento de imagens e diagramas que ilustram a arquitetura dos projetos e módulos. 🎨

- Arquivos README em diversas pastas que fornecem instruções adicionais de configuração e uso, por exemplo, para Azure Pipelines, GitHub Actions e Pre-Commit. 📝

## 🛠️ Como Utilizar Este Repositório

1. **📥 Clone o repositório**  
   Faça o clone do repositório em sua máquina:
   ```bash
   git clone https://github.com/diogofrj/templates-tf-modules.git
   ```

2. **⚙️ Configure as Variáveis de Ambiente**  
   Renomeie o arquivo `.env.template` para `.env` e edite os valores conforme os seus dados de autenticação e configuração do seu Cloud Provider. 🔐

3. **🤖 Utilize os Scripts e Makefiles**  
   Explore os scripts em `scripts/` para executar tarefas automatizadas como criação de backend, instalação de ferramentas e backups. Utilize os Makefiles dos templates para inicializar, validar, planejar, aplicar e destruir sua infraestrutura. ⚙️

4. **🚀 Configure Pipelines e Workflows**  
   Caso esteja utilizando Azure Pipelines ou GitHub Actions, adapte os modelos presentes em `templates/azure-pipelines` e `templates/github-actions` conforme as necessidades do seu projeto. 🔄

5. **🧩 Desenvolva e Reutilize Módulos**  
   Aproveite a estrutura modular deste repositório para desenvolver novos módulos e integrá-los facilmente em outros projetos. A padronização dos scripts, templates e documentação facilita a manutenção e evolução dos seus projetos. 🏗️

## 🎯 Considerações Finais

Este repositório serve como ponto de partida para desenvolvedores que desejam criar módulos de infraestrutura como código padronizados e reutilizáveis em diferentes contextos. Sinta-se à vontade para ajustar scripts, alterar templates e expandir as funcionalidades de acordo com as necessidades do seu ambiente e dos seus projetos. 💡

Caso tenha dúvidas ou sugestões, utilize as issues ou envie pull requests para aprimorar continuamente este repositório. Boas práticas, colaboração e evolução contínua fazem parte deste projeto! 🤝

Seja bem-vindo e bons desenvolvimentos! 🚀

📄 .env.template - arquivo de variáveis de ambiente, renomear para .env com as variáveis necessárias para autenticação no Cloud Provider

🚫 .gitignore - arquivo de ignorar arquivos e diretórios para não serem versionados

⚙️ .pre-commit-config.yaml - arquivo de configuração do pre-commit para executar o Trivy e o Terraform Docs

🔍 trivy.yaml - arquivo de configuração do Trivy para executar o scan do código Terraform
🚫 .trivyignore - arquivo de ignorar arquivos e diretórios para não serem executados no Trivy


## 🔍 Checar versões atuais

## tflint

```bash
curl -s https://api.github.com/repos/terraform-linters/tflint-ruleset-azurerm/releases/latest | jq -r '.tag_name | ltrimstr("v")'
```

[![TFLint Ruleset for Azure](https://img.shields.io/github/v/release/terraform-linters/tflint-ruleset-azurerm?label=Latest%20Release)](https://github.com/terraform-linters/tflint-ruleset-azurerm/releases)

