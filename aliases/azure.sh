###############################################
# Azure CLI – Aliases & Usage Reference (Generic)
# Place in your shell profile (~/.bashrc, ~/.zshrc) and `source` it.
###############################################

## Installation / Login
alias azcli_install='curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash'    # Install latest Azure CLI
alias azlogin='az login'                                                        # Login interactively
alias azlogin_dev='az login --use-device-code'                                  # Login via device code
alias azlogin_tenant='az login --tenant'                                        # Usage: azlogin_tenant <TENANT_ID>

## Accounts / Subscriptions
alias azs='az account show'                                                     # Show current account (subscription, tenant, user)
alias azsl='az account list -o table'                                           # List subscriptions (table)
alias azacct_list='az account list'                                             # List all subscriptions (JSON)
alias azacct_tenants='az account tenant list -o yaml'                           # List tenants (YAML)
alias azacct_ids='az account list | jq -r ".[].id"'                             # List subscription IDs
alias azacct_tids='az account list | jq -r ".[].tenantId"'                      # List tenant IDs
alias azacct_names='az account list | jq -r ".[].name"'                         # List subscription names
alias azacct_refresh='az account list --refresh -o table'                       # Refresh subscriptions
alias azacct_set='az account set -s'                                            # Usage: azacct_set <SUBSCRIPTION_NAME_OR_ID>

## Resource Groups
alias azgl='az group list -o table'                                             # List resource groups (table)
alias azsg='az group show -n'                                                   # Usage: azsg <RG_NAME>
alias azrg_list_names='az group list | jq -r ".[].name"'                        # List RG names
alias azrg_create='az group create --name'                                      # Usage: azrg_create <RG_NAME> --location <LOCATION>
alias azrg_delete='az group delete --name'                                      # Usage: azrg_delete <RG_NAME>

## Storage Accounts
alias azsal='az storage account list -o table'                                  # List storage accounts (table)
alias azsas='az storage account show -n'                                        # Usage: azsas <ACCOUNT_NAME>
alias azsac='az storage account create -n'                                      # Usage: azsac <ACCOUNT_NAME> -g <RG> -l <LOCATION> --sku Standard_LRS

## Virtual Machines – List & Show
alias azvml='az vm list -o table'                                               # List VMs (table)
alias azvm_list='az vm list'                                                    # List VMs (JSON)
alias azvm_list_names='az vm list | jq -r ".[].name"'                           # VM names
alias azvm_list_ids='az vm list | jq -r ".[].id"'                               # VM IDs
alias azvm_list_rg='az vm list -g'                                              # Usage: azvm_list_rg <RG_NAME>
alias azvm_list_d='az vm list -d'                                               # List VMs with details
alias azvm_show='az vm show -g'                                                 # Usage: azvm_show <RG_NAME> --name <VM_NAME> --show-details
alias azvm_pubip='az vm show -d -g'                                             # Usage: azvm_pubip <RG_NAME> -n <VM_NAME> --query publicIps -o table
alias azvm_privip='az vm show -d -g'                                            # Usage: azvm_privip <RG_NAME> -n <VM_NAME> --query privateIps -o table
alias azvm_show_all='az vm show -d --ids $(az vm list -g <RG_NAME> --query "[].id" -o tsv)'   # Show all VMs in RG

## Virtual Machines – Lifecycle
alias azvm_start='az vm start -g'                                               # Usage: azvm_start <RG_NAME> -n <VM_NAME>
alias azvm_start_all='az vm start --ids $(az vm list -g <RG_NAME> --query "[].id" -o tsv)'    # Start all VMs in RG
alias azvm_stop='az vm stop -g'                                                 # Stop VM
alias azvm_dealloc='az vm deallocate -g'                                        # Deallocate VM
alias azvm_restart='az vm restart -g'                                           # Restart VM
alias azvm_redeploy='az vm redeploy -g'                                         # Redeploy VM
alias azvm_delete='az vm delete -g'                                             # Delete VM

## VM Images & Sizes
alias azvm_sizes='az vm list-sizes --location'                                  # Usage: azvm_sizes <LOCATION>
alias azvm_images='az vm image list -o table'                                   # List images
alias azvm_create_linux='az vm create --resource-group <RG_NAME> --name <VM_NAME> --image UbuntuLTS'              # Create Linux VM
alias azvm_create_windows='az vm create --resource-group <RG_NAME> --name <VM_NAME> --image Win2016Datacenter'    # Create Windows VM
alias azvm_image_create='az image create --resource-group <RG_NAME> --source <VM_NAME> --name <IMAGE_NAME>'       # Create VM image

## VM Extensions
alias azvm_ext_list='az vm extension list -g'                                   # Usage: azvm_ext_list <RG_NAME> --vm-name <VM_NAME>
alias azvm_ext_del='az vm extension delete -g'                                  # Usage: azvm_ext_del <RG_NAME> --vm-name <VM_NAME> --name <EXT_NAME>

## VM Status
alias azvm_status_all='az vm list -d --query "[].[name, powerState]"'           # Show all VM states

## AKS (Kubernetes)
alias azaksl='az aks list -o table'                                             # List clusters
alias azakss='az aks show -n'                                                   # Usage: azakss <CLUSTER_NAME> -g <RG_NAME>
alias azaksgc='az aks get-credentials -n'                                       # Usage: azaksgc <CLUSTER_NAME> -g <RG_NAME> [--overwrite-existing]
alias azaksnpl='az aks nodepool list -o table'                                  # Usage: azaksnpl -g <RG_NAME> --cluster-name <CLUSTER_NAME>
alias azakssc='az aks scale -g'                                                 # Usage: azakssc <RG_NAME> -n <CLUSTER_NAME> --node-count <N>
alias azaks_install_cli='az aks install-cli'                                    # Install kubectl
alias azaks_versions='az aks get-versions --location'                           # Usage: azaks_versions <LOCATION>
alias azaks_upgrades='az aks get-upgrades -g'                                   # Usage: azaks_upgrades <RG_NAME> --name <CLUSTER_NAME>

## Container Apps
alias azcal='az containerapp list -o table'                                     # List container apps
alias azcas='az containerapp show -n'                                           # Usage: azcas <APP_NAME> -g <RG_NAME>
alias azcac='az containerapp create -n'                                         # Usage: azcac <APP_NAME> -g <RG_NAME> -i <IMAGE>

## Function Apps
alias azfal='az functionapp list -o table'                                      # List function apps
alias azfas='az functionapp show -n'                                            # Usage: azfas <FUNC_NAME> -g <RG_NAME>
alias azfac='az functionapp create -n'                                          # Usage: azfac <FUNC_NAME> -g <RG_NAME> -s <STORAGE> -p <PLAN>

## Azure SQL
alias azsqlmil='az sql mi list -o table'                                        # List SQL Managed Instances
alias azsqlmis='az sql mi show -n'                                              # Usage: azsqlmis <MI_NAME> -g <RG_NAME>
alias azsqldbl='az sql db list -o table'                                        # Usage: azsqldbl -s <SERVER_NAME>
alias azsqldbs='az sql db show -n'                                              # Usage: azsqldbs <DB_NAME> -s <SERVER_NAME> -g <RG_NAME>
alias azsql_tde='az sql db tde show --server <SERVER> --resource-group <RG_NAME> --database <DB_NAME>'            # Check TDE

## Cosmos DB
alias azcosl='az cosmosdb list -o table'                                        # List Cosmos DB accounts
alias azcoss='az cosmosdb show -n'                                              # Usage: azcoss <ACCOUNT_NAME> -g <RG_NAME>
alias azcosc='az cosmosdb create -n'                                            # Usage: azcosc <ACCOUNT_NAME> -g <RG_NAME> -l <LOCATION> --kind MongoDB

## Networking
alias azpipl='az network public-ip list -o table'                                # List Public IPs
alias azvnetl='az network vnet list -o table'                                    # List VNets
alias aznsgl='az network nsg list -o table'                                      # List NSGs

## Azure AD / Identity
alias azsp_create='az ad sp create-for-rbac --role Contributor --scopes "/subscriptions/<SUBSCRIPTION_ID>"'       # Create SP
alias azsp_list='az ad sp list -o table'                                        # List Service Principals
alias azapp_list='az ad app list -o table'                                      # List AAD Apps
alias azgrp_list='az ad group list -o json'                                     # List AAD Groups

## Storage – Extras
alias azst_list='az storage account list -o table'                               # List storage accounts
alias azst_names='az storage account list -o json | jq -r ".[].name"'            # Storage account names
alias azst_keys='az storage account keys list -n'                                # Usage: azst_keys <STORAGE_ACCOUNT>
alias azst_cont_list='az storage container list --account-name $AZURE_STORAGE_ACCOUNT --account-key $AZURE_STORAGE_KEY'  # List containers
alias azst_blob_list='az storage blob list --container-name'                     # Usage: azst_blob_list <CONTAINER> --account-name $AZURE_STORAGE_ACCOUNT --account-key $AZURE_STORAGE_KEY
alias azst_blob_names='az storage blob list --container-name <CONTAINER> --account-name $AZURE_STORAGE_ACCOUNT --account-key $AZURE_STORAGE_KEY | jq -r ".[].name"'

## ACR – Azure Container Registry
alias azacr_login='az acr login -n'                                             # Usage: azacr_login <ACR_NAME>
alias azacr_list='az acr list -o table'                                         # List ACRs
alias azacr_show='az acr show -n'                                               # Usage: azacr_show <ACR_NAME> -g <RG_NAME>
alias azacr_repolist='az acr repository list -n'                                # Usage: azacr_repolist <ACR_NAME>
alias azacr_tags='az acr repository show-tags -n'                                # Usage: azacr_tags <ACR_NAME> --repository <REPO>
alias azacr_build='az acr build -r'                                             # Usage: azacr_build <ACR_NAME> --image <NAME:TAG> <PATH>

## Key Vault
alias azkv_set='az keyvault secret set --vault-name'                             # Usage: azkv_set <VAULT> --name <SECRET> --file <FILE>
alias azkv_show='az keyvault secret show --vault-name'                           # Usage: azkv_show <VAULT> --name <SECRET>
alias azkv_purge='az keyvault secret purge --vault-name'                         # Usage: azkv_purge <VAULT> --name <SECRET>
