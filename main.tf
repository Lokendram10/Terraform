resource "aws_instance" "Terraform" {
  ami           = var.ami_id
  instance_type = var.ec2_type

  tags = {
    Name = var.ec2_name
  }
  key_name = aws_key_pair.deployer.key_name
    vpc_security_group_ids = [aws_security_group.instance.id]

}

resource "aws_key_pair" "deployer" {
  key_name   =  var.key_name
  public_key =  var.public_key
}

resource "aws_security_group" "instance" {
  name        =  var.sg_name
  description = "Allow SSH and HTTP traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
