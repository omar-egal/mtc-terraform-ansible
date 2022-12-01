#---root/main.tf---

module "networking" {
  source               = "./networking"
  cidr_block           = "10.123.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  availability_zone    = data.aws_availability_zones.available.names[0]
  public_cidrs         = "10.123.1.0/24"
}