provider "aws" {
  region = "us-east-1"  # Change to your preferred AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-05b10e08d247fb927"  # Use a valid AMI for your region
  instance_type = "t2.micro"  # Change the instance type if needed
  key_name      = "pair"  # Replace with your existing key pair

  tags = {
    Name = "MyTerraformEC2"
  }
}
