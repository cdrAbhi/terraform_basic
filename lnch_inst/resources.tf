#Provide data source

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



#use script to create an instance

resource "aws_instance" "inst" {

  ami                    = "${data.aws_ami.ubuntu.id}"
  instance_type          = var.inst_type
  key_name               = aws_key_pair.key_tf.key_name
  vpc_security_group_ids = ["${aws_security_group.aws_sg.id}"]

  tags = {
    Name = "trf_inst"
  }

  user_data = file("${path.module}/user_data.sh")
  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("${path.module}/id_rsa")
    host        = self.public_ip

  }

  provisioner "file" {
    source      = "f1.txt"
    destination = "/tmp/f1.txt"
  }

  provisioner "file" {
    content     = "HI body I am second provision frm local"
    destination = "/tmp/f2.txt"
  }

  provisioner "local-exec" {
    command = "echo '${self.public_ip}'>/tmp/public_ip.txt"

  }

  provisioner "local-exec" {
    interpreter = [
      "/usr/bin/python3", "-c"
    ]
    command = "print('hello world')"

  }

  provisioner "local-exec" {
    command = "env>env.txt"
    environment = {
      envname = "envvalue"
    }
  }

  provisioner "remote-exec" {
    inline = [
      "curl ifconfig.me>/tmp/public_ip.txt",
      "echo 'hi I am from remote-provision yes'>/tmp/rmt-2.txt"


    ]
  }

  provisioner "remote-exec" {
    script = "./script.sh"

  }


}


output "ami_id" {

  value ="${data.aws_ami.ubuntu.id}"

}
