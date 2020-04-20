output "alb_output" {
  value = aws_alb.demo_eu_alb.dns_name
}

output "ecs_cluster_output" {
  value = aws_ecs_cluster.demo.name
}

output "ecs_service_output" {
  value = aws_ecs_service.springboot.name
}

output "vpc_output" {
  value = aws_vpc.demo-tf.name
}

output "traget_group" {
    value = aws_alb_target_group.springboot.name
}