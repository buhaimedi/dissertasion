######dummy key vault data######
Write-Host -ForegroundColor Green "###############################################################"
Write-Host -ForegroundColor Green "###########Create key vault and insert dummy data##############"
Write-Host -ForegroundColor Green "###############################################################"
az keyvault create -n $keyname -g $group --location $location
az keyvault secret set --vault-name $keyname --name "Web API-Key " --value  "HJSDSDFFL654SDFG2D" --description "Secret API-Key #1" 
az keyvault secret set --vault-name $keyname --name "instgram API-Key 2" --value "6SDF6G5SDF4SDF54" --description "Secret API-Key #2"
az keyvault secret set --vault-name $keyname --name "Secret API-Key #3" --value "9KSKDKFJ9DSASDFG" --description "Secret API-Key #3"
az keyvault key create --vault-name $keyname --name "Secret API-Key #4" --protection softwar