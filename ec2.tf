resource "aws_instance" "test-server" {
  ami           = "ami-0ae8f15ae66fe8cda"  
  instance_type = "t2.micro"
  tags = {
    Name = "test-vm"
  }
}
resource "aws_security_group" "test_sg" {
  name_prefix = "example_sg"

  # Allow SSH access (port 22)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Open to all IPs; restrict as necessary
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "test-vm"
  }
}