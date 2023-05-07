data "aws_caller_identity" "current" {}

data "aws_ami" "ami" {
  most_recent      = true
  #below image is used when we are executing roboshop with shell script
  #name_regex       = "Centos-8-DevOps-Practice"
  #owners           = ["973714476881"]
  name_regex        = "devops-practicewih-Ansible"
  owners            = [data.aws_caller_identity.current.account_id]
}

#aws ec2 instance
resource "aws_instance" "ec2" {
  ami                     = data.aws_ami.ami.image_id
  instance_type           = var.instance_type
  vpc_security_group_ids  = [aws_security_group.sg.id]
  tags = {
    Name = var.component
  }
}

resource "null_resource" "provisioner" {
  provisioner "remote-exec" {
    connection {
      host      = aws_instance.ec2.public_ip
      user      = "centos"
      password  = "DevOps321"
    }

    inline = [
      #below commands are used to execute using shell script
#      "git clone https://github.com/Praveen-Gaju/roboshop-shell.git",
#      "cd roboshop-shell",
#      "sudo bash ${var.component}.sh ${var.password}"
      #below code is used to execute script using ansible
      "sudo set-hostname ${var.component}",
      "ansible-pull -i localhost, -U https://github.com/Praveen-Gaju/roboshop-ansible.git roboshop.yml -e role_name=${var.component}"
    ]
  }
}

#security group
resource "aws_security_group" "sg" {
  name        = "${var.component}-${var.env}-sg"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "ALL"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  tags = {
    Name = "${var.component}-${var.env}-sg"
  }
}

#route53 records
resource "aws_route53_record" "record" {
  zone_id = "Z10378632KDOC11M5RXOI"
  name    = "${var.component}-${var.env}.devopspract.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2.private_ip]
}

#variables
variable "component" {}
variable "instance_type" {}
variable "env" {
  default = "dev"
}
#variable "password" {}   ##used while executing script using shell script