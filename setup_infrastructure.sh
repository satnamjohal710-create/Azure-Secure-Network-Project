#!/bin/bash

# 1. Create Resource Group in Central India
az group create --name Satnam-India-RG --location centralindia

# 2. Networking: Create VNet and Backend Subnet
az network vnet create \
  --resource-group Satnam-India-RG \
  --name Satnam-VNet-India \
  --address-prefix 10.0.0.0/16 \
  --subnet-name BackendSubnet \
  --subnet-prefix 10.0.1.0/24

# 3. Networking: Create dedicated Bastion Subnet
az network vnet subnet create \
  --resource-group Satnam-India-RG \
  --vnet-name Satnam-VNet-India \
  --name AzureBastionSubnet \
  --address-prefix 10.0.2.0/24

# 4. Security: Create Public IP for Bastion
az network public-ip create \
  --resource-group Satnam-India-RG \
  --name Bastion-PublicIP \
  --sku Standard

# 5. Security: Deploy Azure Bastion Host
az network bastion create \
  --name Satnam-Bastion \
  --public-ip-address Bastion-PublicIP \
  --resource-group Satnam-India-RG \
  --vnet-name Satnam-VNet-India \
  --location centralindia

# 6. Verification: Check VM internal IP (Run after VM is created via Portal)
# az vm list-ip-addresses --resource-group Satnam-India-RG --name SecureServer-VM
