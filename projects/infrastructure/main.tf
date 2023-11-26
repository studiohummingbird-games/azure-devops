terraform {
    required_providers {
        azuredevops = {
            source  = "microsoft/azuredevops"
            version = "0.1.0"
        }
    }
}

provider "azuredevops" {
}

resource "azuredevops_project" "opentofu-infrastructure" {
    name               = "opentofu-infrastructure"

    description        = "Project for developing necessary infrastructure modules. Managed by OpenTofu."
    work_item_template = "Agile"
    version_control    = "Git"
    visibility         = "public"
    features = {
        "boards"       = "enabled"
        "repositories" = "disabled"
        "pipelines"    = "enabled"
        "testplans"    = "disabled"
        "artifacts"    = "disabled"
    }
}

resource "azuredevops_serviceendpoint_github" "studiohummingbird-games" {
  project_id            = azuredevops_project.opentofu-infrastructure.id
  service_endpoint_name = "studiohummingbird-games"
}