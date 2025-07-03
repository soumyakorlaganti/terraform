# resource <resource-type> <resource-name>
resource "aws_instance" "db" {

    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = ["sg-047bd2f5f364b70fc"] 
    instance_type = "t3.micro"
    
    tags = {
       Name = "db"
    }
}