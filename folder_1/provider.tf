provider "google" {
  version     = "~> 3.0"
  credentials = file("~/.gcp_keys/ox-lab-robert-cam-7abbe0af6053.json")
  project     = "ox-lab-robert-cam"
}

provider "google-beta" {
  version     = "~> 3.0"
  credentials = file("~/.gcp_keys/ox-lab-robert-cam-7abbe0af6053.json")
  project     = "ox-lab-robert-cam"
}
