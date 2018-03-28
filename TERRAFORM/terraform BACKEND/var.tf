variable "accesskey" {}
variable "secretkey" {}

variable "security_groups" {
  type    = "list"
  default = ["AllTCP"]
}

variable "private_key_path" {
  default = "win1p.pem"
}
