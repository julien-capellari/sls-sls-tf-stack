resource "aws_ssm_parameter" "todo-table" {
  name  = "/sls-tf-stack/${var.stage}/todo-table"
  type  = "String"
  value = aws_dynamodb_table.todo.name
}

resource "aws_ssm_parameter" "frontend-url" {
  name  = "/sls-tf-stack/${var.stage}/frontend-url"
  type  = "String"
  value = "https://${aws_cloudfront_distribution.todos.domain_name}"
}
