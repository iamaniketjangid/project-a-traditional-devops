terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.25"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_deployment" "app" {
  metadata {
    name = "project-a-app"
    labels = {
      app = "project-a"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "project-a"
      }
    }

    template {
      metadata {
        labels = {
          app = "project-a"
        }
      }

      spec {
        container {
          name  = "app"
          image = "project-a-big:latest"

          port {
            container_port = 3000
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "app" {
  metadata {
    name = "project-a-service"
  }

  spec {
    selector = {
      app = "project-a"
    }

    port {
      port        = 80
      target_port = 3000
    }

    type = "NodePort"
  }
}

