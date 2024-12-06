provider "aws"{
    region = "us-east-1"
}

resource "aws_instance" "aws_linux" {
    count = 1
    ami = "ami-0ba8711e0e1da2a52"
    instance_type = "t2.micro"
    key_name = "keypair"
    tags = {
        Name = "aws_linux"
    }
}
