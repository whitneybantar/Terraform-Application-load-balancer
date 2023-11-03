resource "aws_eip" "ei" {
 
}
resource "aws_nat_gateway" "nat1" {
  allocation_id = aws_eip.ei.id
  subnet_id     = aws_subnet.public_subnet1.id

  tags = {
    Name = "gw NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gtw1]
}