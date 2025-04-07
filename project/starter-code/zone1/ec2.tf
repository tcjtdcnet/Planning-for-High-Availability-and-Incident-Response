  module "project_ec2" {
   source             = "./modules/ec2"
   #instance_count     = var.instance_count
   instance_count     = 2
   name               = local.name
   account            = data.aws_caller_identity.current.account_id
   #   aws_ami            = "ami-0f6566021db513b86"
   aws_ami            = "ami-0f04a9fe1d3a748be"
   private_subnet_ids = module.vpc.private_subnet_ids
   public_subnet_ids  = module.vpc.public_subnet_ids
   vpc_id             = module.vpc.vpc_id
 }
