
# terraproject-aws

Baseado no curso de Terraform da Alura, criei este repositório para usar como referência de conhecimento técnico da ferramenta.
Os arquivos criados irão provisionar infraestrutura na AWS de forma automatizada. Os principais componentes incluem definições de instâncias EC2, tabelas DynamoDB, e buckets S3. Variáveis são usadas para personalizar configurações, como AMIs e blocos CIDR. O foco é na modularidade e flexibilidade para facilitar a implantação e gestão de recursos na AWS.

## Requisitos

Para executar os passos a seguir é esperado que você já tenha criado uma conta na AWS e esta conta esteja logada em sua máquina através do AWS CLI ou através do uso de variáveis de ambiente.

Também é esperado que o Terraform esteja instalado em sua máquina.

Será necessário gerar um par de chaves, uma pública e outra privada para ser utilizada na conexão SSH, defina o nome como "terrakey" ou altere as referências no código.

[Documentação para instalação do Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

[Documentação para instalação do AWS CLI](https://docs.aws.amazon.com/pt_br/cli/latest/userguide/getting-started-install.html)

[Documentação para criar par de chaves](https://docs.aws.amazon.com/pt_br/AWSEC2/latest/UserGuide/create-key-pairs.html)

## Executando localmente

Clone o projeto

```bash
  git clone git@github.com:oliveiragt/terraproject-aws.git
```

Entre no diretório do projeto

```bash
  cd terraproject-aws
```

Inicie o Terraform

```bash
  terraform init
```

Execute o plan para que a ferramenta avalie quais recursos serão provisionados

```bash
  terraform plan
```

Você irá obter um erro pois não especificou um IP na variável "cdir_allowed_ips" no arquivo vars.tf

Para corrigir basta ir no arquivo vars.tf e passar seu IP com /32 para que o Security Group que irá permitir SSH nas instâncias EC2 permita seu acesso, é possível inserir uma lista de IPs caso deseje.

Verifique qual seu IP [aqui](https://meuip.com.br/).

Após inserir o IP no arquivo vars.tf, rode novamente o comando para planejar as alterações.

```bash
  terraform plan
```

Após analisar todas as alterações que serão implementadas, execute o comando para aplicar as alterações.

```bash
  terraform apply
```

Tome liberdade para alterar os parâmetros e analisar o comportamento da ferramenta.

