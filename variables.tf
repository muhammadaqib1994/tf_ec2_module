variable "ec2_vars"{
    type = map
    default = {
        region = "us-east-1"
        ec2_name = "single-instance"
        instance_type          = "t2.small"
        ami           = "ami-0767046d1677be5a0"
        terraform   = "true"
        environment = "dev"
    }
}