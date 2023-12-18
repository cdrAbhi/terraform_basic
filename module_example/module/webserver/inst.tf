resource "aws_key_pair" "key_tf" {
  key_name   = "key_tf"
  public_key = "${var.key}"


}



resource "aws_instance" "inst" {

  ami                    = var.id
  instance_type          = var.type

}

