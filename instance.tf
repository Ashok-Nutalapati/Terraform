
  provider "google" {
  credentials = file("D:\\Terraform\\groovy-treat-349513-33ee3216609e.json")
  ## INSERT YOUR PROJECT ID HERE!!
  project = "groovy-treat-349513"
  region = "us-central1"
  zone = "us-central1-a"
}

  resource  "google_compute_instance" "terraform" {
    #project = "starlit-effect-341904"
    name =  "terraform"
    machine_type = "n1-standard-1"
    zone = "us-central1-a"
    boot_disk {
        initialize_params {
          image = "debian-cloud/debian-9"
        }
    }

    network_interface {
      network = "default"
      access_config{

      }
    }
}

