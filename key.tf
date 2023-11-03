# Generates a secure private key and encodes it as PEM
resource "tls_private_key" "lb_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}
# Create the Key Pair
resource "aws_key_pair" "lb_key" {
  key_name   = "privatekeypair1"  
  public_key = tls_private_key.lb_key.public_key_openssh
}