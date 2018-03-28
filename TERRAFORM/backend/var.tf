variable "accesskey" {}
variable  "secretkey" {}
variable "securitygroups" {
    type = "list"
    default = ["AllTCP"]
}
variable "homepagepath" {
    default = "index.html"
}