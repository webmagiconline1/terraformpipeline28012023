resource "aws_instance" "example" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = var.instance_type
}
