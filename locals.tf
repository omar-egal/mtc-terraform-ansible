locals {
  vpc_cidr = "10.123.0.0/16"
}

locals {
  azs = data.aws_availability_zones.available.names
}