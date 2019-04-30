variable "access_key" {}
variable "secret_key" {}
variable "user" {}
variable "private_key_path" {}

variable "region" {
  default = "us-east-1"
}
variable "ami" {
  default = "ami-0de53d8956e8dcf80"
}
variable "instance_type" {
  default = "t2.micro"
}