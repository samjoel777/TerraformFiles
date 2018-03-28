# Configure the AWS Provider
provider "aws" {
  access_key = "AKIAJ2FGBMKK6LHUMJ2Q"
  secret_key = "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"
  region     = "us-west-2"
}

# Create a web server

resource "aws_instance" "web" {
  ami           = "ami-7f43f307"
  instance_type = "t2.micro"

  tags {
    Name = "HelloWorld"
  }
}