🌐 VPC Terraform Project
📝 Descrição

Este projeto utiliza Terraform para provisionar uma Virtual Private Cloud (VPC) na AWS e configurar um cluster Kubernetes com 2 nodes. Cada node contém 2 máquinas, proporcionando uma infraestrutura robusta e escalável na nuvem. ☁️
📁 Estrutura do Projeto

O projeto é organizado da seguinte forma:

    main.tf: Arquivo principal que define a infraestrutura da VPC, subnets, internet gateway, route table, roles e policies, além do cluster Kubernetes e seus recursos associados. 🏗️
    variables.tf: Define as variáveis usadas na configuração do Terraform. 🔧
    outputs.tf: Define as saídas que o Terraform gera após o provisionamento. 📈
    terraform.tfvars: Contém valores para as variáveis definidas em variables.tf. 🗒️
    modules/: Diretório contendo módulos reutilizáveis para diferentes partes da infraestrutura. 📦

🚀 Como Usar

    Clone o Repositório

    bash

git clone https://github.com/Gardene10/vpc-terraform.git

Navegue para o Diretório do Projeto

bash

cd vpc-terraform

Inicialize o Terraform

bash

terraform init

Revise o Plano de Execução

bash

terraform plan

Aplique a Configuração

bash

terraform apply

Isso cria:

    Uma VPC
    Subnets
    Um Internet Gateway
    Route Tables
    Roles e Policies necessárias
    Um Cluster EKS com 2 nodes, cada um com 2 máquinas
    Um kubeconfig para acesso ao cluster
    Um Deployment de exemplo no cluster

(Opcional) Destrua a Infraestrutura

bash

    terraform destroy

    Isso remove:
        O Cluster EKS
        Recursos associados como VPC, subnets, e internet gateway

📂 Conteúdo dos Arquivos

    main.tf: Configura a VPC, subnets, internet gateway, route table, roles e policies, e o cluster Kubernetes. Inclui a criação de um cluster com 2 nodes, cada um com 2 máquinas. 🏢
    variables.tf: Declara variáveis usadas em main.tf. 📊
    outputs.tf: Define o que será exibido após a execução. 📋
    terraform.tfvars: Valores das variáveis para configuração. 🧩
    modules/: Contém módulos reutilizáveis, como sub-redes e grupos de segurança. 🔍

🏷️ Fluxo Completo
Provisionamento:

    Criação da VPC:
        Define e cria uma Virtual Private Cloud (VPC) para isolar a rede na AWS. 🏠

    Criação de Subnets:
        Define e cria subnets dentro da VPC para segmentar a rede em diferentes zonas de disponibilidade. 🕳️

    Configuração do Internet Gateway:
        Cria e anexa um Internet Gateway à VPC para permitir o tráfego de entrada e saída para a Internet. 🌐

    Configuração das Route Tables:
        Define e configura tabelas de roteamento para gerenciar o tráfego entre a VPC, subnets e o Internet Gateway. 🗺️

    Definição de Roles e Policies:
        Cria e associa roles e policies para controlar o acesso e permissões dos recursos na AWS. 🛡️

    Criação do Cluster EKS:
        Configura e cria um cluster Kubernetes na AWS usando o Amazon EKS (Elastic Kubernetes Service). 🏢

    Configuração do kubeconfig:
        Gera e configura o arquivo kubeconfig para permitir o acesso ao cluster EKS. 🔧

    Deployment de Exemplo no Cluster:
        Cria um Deployment no cluster Kubernetes para implantar uma aplicação exemplo. 🚀

Destruição:

    Remoção do Cluster EKS:
        Remove o cluster Kubernetes e todos os recursos associados. ❌

    Exclusão dos Recursos Associados:
        Remove a VPC, subnets, internet gateway e qualquer outro recurso associado criado durante o provisionamento. 🗑️

🤝 Contribuições

Para contribuir, por favor:

    Faça um fork do repositório. 🍴
    Crie uma branch para suas alterações. 🌿
    Envie um pull request com uma descrição clara das mudanças. 📤

🏷️ Licença

Este projeto está licenciado sob a Licença MIT. 📝
