#provider "aws1" {
#  access_key = "${var.aws_access_key}"
#  secret_key = "${var.aws_secret_key}"
#  region     = "${var.region}"
#}
#
#resource "aws_instance" "web-server" {
#  ami           = "ami-0c2aba6c"
#  instance_type = "t2.micro"
#
#  tags {
#    Name = "terraformtraining.com"
#  }
#}