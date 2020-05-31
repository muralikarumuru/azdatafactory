$resourceGroup = "rg-eus-adfdemo"
$location = "eastus"
$deploymentTime = Get-Date -Format yyyyMMddHHmmss
$deploymentName = "adfdeployment" + "-" + $deploymentTime
# Make sure the arm template location is correct
$armTemplateLocation = (Get-Location).Path + "\"
$armTemplateFile = $armTemplateLocation + "azdatafacatory.arm.json"
$armTemplateParamFile = $armTemplateLocation + "azdatafactory.arm.parameter.dev.json"
New-AzureRmResourceGroup -Name $resourceGroup -Location $location
New-AzureRmResourceGroupDeployment -Name $deploymentName -ResourceGroupName $resourceGroup -TemplateFile $armTemplateFile -TemplateParameterFile $armTemplateParamFile
