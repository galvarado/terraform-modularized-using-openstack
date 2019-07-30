output "aws_instance_public_ip" {
  value = aws_instance.EC2_instance.public_ip
}

output "aws_instance_id" {
  value = aws_instance.EC2_instance.id
}

output "aws_instance_public_dns" {
  value = aws_instance.EC2_instance.public_dns
}

output "aws_instance_state" {
  value = aws_instance.EC2_instance.instance_state
}