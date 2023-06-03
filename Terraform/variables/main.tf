provider "aws" {
  region = "us-east-1"
}
variable "vpcname" {
  type = string
  default = "streaming_vpc"
}

variable "sshport" {
  type = number
  default = 22
}

variable "enabled" {
  default = true
}

variable "firewall" {
  type = list(string)
  default = [ "rule1", "rule2" ]
}

variable "map" {
  type = map
  default = {
    Key1 = "Value1"
    Key2 = "Value2"
  }
}

variable "inputname" {
  type = string
  description = "Set the name of the VPC"
}   

resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = var.inputname
  }
}