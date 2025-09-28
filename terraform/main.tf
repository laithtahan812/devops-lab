terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "app" {
  name = "laith313/devops-lab:latest"
}

resource "docker_container" "app" {
  name  = "tf-devops-lab"
  image = docker_image.app.image_id
  ports {
    internal = 80
    external = 8082
  }
}
