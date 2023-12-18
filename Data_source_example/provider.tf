provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAXYR7AAF6CS7SNDUQ"
  secret_key = "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"


}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]
  filter {
    name  = "name"
    values= ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name  = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name  = "virtualization-type"
    values = ["hvm"]
  }



}



output "ami_id" {

  value ="${data.aws_ami.ubuntu.id}"

}






