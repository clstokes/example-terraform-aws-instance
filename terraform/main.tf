//
// Variables
//
variable "project_name" {
  default = "example-terraform-aws-instance"
}

variable "region" {
  default = "us-east-1"
}

variable "source_ami" {
  default = "ami-9a562df2"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "vpc_cidr" {
  default = "172.31.0.0/16"
}

variable "vpc_cidrs" {
  default = "172.31.0.0/20,172.31.16.0/20,172.31.32.0/20,172.31.48.0/20"
}

//
// Outputs
//
output "main_host" {
  value = "${aws_instance.main.public_ip}"
}
