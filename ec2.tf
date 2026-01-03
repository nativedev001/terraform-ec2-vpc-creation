resource "aws_instance" "ec2_east" {
  provider      = aws.east
  ami           = data.aws_ssm_parameter.amazon_linux_east.value
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.subnet_east.id
  key_name      = "mykey"

  associate_public_ip_address = true

  tags = {
    Name = "ec2-east"
  }
}

resource "aws_instance" "ec2_west" {
  provider      = aws.west
  ami           = data.aws_ssm_parameter.amazon_linux_west.value
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.subnet_west.id
  key_name      = "mykey"

 
  associate_public_ip_address = true

  tags = {
    Name = "ec2-west"
  }
}
