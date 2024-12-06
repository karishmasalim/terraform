provider "aws"{
    region = "us-east-1"
}

resource "aws_instance" "aws_linux" {
    count = 1
    ami = "ami-0166fe664262f664c"
    instance_type = "t2.micro"
    key_name = "keypair"
    tags = {
        Name = "aws_linux"
    }
}
