resource "aws_instance" "fg-web-app" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_id
  key_name      = var.key_name

  tags = {
    Name = "${var.name}-public-instance"
  }

}

resource "aws_instance" "fg-web-app-private" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.private_subnet_id
  key_name      = var.key_name

  tags = {
    Name = "${var.name}-private-instance"
  }
}
