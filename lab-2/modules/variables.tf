variable "cidr" {
  type = string
}
variable "sub_pub_cidrs" {
  type = list(any)
}
variable "sub_pri_cidrs" {
  type = list(any)
}
variable "azs" {
  type = list(any)
}
