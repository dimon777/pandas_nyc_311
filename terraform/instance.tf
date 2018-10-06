provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "dmitry_instance" {
  ami		= "ami-0ac019f4fcb7cb7e6"
#  ami           = "ami-059eeca93cf09eebd"
  instance_type = "m4.large"
  key_name = "aws_key"
  tags {
    Name = "dmitry_instance"
 }
}
