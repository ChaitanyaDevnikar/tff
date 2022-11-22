#provider "aws" {
#  region     = var.region
#  access_key = var.access_key
#  secret_key = var.secret_key
#  }
provider "aws" {
  access_key = "${var.AWS_ACCESS_KEY_ID}"
  secret_key = "${var.AWS_SECRET_ACCESS_KEY}"
  region     = "${var.region}"
}

resource "aws_instance" "web-server" {
  ami           = "ami-0e6329e222e662a52"
  instance_type = "t2.micro"
  key_name = "docker"
    user_data = <<EOF
        #! /bin/bash
        sudo yum update -y
        sudo yum install -y docker
        sudo service docker start
        sudo usermod -a -G docker ec2-user
        sudo docker pull chaitany3/new1
        sudo docker run -p 8081:8081 --name terra -d chaitany3/new1
    EOF

#  tags {
#    Name = "terraformtraining.com"
#  }
}
