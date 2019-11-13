variable "public_key_path" {
      default = "./prowlerParser.pub"
}

variable "key_name" {
      default = "prowlerParser"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "ap-southeast-1"
}

variable "aws_amis" {
  default = {
    ap-southeast-1 = "ami-00942d7cd4f3ca5c0"
  }
}

variable "access_key" {} 
variable "secret_key" {}
