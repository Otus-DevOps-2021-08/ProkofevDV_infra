terraform {
  required_providers {
    yandex = "0.35"
  }

  backend "s3" {
    endpoint = "storage.yandexcloud.net"
    bucket   = "terraform-object-storage-tutorial" //var.yandex_backed_name
    region   = "ru-central1-a"
    key      = "tfstates/reddit-app/stage.tfstate"
  }
}
