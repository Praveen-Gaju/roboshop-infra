#image deleted from AWS
/*
data "aws_ami" "ami" {
  most_recent   = true
  name_regex    = "ansible-image"
  owners        = ["self"]
}
*/


#centos-8 image
data "aws_ami" "ami" {
  most_recent   = true
  name_regex    = "Centos-8-DevOps-Practice"
  owners        = ["973714476881"]
}


data "aws_ssm_parameter" "ssh_pass" {
  name = "${var.env}.ssh.password"
}