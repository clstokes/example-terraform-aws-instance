resource "aws_instance" "main" {
  instance_type = "${var.instance_type}"
  ami           = "${var.source_ami}"

  vpc_security_group_ids      = ["${aws_security_group.default_egress.id}"]
  subnet_id                   = "${aws_subnet.subnet_a.id}"
  associate_public_ip_address = true

  tags {
    Name = "${var.project_name}-private"
  }
}
