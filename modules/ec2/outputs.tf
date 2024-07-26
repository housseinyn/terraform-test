output "public_instance_id" {
  value = aws_instance.fg-web-app.id
}

output "private_instance_id" {
  value = aws_instance.fg-web-app-private.id
}
