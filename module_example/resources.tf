#how to use module

module "inst"{
  source="./module/webserver"
  id="${var.image_id}"
  type="${var.inst_type}"
  key=file("${path.module}/id_rsa.pub")


}

output "public-ip"{
  value="${module.inst.public_Ip}"

}

