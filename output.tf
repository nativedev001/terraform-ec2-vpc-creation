output "ec2_east_instance_id" {
  value = aws_instance.ec2_east.id
}

output "ec2_west_instance_id" {
  value = aws_instance.ec2_west.id
}

output "vpc_east_id" {
  value = aws_vpc.vpc_east.id
}

output "vpc_west_id" {
  value = aws_vpc.vpc_west.id
}
