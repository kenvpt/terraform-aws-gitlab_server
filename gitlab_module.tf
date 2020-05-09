module "gitlab" {
    source = "/home/centos/terraform-aws-gitlab/gitlab_project"
    region = "us-west-1"
    vpc_cidr = "192.168.0.0/16"
    public_subnet_cidr = [
        "192.168.1.0/24",
        "192.168.2.0/24",
        "192.168.3.0/24"
]
    private_subnet_cidr = [
         "192.168.11.0/24",
         "192.168.12.0/24",
         "192.168.13.0/24"
    ]

    instance_type = "t2.xlarge"
    key_name = "my_key"
    public_key_path = "~/.ssh/id_rsa.pub"
    tags = {
     Environment = "Gitlab"
    }
    private_key_path = "~/.ssh/id_rsa"  
}
