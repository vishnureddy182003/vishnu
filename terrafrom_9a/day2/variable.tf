variable "ami" { 
  description = "passing to server" 
  type = string 
  default = "ami-07e35c3920b92d884"
 
} 
variable "aws_instance" { 
    type = string 
    default = "t2.micro" 
     
   
} 
 
variable "key_name" { 
    type = string 
    default = "vishnukey" 
 
}
