variable "ec2_region" {
  description = "this is the region of ec2"
  type        = string
  default     = "ap-south-1"
}

variable "ec2_type" {
  description = "this is the type of ec2"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "this is the ami id (ubuntu) for ec2"
  type        = string
  default     = "ami-02d26659fd82cf299"
}

variable "ec2_name" {
  description = "this is the name of ec2"
  type        = string
  default     = "testing"
}
variable "key_name" {
  description = "this is the key name of ec2"
  type        = string
  default     = "rsa-key"
}
variable "public_key" {
  description = "this is the public key for ec2"
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBZm8GHCLkt+uzYMmBWnwKXlUpu5qptJKutWn5APszVe ubuntu@ip-172-31-36-60"
}
variable "sg_name" {
  description = "this is the security group name for ec2"
  type        = string
  default     = "instance_security_group"
}