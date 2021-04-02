resource "aws_instance" "sandbox" {
  count         = 2
  ami           = "ami-06098fd00463352b6" # Amazon Linux 2 AMI(64 ビット x86)
  instance_type = "t3.micro"

  tags = {
    Name = "${format("sandbox-%02d", count.index + 1)}"
  }
}