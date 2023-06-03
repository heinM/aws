provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "streaming_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name : "streaming_vpc"
  }
}
