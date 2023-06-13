data "aws_ami" "ami" {
  most_recent   = true
  name_regex    = "ansible-image"
  owners        = ["self"]
}

data "aws_ssm_parameter" "ssh_pass" {
  name = "${var.env}.ssh.password"
}