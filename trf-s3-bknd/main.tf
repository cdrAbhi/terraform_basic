#this output is only for number
/*output My_Age{
  value="Hi my current age is ${var.age}"

}*/

/*
#this output is only for list
output My_name{
  value="Hi my name is ${var.list[0]}"

}

*/

#using this output you can take two input one as a number and one as a list String

output My_Identity{
  value="Hi my name is ${var.list[0]} and my current age is ${var.age}"

}

