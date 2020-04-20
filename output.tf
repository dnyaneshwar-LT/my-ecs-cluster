output "alb_output" {
  value = aws_alb.demo_eu_alb.dns_name
}

output "ecs_cluster_output" {
  value = aws_ecs_cluster.demo.dns_name
}

output "ecs_service_output" {
  value = aws_ecs_service.springboot.dns_name
}

output "vpc_output" {
  value = aws_vpc.demo-tf.dns_name
}

output "traget_group" {
    value = aws_alb_target_group.springboot.dns_name
}