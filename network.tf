module "network" {
  source = "./modules"
    cidr= var.cidr
    sub_pub_cidrs= var.sub_pub_cidrs
    sub_pri_cidrs= var.sub_pri_cidrs
    azs= var.azs
}
