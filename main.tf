provider "aws" {
  region = "us-east-1"  # Cambia a tu región preferida
}

resource "aws_instance" "mi_ec2" {
  ami           = "ami-0c55b159cbfafe1f0"  # AMI de Amazon Linux 2 (us-east-1)
  instance_type = "t2.micro"

  tags = {
    Name = "MiPrimerServidor"
  }
}

