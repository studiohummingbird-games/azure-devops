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
    process = "Agile"
    description = "Project for developing necessary infrastructure modules. Managed by OpenTofu."
}
