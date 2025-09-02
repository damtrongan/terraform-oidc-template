# General Variables

variable "region" {
  description = "Default region for provider"
  type        = string
  default     = "ap-northeast-2"
}

# EC2 Variables

variable "ami" {
  description = "Amazon machine image to use for ec2 instance"
  type        = string
  default     = "ami-0662f4965dfc70aca" # Ubuntu 20.04 LTS // ap-northeast-2
}

variable "instance_type" {
  description = "ec2 instance type"
  type        = string
  default     = "t2.micro"
}

