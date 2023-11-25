terraform {
    required_providers {
        azuredevops = {
            source  = "microsoft/azuredevops"
            version = "0.1.0"
        }
    }
}

resource "azuredevops_project" "infrastructure" {
    name = "infrastructure"
    
    visibility = "public"
    work_item_template = "Agile"
    description = "Project for developing necessary infrastructure modules. Managed by OpenTofu."
    version_control = "Git"
    features = {
        "boards" = "enabled"
        "pipelines" = "enabled"
    }
}
