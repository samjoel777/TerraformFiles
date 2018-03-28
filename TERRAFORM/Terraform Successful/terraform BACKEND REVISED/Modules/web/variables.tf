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
variable "private_key_path" {
  default="win1p.pem"
}
