variable "cidr" {
    type = string
}
variable "amiID" {
  type = string
}
variable "ec2Type" {
  type = string
}
variable "sub_pub_cidrs" {
  type = list
}
variable "sub_pri_cidrs" {
  type = list
}
variable "azs" {
  type = list
}
variable "region" {
  type = string
}