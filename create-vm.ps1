az vm create \
  --resource-group [sandbox resource group name] \
  --name my-vm \
  --image UbuntuLTS \
  --admin-username azureuser \
  --generate-ssh-keys
  
  az vm extension set \
  --resource-group [sandbox resource group name] \
  --vm-name my-vm \
  --name customScript \
  --publisher Microsoft.Azure.Extensions \
  --version 2.1 \
  --settings '{"fileUris":["https://raw.githubusercontent.com/TheRealNerdyDad/Azure-Minecraft-Linux/main/azure-hermit-minecraft-linux.sh"]}' \
  --protected-settings '{"commandToExecute": "./azure-hermit-minecraft-linux.sh"}'
  
  az network nsg rule create \
  --resource-group [sandbox resource group name] \
  --nsg-name my-vmNSG \
  --name allow-minecraft-bedrock \
  --protocol tcp \
  --priority 100 \
  --destination-port-range 19132 \
  --access Allow
