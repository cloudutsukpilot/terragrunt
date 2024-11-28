# Infrastructure as Code


### Best Pratices
1. Single Providers.tf per Cloud per Environment >> `In Progress`
2. Single Backend per Cloud >> `Done`
3. Single yaml configuration per cloud per environment >> `In Progress`
4. Single terragrunt.hcl configuration per Cloud per Environment per Resource Type >> `In Progress`
5. Single Commonvars.yaml file per Cloud per Environment >> `Done`
6. Integrate TFLint with Terragrunt => `In Progress`



### Terragrunt Import

- Navigate to the directory and run terragrunt import
- Example:
```
~/gitrepos/terragrunt/environments/azure/dev$ terragrunt import azurerm_resource_group.rg[\"dev-terragrunt-rg-02\"] "/subscriptions/256259c9-e59b-4d4f-83ad-5b2f91220ad4/resourceGroups/dev-terragrunt-rg-02"
```