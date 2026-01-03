resource "aws_vpc" "vpc_east" {
  provider   = aws.east
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc-1"
  }
}

resource "aws_vpc" "vpc_west" {
  provider   = aws.west
  cidr_block = "10.1.0.0/16"

  tags = {
    Name = "vpc-2"
  }
}
