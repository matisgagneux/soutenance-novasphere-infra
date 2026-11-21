variable "project" {
  description = "Nom du projet (noms des ressources, chemins SSM)"
  type        = string
  default     = "novasphere"
}

variable "environment" {
  description = "Nom de l'environnement : dev ou prod."
  type        = string

  validation {
    condition     = contains(["dev", "prod"], var.environment)
    error_message = "environment doit être dev ou prod"
  }
}

variable "owner" {
  description = "Propriétaire de l'infrastructure, posé en tag."
  type        = string
}

variable "aws_region" {
  description = "Région AWS us-east-1"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "TType d'instance EC2"
  type        = string
  default     = "t3.micro"
}

variable "app_secret" {
  description = "Secret applicatif"
  type        = string
  sensitive   = true
  ephemeral   = true
}

variable "app_secret_version" {
  description = "À incrémenter pour réécrire le secret"
  type        = number
  default     = 1
}
