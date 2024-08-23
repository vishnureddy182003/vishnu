resource "aws_instance" "dev-ec2" {
    ami = "ami-07e35c3920b92d884" 
    instance_type = "t2.micro"
    availability_zone = "ca-central-1"
    subnet_id = "subnet-06319f9ec6252aee2"
    key_name = "vishnukey"
    
    
  tags = {
    Name = "dev-ec2"
  }

#below examples are for lifecycle meta_arguments 

#   lifecycle {
  #  create_before_destroy = true    #this attribute will create the new object first and then destroy the old one
  }

# lifecycle {
   #prevent_destroy = true    #Terraform will error when it attempts to destroy a resource when this is set to true



  #lifecycle  {
   # ignore_changes = [tags,] #This means that Terraform will never update the object but will be able to create or destroy it.
  
  