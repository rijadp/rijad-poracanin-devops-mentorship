resource "aws_instance" "web-server" {
  ami           = "ami-068e73a48b3c5247a"
  instance_type = "t2.micro"
  key_name      = "rijad-poracanin-web-server-key"
  vpc_security_group_ids = [aws_security_group.web-server-sg.id]
  tags = {
    Name = "task-12-web-server-tf"
    CreatedBy = "rijad.poracanin"
    Project = "task-12"
    IaC = "Terraform"
  }
}

resource "aws_instance" "db-server" {
    ami = "ami-068e73a48b3c5247a"
    instance_type = "t2.micro"
    key_name      = "rijad-poracanin-web-server-key"
    vpc_security_group_ids = [aws_security_group.db-server-sg.id]
    tags = {
        Name = "task-12-db-server-tf"
        CreatedBy = "rijad.poracanin"
        Project = "task-12"
        IaC = "Terraform"
  }
}

resource "aws_security_group" "web-server-sg" {
  name        = "task-12-web-server-tf"
  description = "Web Server Security Group"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  }

  resource "aws_security_group" "db-server-sg" {
  name        = "task-12-db-server-tf"
  description = "Database Server Security Group"

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
