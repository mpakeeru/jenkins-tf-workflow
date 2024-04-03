
resource "aws_instance" "appserver2" {
  ami           = "ami-019f9b3318b7155c5"
  instance_type = "t2.micro"
  tags = {
    Name = "${var.environment}-appserver2"
  }
}

