Terraform code for AWS ECS

This code will provision aws ecs cluster for your application. This will create VPC with three public subnet in different AZ of Indian region also enable autoscaling of EC2 instance so incase memory or cpu is over utilized, it will create new instance with ECS ami and create a new container with mentioned image. It will create required role which are required for provisioning the cluster. We have defined output variable which will give us URL for accessing our application.
Prerequisite:
1. Terraform version v0.12 and above.
2. AWS account.
Running this Code:
•	Configure you aws account details with aws configure command.
•	Clone this code in your machine.
•	Install terraform executable in your machine it should be version v0.12
Below are commands to run the code:
•	aws configure (it will ask your access key, secret key, region and output, Provide your account details
•	sudo yum install wget –y

############################
## Terraform installation ##
############################
## Get terraform package
wget https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip

## Unzip the package
unzip terraform_0.11.13_linux_amd64.zip

## Move the package to /usr/local/bin
sudo mv terraform /usr/local/bin/ && rm terraform_0.11.13_linux_amd64.zip

## Check if terraform working properly
terraform --version

•	git clone https://github.com/dnyaneshwar-LT/my-ecs-cluster.git
•	cd my-ecs-cluster
•	terraform init
•	terraform plan
•	terraform apply
