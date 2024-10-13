variable "public_key_path" {
  description = "Path to the public key for EC2 access"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}
