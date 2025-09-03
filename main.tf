data "aws_vpc" "dev-vpc" {
  filter {
    name   = "tag:Name"
    values = ["DEV-VPC"]
  }
}
output "aws_vpc_id" {
  value = data.aws_vpc.dev-vpc.id
}

data "aws_subnet" "public_subnet" {
  filter {
    name   = "tag:Name"
    values = ["andt01-subnet-public1-ap-northeast-2a"]
  }
}

output "aws_public_subnet_id" {
  value = data.aws_subnet.public_subnet.id
}

resource "aws_instance" "bastion" {
  ami = "ami-02eb96b4aa0940b85" # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type = "t2.micro"
  subnet_id     = data.aws_subnet.public_subnet.id

  tags = {
    Name = "MyInstance"
  }
}