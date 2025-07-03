variable "instance_names" {
  type        = map
  default     = {
   db = "t3.small"
    backend = "t3.micro"
    frontend = "t3.micro"
  }
}   

variable "common_tags" {
  type = map     
  default = {
    project = "Expense"
    Terraform = "true"
  }
}

variable "domain_name" {
  default = "soumyadevops.space"
}

variable "zone_id" {
  default = "Z0552987384ZT8UL249PX"
}