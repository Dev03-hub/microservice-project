locals {
  ami_type               = "AL2_x86_64"
  azs                    = slice(data.aws_availability_zones.available.names, 0, 3)
  capacity_type          = "SPOT"
  cluster_version        = "1.33"
  disk_size              = 30
  enable_cluster_creator = true
  enable_nat_gateway     = true
  enable_public_access   = true
  instance_type          = ["t3.medium"]
  node_desired_size      = 3
  node_max_size          = 5
  node_min_size          = 1
  intra_subnets          = ["10.0.10.0/24", "10.0.11.0/24", "10.0.12.0/24"]
  private_subnets        = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets         = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

module "vpc" {
  source             = "terraform-aws-modules/vpc/aws"
  version            = "6.5.0"
  name               = ""
  azs                = ""
  cidr               = ""
  intra_subnets      = ""
  private_subnets    = ""
  public_subnets     = ""
  enable_nat_gateway = ""
  single_nat_gateway = ""
}