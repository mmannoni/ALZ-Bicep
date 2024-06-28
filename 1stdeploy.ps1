# For Azure global regions

$inputObject = @{
  DeploymentName        = 'alz-MGDeployment-{0}' -f (-join (Get-Date -Format 'yyyyMMddTHHMMssffffZ')[0..63])
  Location              = 'westeurope'
  TemplateFile          = "./infra-as-code/bicep/modules/managementGroups/managementGroups.bicep"
  TemplateParameterFile = './infra-as-code/bicep/modules/managementGroups/parameters/managementGroups.parameters.all.json'
}
New-AzTenantDeployment @inputObject
