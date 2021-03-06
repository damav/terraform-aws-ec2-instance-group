variable "region" {
  type        = string
  description = "AWS region"
}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones"
}

variable "namespace" {
  type        = string
  description = "Namespace (e.g. `eg` or `cp`)"
}

variable "stage" {
  type        = string
  description = "Stage (e.g. `prod`, `dev`, `staging`, `infra`)"
}

variable "name" {
  type        = string
  description = "Name  (e.g. `app` or `cluster`)"
}

variable "generate_ssh_key_pair" {
  type        = bool
  description = "If true, create a new key pair and save the pem for it to the current working directory"
}

variable "associate_public_ip_address" {
  type        = bool
  description = "Associate a public IP address with the instance"
}

variable "assign_eip_address" {
  type        = bool
  description = "Assign an Elastic IP address to the instance"
}

variable "instance_type" {
  type        = string
  description = "Type of the instance"
}

variable "allowed_ports" {
  type        = list(number)
  description = "List of allowed ingress ports"
}

variable "ami_owner" {
  type        = string
  description = "Owner of the given AMI"
}

variable "root_volume_type" {
  type        = string
  description = "Type of root volume. Can be standard, gp2 or io1"
}

variable "root_volume_size" {
  type        = number
  description = "Size of the root volume in gigabytes"
}

variable "delete_on_termination" {
  type        = bool
  description = "Whether the volume should be destroyed on instance termination"
}

variable "create_default_security_group" {
  type        = bool
  description = "Create default Security Group with only Egress traffic allowed"
}

variable "instance_count" {
  type        = number
  description = "Count of ec2 instances to create"
}

variable "ssh_public_key_path" {
  type        = string
  description = "Path to SSH public key directory (e.g. `/secrets`)"
}
