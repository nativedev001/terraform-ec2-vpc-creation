data "aws_ssm_parameter" "amazon_linux_east" {
  provider = aws.east
  name     = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

data "aws_ssm_parameter" "amazon_linux_west" {
  provider = aws.west
  name     = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}
