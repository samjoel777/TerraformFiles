variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "key_name" {
    default = "win1p"
}
variable "aws_region" {
    default = "us-west-2"
}
variable "imageid" {
    default = "ami-f2d3638a"
}
variable "homepagepath" {
    default = "index.html"
}
variable "private_key_path" {
  default="win1p.pem"
}