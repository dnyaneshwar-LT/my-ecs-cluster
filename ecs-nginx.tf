# NGINX Service
resource "aws_ecs_service" "springboot" {
  name            = "springboot"
  cluster         = aws_ecs_cluster.demo.id
  task_definition = aws_ecs_task_definition.springboot.arn
  desired_count   = 2
  iam_role        = aws_iam_role.ecs-service-role.arn
  depends_on      = [aws_iam_role_policy_attachment.ecs-service-attach]

  load_balancer {
    target_group_arn = aws_alb_target_group.springboot.id
    container_name   = "springboot"
    container_port   = "8080"
  }

  lifecycle {
    ignore_changes = [task_definition]
  }
}

resource "aws_ecs_task_definition" "springboot" {
  family = "springboot"

  container_definitions = <<EOF
[
  {
    "portMappings": [
      {
        "hostPort": 0,
        "protocol": "tcp",
        "containerPort": 8080
      }
    ],
    "cpu": 256,
    "memory": 300,
    "image": "931968138910.dkr.ecr.ap-south-1.amazonaws.com/springboot-docker:build-2baf74b1-cf04-46e1-aa60-bfbee1f118ae",
    "essential": true,
    "name": "springboot",
    "logConfiguration": {
    "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs-demo/springboot",
        "awslogs-region": "ap-south-1",
        "awslogs-stream-prefix": "ecs"
      }
    }
  }
]
EOF

}

resource "aws_cloudwatch_log_group" "springboot" {
  name = "/ecs-demo/springboot"
}

