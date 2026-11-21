# Secret de l'environnement, lu par les instances au démarrage.
# value_wo : la valeur est envoyée à AWS mais jamais écrite dans le state.
resource "aws_ssm_parameter" "app_secret" {
  name             = "/${var.project}/${var.environment}/app_secret"
  description      = "Secret applicatif ${var.environment}"
  type             = "SecureString"
  value_wo         = var.app_secret
  value_wo_version = var.app_secret_version
}
