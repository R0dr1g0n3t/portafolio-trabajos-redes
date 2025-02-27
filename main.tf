provider "aws" {
  region = "sa-east-1"  # Cambia a tu región preferida
}

resource "aws_instance" "mi_ec2" {
  ami           = "ami-00a5253c35ee63686"  # AMI de Amazon Linux 2 (us-east-1)
  instance_type = "t2.micro"

  tags = {
    Name = "MiPrimerServidor"
  }
}

