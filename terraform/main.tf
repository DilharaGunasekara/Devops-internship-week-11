terraform {
  required_version = ">= 1.15.0"
}

resource "local_file" "project_info" {
  filename = "${path.module}/project-info.txt"

  content = <<-EOT
    Project: ${var.project_name}
    Environment: ${var.environment}
    Managed by: Terraform
  EOT
}
