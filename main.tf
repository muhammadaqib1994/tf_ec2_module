module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.2.1"

  /* for_each = toset(["one", "two", "three"])

  name = "instance-${each.key}" */
  name                   = lookup(var.ec2_vars, "ec2_name")
  ami                    = lookup(var.ec2_vars, "ami")
  instance_type          = lookup(var.ec2_vars, "instance_type")
  key_name               = "aqib"
  monitoring             = true
  vpc_security_group_ids = ["sg-b08276d7"]
  subnet_id              = "subnet-a0b2d68b"

  tags = {
    Terraform            = lookup(var.ec2_vars, "terraform")
    Environment          = lookup(var.ec2_vars, "environment")
  }
}