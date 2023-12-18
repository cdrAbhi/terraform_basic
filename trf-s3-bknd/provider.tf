terraform {
  backend "s3"{
     bucket="web-bucket-99"
     region="ap-south-1"
     key="terraform.tfstate"
     dynamodb_table="trf-tf-table"

}



}


provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAXYR7AAF6CS7SNDUQ"
  secret_key = "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"


}

resource "aws_instance" "inst" {

  ami                    = "ami-03f4878755434977f"

  instance_type          = "t2.micro"

}
