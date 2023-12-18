
variable map1{
   type=map
    default={"Ram"=21
             "ravi"=43
           }
}


variable key{
   type=string
}

output detail{
  value={
         val1="I am ${var.key} and my age is ${lookup(var.map1, var.key,0)}" 
         #val2="I am ${var.key} and my age is ${var.map1[var.key]}" 
         #val1 mthd is use to get map value with default parameter
         #val2 mthd is use to get map value with default parameter  

       }
 


}

