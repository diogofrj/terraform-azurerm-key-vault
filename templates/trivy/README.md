# Como Utilizar o Trivy

O Trivy é uma ferramenta de segurança que realiza varreduras em infraestrutura como código (IaC) para identificar vulnerabilidades e más configurações. Este guia básico explica como utilizar o Trivy em projetos Terraform.

## Pré-requisitos
- Ter o Trivy instalado na máquina
- Projeto Terraform configurado
- Arquivo de configuração `trivy.yaml` presente no diretório raiz

## Executando o Trivy

1. Navegue até o diretório do projeto Terraform
2. Execute o comando:

```bash
trivy fs --config trivy.yaml --ignorefile .trivyignore --format table .
```

> [!NOTE]
> O comando acima irá realizar a varredura de todos os arquivos e diretórios no projeto Terraform.

**Importante:** Copie os arquivos para o diretório raiz do projeto Terraform para que o pré-commit-hooks possa executar o Trivy automaticamente.

## Configuração do Trivy

[Documentação do Trivy](https://aquasecurity.github.io/trivy/v0.55.0/getting-started/installation/)

[Documentação do Trivy para Terraform](https://aquasecurity.github.io/trivy/v0.55.0/getting-started/terraform/)

[Documentação do Trivy para Terraform](https://aquasecurity.github.io/trivy/v0.55.0/getting-started/terraform/)


