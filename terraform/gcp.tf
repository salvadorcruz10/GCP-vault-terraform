provider "google" {
  credentials = file(var.json_file)
  project     = var.project
  region      = var.region
}