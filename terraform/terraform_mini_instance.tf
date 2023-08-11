# Configuring provider
provider "aws" {
 region = "us-east-1"
# access_key = "my-access-key"
# secret_key = "my-secret-key"
}

# Creating an Ubuntu EC2 instance
resource "aws_instance" "terraform-instance" {
 ami = "ami-053b0d53c279acc90"
 instance_type = "t2.micro"
 availability_zone = "us-east-1a"
 key_name = "demo"
 tags = {
 Name = "DB Server"
 }
}

