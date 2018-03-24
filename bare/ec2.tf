resource "aws_instance" "bastion" {
  ami = "${var.bastion_ami_id}"
  instance_type = "${var.bastion_instance_type}"
  key_name = "${var.bastion_key_name}"
  subnet_id = "${aws_subnet.1.id}"
  associate_public_ip_address = true
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]
  
  tags {
    Name = "bastion"
  }
}

resource "aws_security_group" "allow_ssh" {
  name = "allow_ssh"
  description = "Allow specified ssh inbound traffic"
  vpc_id = "${aws_vpc.main.id}"
  
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["${var.bastion_allowed_ips}"]
  }
}
