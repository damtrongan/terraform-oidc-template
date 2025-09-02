resource "aws_ec2_host" "bastion" {
  instance_type = "t3.micro"
  availability_zone = "ap-northeast-2a"
  auto_placement = "on"
}