#provider "aws" {
#  region     = var.region
#  access_key = var.access_key
#  secret_key = var.secret_key
#  }
provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "web-server" {
  ami           = "ami-0e6329e222e662a52"
  instance_type = "t2.micro"

#  tags {
#    Name = "terraformtraining.com"
#  }
}
