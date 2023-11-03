##output for  alb dns name/link

output "alb_dns_name" {
  value = aws_lb.application-lb.dns_name
} 

##output for vpc id
output "vpc_id" {
  value = aws_vpc.vpc1.id
}

##output for ec2 sg id
output "security_group1_id" {
  value = aws_security_group.ec2.id
}

##output for alb sg id
output "security_group2_id" {
  value = aws_security_group.lb.id
}


##output for ec2 one instance id
output "ec2_instance1_id" {
  value = aws_instance.ec2-one.id
}

##output for ec2 two instance id
output "ec2_instance2_id" {
  value = aws_instance.ec2-two.id
}


##output for public subnet-1 id
output "public_subnet1_id" {
  value = aws_subnet.public_subnet1.id
}

##output for public subnet-2 id
output "public_subnet2_id" {
  value = aws_subnet.public_subnet2.id
}

##output for private subnet-1 id
output "private_subnet1_id" {
  value = aws_subnet.private_subnet1.id
}

##output for private subnet-2 id
output "private_subnet2_id" {
  value = aws_subnet.private_subnet2.id
}

