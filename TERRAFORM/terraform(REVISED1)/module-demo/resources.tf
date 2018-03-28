variable "accesskey" {}
variable  "secretkey" {}

module "web" {
    source = ".//Modules/web"
    aws_access_key = "${var.accesskey}"
    aws_secret_key ="${var.secretkey}"
}    

output "moduleip" {
  value = "${module.web.ip}"
}

output "moduledns" {
  value = "${module.web.hostname}"
}