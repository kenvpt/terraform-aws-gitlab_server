variable "region"{}
variable "vpc_cidr"{}
variable "public_subnet_cidr"{
    type = "list"
}
variable "private_subnet_cidr"{
    type = "list"
}
variable "instance_type"{}
variable "key_name"{}
variable "public_key_path"{}
variable "tags"{
    type = "map"
}

variable "private_key_path"{}
variable "bucket_name"{}
variable "bucket_region"{}