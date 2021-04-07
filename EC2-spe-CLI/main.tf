resource "aws_instance" "example" {
  ami           = "ami-06098fd00463352b6"
  instance_type = "t3.micro"

  user_data = <<EOF
    #! /bin/bash
    yum install -y httpd
    systemctl start httpd.service
EOF

  tags = {
    Env  = "dev"
    Name = "tf-testD1"
  }
}