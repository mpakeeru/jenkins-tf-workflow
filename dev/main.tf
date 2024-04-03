
resource "aws_instance" "appserver" {
  ami           = "ami-019f9b3318b7155c5"
  instance_type = "t2.micro"
  tags = {
    Name = "${var.environment}-appserver"
  }
}

resource "aws_instance" "dbserver" {
  ami           = "ami-019f9b3318b7155c5"
  instance_type = "t2.micro"
  tags = {
    Name = "${var.environment}-dbserver"
  }
}


