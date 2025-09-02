data "aws_vpc" "dev-vpc" {
  filter {
    name   = "tag:Name"
    values = ["DEV-VPC"]
  }
}
output "aws_vpc_id" {
  value = data.aws_vpc.dev-vpc.id
}