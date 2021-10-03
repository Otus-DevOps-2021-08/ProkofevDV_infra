variable cloud_id {
  description = "Cloud"
}
variable folder_id {
  description = "Folder"
}
variable zone {
  description = "Zone"
  # Значение по умолчанию
  default     = "ru-central1-a"
}
variable public_key_path {
  # Описание переменной
  description = "Public key path"
}
variable private_key_path {
  description = "Path to the private key used for ssh access"
}
variable image_id {
  description = "Image"
}
variable subnet_id {
  description = "e9bgc6jqm0f3l8dop0bi"
}
variable service_account_key_file {
  description = "key.json"
}

variable "external_app_port" {
  default = 8080
}
variable "internal_app_port" {
  default = 9292
}
variable "app_instances_count" {
  default = 1
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
variable db_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
