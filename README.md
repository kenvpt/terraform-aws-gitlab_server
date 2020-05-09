# terraform-aws-gitlab_server
module "gitlab" {

    source = "/home/centos/terraform-aws-gitlab/gitlab_project"
    
    region = "us-west-1"
    
    vpc_cidr = "192.168.0.0/16"
    
    public_subnet_cidr = ["192.168.1.0/24","192.168.2.0/24","192.168.3.0/24"]
    
    private_subnet_cidr = ["192.168.11.0/24","192.168.12.0/24","192.168.13.0/24"]

    instance_type = "t2.xlarge"
    key_name = "my_key"
    public_key_path = "~/.ssh/id_rsa.pub"
    tags = {
     Environment = "Gitlab"
    }
    private_key_path = "~/.ssh/id_rsa" 
    bucket_name =  "your s3 bucket name"
    bucket_region = "us-east-1"
}




This is the Infrastructure we are expecting to build from this Terraform
<img width="545" alt="Screen Shot 2020-05-07 at 1 57 19 PM" src="https://user-images.githubusercontent.com/49701513/81333801-b5d83500-906a-11ea-803f-11d86590f269.png">

##########################################################################################

*specify your s3 bucket name in backend.tf to store the terraform.tfstate there*
  
  
------------------------------------------------------------------------------------------
This will be the output we should be seeing when Terraform apply is completed
<img width="905" alt="Screen Shot 2020-05-07 at 2 16 48 PM" src="https://user-images.githubusercontent.com/49701513/81446611-e2f71700-9140-11ea-89ca-49e1fb7fa5d5.png">



#########################################################################################
  This is the page you should see when you put your domain or the ec2's IP on the browser.
  You enter new password here.
<img width="1421" alt="Screen Shot 2020-05-03 at 6 51 19 AM" src="https://user-images.githubusercontent.com/49701513/81332803-3c8c1280-9069-11ea-8710-3f4913bb0e95.png">

##########################################################################################


 By Default, the user name is "root" and the password is the password you just recently made.
<img width="1422" alt="Screen Shot 2020-05-03 at 6 54 41 AM" src="https://user-images.githubusercontent.com/49701513/81333008-8674f880-9069-11ea-9fe5-72ec72662a91.png">

##########################################################################################



This is homepage inside of Gitlab
<img width="1415" alt="Screen Shot 2020-05-03 at 6 53 54 AM" src="https://user-images.githubusercontent.com/49701513/81333284-f97e6f00-9069-11ea-8e97-3cc15bab8119.png">
