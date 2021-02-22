project = "example-nodejs"

config {
  env = {
    "SECRET_NAME" = configdynamic("kubernetes", {
      name = "waypoint-demo"
      key = "username"
    })
  }
}

app "example-nodejs" {
  labels = {
    "service" = "example-nodejs",
    "env"     = "dev"
  }

  build {
    use "pack" {}
    registry {
      use "docker" {
        image = "onlydole/example-nodejs"
        tag   = "1"
      }
    }
  }

  deploy {
    use "kubernetes" {
      probe_path = "/"
    }
  }

  release {
    use "kubernetes" {
    }
  }
}
