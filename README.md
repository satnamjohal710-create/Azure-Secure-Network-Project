# Secure Multi-Tier Azure Infrastructure

## 🚀 Project Overview
Architected a hardened cloud environment in **Azure (Central India)** designed to eliminate the public attack surface. This project demonstrates how to manage private servers securely without using Public IPs.

## 🛠️ Tech Stack
* **Cloud:** Microsoft Azure
* **Security:** Azure Bastion, Network Security Groups (NSG)
* **Identity:** Microsoft Entra ID (RBAC)
* **OS:** Ubuntu 24.04 LTS
* **Automation:** Azure CLI

## 🏗️ Architecture
* **VNet:** `Satnam-VNet-India` (10.0.0.0/16)
* **Private Subnet:** `BackendSubnet` (10.0.1.0/24) - No Public IP assigned to resources.
* **Management Subnet:** `AzureBastionSubnet` (10.0.2.0/24).

## 🛡️ Key Features
1. **Zero Public Exposure:** All VMs are private.
2. **Bastion Access:** Secure management over SSL (Port 443).
3. **Identity Governance:** Managed access via Entra ID security groups.

## 📝 CLI Commands Used
​```bash
# Example of creating the private VNet
az network vnet create --name Satnam-VNet-India --resource-group Satnam-India-RG --location centralindia --address-prefix 10.0.0.0/16
​```
