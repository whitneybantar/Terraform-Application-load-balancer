terraform {
  backend "s3" {
    bucket = "whitn-bucket-week10"
    key = "lbancer/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "terraformlock"
  }
}