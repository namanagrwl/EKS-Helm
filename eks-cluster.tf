module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.8.5"

  cluster_name = "myapp-eks-cluster"
  cluster_version = "1.29"

  subnet_ids = module.myapp-vpc.private_subnets
  vpc_id = module.myapp-vpc.vpc_id

  tags = {
    environment = "development"
    application = "myapp"
  }
    
  self_managed_node_group_defaults = [
    {
        instance_type = "t2.small"
        name = "worker-group-1"
        asg_desired_capacity = 2
    },
    {
        instance_type = "t2.medium"
        name = "worker-group-2"
        asg_desired_capacity = 1
    }
  ]
}