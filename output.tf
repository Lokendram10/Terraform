output "instance_public_ip" {
  value = aws_instance.Terraform.public_ip
}
# Key Pair output
output "key_pair_name" {
  description = "deployer-key"
  value       = aws_key_pair.deployer.key_name
}
