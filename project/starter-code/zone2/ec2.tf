#  module "project_ec2" {
#    source             = "./modules/ec2"
#    name               = local.name
#    account            = data.aws_caller_identity.current.account_id
#    aws_ami            = data.aws_ami.amazon_linux_2.id
#    private_subnet_ids = module.vpc.private_subnet_ids
#    vpc_id             = module.vpc.vpc_id
#  }

  module "project_ec2" {
   source             = "./modules/ec2"
   #instance_count     = var.instance_count
   instance_count     = 2
   name               = local.name
   account            = data.aws_caller_identity.current.account_id
   #   aws_ami            = "ami-0f989eeb7dfb0210e"
   aws_ami            = "ami-060e80d1d1a6850cf"
   private_subnet_ids = module.vpc.private_subnet_ids
   public_subnet_ids = module.vpc.public_subnet_ids
   vpc_id             = module.vpc.vpc_id
 }
