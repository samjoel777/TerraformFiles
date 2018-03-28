variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "region" {
    default="us-west-2"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "imageid"{
    default="ami-7f43f307"
}
variable "key_name"{
  default="win1p"
}
variable "security_groups"{
  type="list"
  default=["ALLTCP"]
}

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
}


