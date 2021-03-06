# use terraform init with backend config 
#terraform init --backend-config="dynamodb_table=qt-terraform" --backend-config="access_key=whatever" --backend-config="secret_key=whatever"
terraform {
  backend "s3" {
    bucket = "samterraformbackend1"
    key    = "my-module-demo.state"
    region = "us-west-2"
  }
}

module "web" {
  source           = ".//Modules/web"
  aws_access_key   = "${var.accesskey}"
  aws_secret_key   = "${var.secretkey}"
  private_key_path = "${var.private_key_path}"
}
