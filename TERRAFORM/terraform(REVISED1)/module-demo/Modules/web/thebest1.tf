provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "web" {
  ami           = "${var.imageid}"
  instance_type = "${var.instance_type}"
  key_name      = "${var.key_name}"
  security_groups= "${var.security_groups}"

connection {
    user        = "ec2-user"
    private_key = "${file(var.private_key_path)}"
  }

provisioner "remote-exec" {
    inline = [
      "sudo yum install httpd -y",
      "sudo service httpd start",
      "sudo chkconfig httpd on"
    ]
}  
}




