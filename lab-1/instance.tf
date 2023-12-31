resource "aws_instance" "bastion" {
  ami                    = "ami-0703b5d7f7da98d1e"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.public_subnet_az1.id
  vpc_security_group_ids = [aws_security_group.public_ssh_sg.id]
  key_name               = aws_key_pair.tf_key_pair.id
  user_data              = <<-EOF
                #!/bin/bash
                    echo '${tls_private_key.rsa-key.private_key_pem}' > /home/ec2-user/tf_key_pair
                    chmod 400 private_key.pem
                EOF
  tags = {
    Name = "bastion"
  }
}

resource "aws_instance" "application" {
  ami                    = "ami-0703b5d7f7da98d1e"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.private_subnet_az1.id
  key_name               = aws_key_pair.tf_key_pair.id
  vpc_security_group_ids = [aws_security_group.private_ssh_sg.id]

  tags = {
    Name = "application"
  }
}