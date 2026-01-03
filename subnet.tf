resource "aws_subnet" "subnet_east" {
  provider          = aws.east
  vpc_id            = aws_vpc.vpc_east.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "subnet-east-1"
  }
}

resource "aws_subnet" "subnet_west" {
  provider          = aws.west
  vpc_id            = aws_vpc.vpc_west.id
  cidr_block        = "10.1.1.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name = "subnet-west-2"
  }
}
