variable username{
        type=string

}



variable skill{
        type=string

}


output identity{
   
   value="my name is ${var.username} my skill is ${var.skill}"


}
