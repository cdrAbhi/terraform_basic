
/*#simple num variable
variable age{
   type=number
}
*/


/*
#deafault num variable (in this case you have a default list you also input list using (terraform plan -var "list=21") command)


variable age{
   type=number
   default=23
}

*/

/*
#list data type(in this case you have to pass the list)

variable list{
  type=list

}

*/

/*
#list data type(in this case you have a default list you also input list using (terraform plan -var 'list=["ram","lakshman"]') command)

variable list{
  type=list
  default=["Shiva","ravi"]
}
*/


#aap ek sath two variable bhi provide kar sakte hai..

#list data type(in this case you have a default list you also input list using (terraform plan -var 'list=["ram","lakshman"]') command)

variable list{
  type=list
  default=["Shiva","ravi"]
}

variable age{
   type=number
}

