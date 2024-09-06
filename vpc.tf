resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "MyVPC"
  }
}

/* data "aws_availability_zones" "name" {}
output "az" {
value = data.aws_availability_zones.name
} */

resource "aws_subnet" "subnet-1" {
  availability_zone = "us-east-1a"
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "subnet-1"
  }
}

resource "aws_subnet" "subnet-2" {
  availability_zone = "us-east-1b"
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet-2"
  }
}