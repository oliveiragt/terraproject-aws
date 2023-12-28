
# terraproject-aws
Based on the Terraform course from Alura, I created this repository to use as a reference for technical knowledge of the tool.
The files created will provision infrastructure on AWS in an automated manner. Key components include definitions for EC2 instances, DynamoDB tables, and S3 buckets. Variables are used to customize settings, such as AMIs and CIDR blocks. The focus is on modularity and flexibility to facilitate the deployment and management of resources on AWS.

## Requirements

To execute the following steps, it is expected that you have already created an AWS account, and this account is logged into your machine through AWS CLI or through the use of environment variables.

It is also expected that Terraform is installed on your machine.

You will need to generate a pair of keys, one public and one private, to be used for SSH connection. Set the name as "terrakey" or modify the references in the code.

[Terraform Installation Documentation](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

[AWS CLI Installation Documentation](https://docs.aws.amazon.com/pt_br/cli/latest/userguide/getting-started-install.html)

[Key Pair Creation Documentation](https://docs.aws.amazon.com/pt_br/AWSEC2/latest/UserGuide/create-key-pairs.html)

# Running Locally

Clone the project

```bash
  git clone git@github.com:oliveiragt/terraproject-aws.git
```

Enter the project directory

```bash
  cd terraproject-aws
```

Initialize Terraform

```bash
  terraform init
```

Execute the plan so that the tool evaluates which resources will be provisioned

```bash
  terraform plan
```

You will get an error because you did not specify an IP in the "cdir_allowed_ips" variable in the vars.tf file.

To fix it, simply go to the vars.tf file and pass your IP with /32 so that the Security Group that allows SSH to EC2 instances allows your access. You can insert a list of IPs if desired.

Check your IP [here](https://meuip.com.br/).

After inserting the IP in the vars.tf file, run the command again to plan the changes.

```bash
  terraform plan
```

After reviewing all the changes that will be implemented, execute the command to apply the changes.

```bash
  terraform apply
```

Feel free to modify the parameters and analyze the behavior of the tool.
