output "id" {
  value = aws_subnet.public_subnet.id
}

output "name" {
  value = var.subnet_name
}

output "az" {
  value = var.subnet_az
}

output "priv_pem" {
  value = tls_private_key.private_key.private_key_pem
}

output "pair_name" {
  value = aws_key_pair.key_pair.key_name
}