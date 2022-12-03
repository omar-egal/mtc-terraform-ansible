#---root/main.tf---

module "networking" {
  source               = "./networking"
  cidr_block           = local.vpc_cidr
  public_sn_count      = 2
  private_sn_count     = 2
  max_subnets          = 20
  enable_dns_hostnames = true
  enable_dns_support   = true
  availability_zone    = local.azs
  public_cidrs         = [for i in range(2, 255, 2) : cidrsubnet(local.vpc_cidr, 8, i)]
  private_cidrs        = [for i in range(1, 255, 2) : cidrsubnet(local.vpc_cidr, 8, i)]
}