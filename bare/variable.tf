variable cidr_prefix {
  default = "10.0"
}
variable bastion_ami_id {
  # ap-northeast-1
  # amazon-linux 2017.09.1 
  default = "ami-ceafcba8"
}

variable bastion_instance_type {
  default = "t2.micro"
}

variable bastion_key_name {
  description = "ssh key pair name"
}

variable bastion_allowed_ips  {
  default = "0.0.0.0/0"
}
  
