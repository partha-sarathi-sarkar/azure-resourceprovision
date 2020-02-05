|title    |description  |services |author |
|---------|-------------|---------|-------|
|Create resource group using azure cli     | Learn how to create Virtual Network |   Infrastrucure Provision      | Partha Sarathi Sarkar      |

# Virtual Network

## Getting Started

These instructions will allow you to run the PowerShell script. This script can also be made part of some kind of scheduler to run it at defined frequency. The instructions to configure script as a scheduled job, will vary from type of Scheduler and are not in the scope of this guide.

## Prerequisites

* You need an Azure Service Principal Account or Azure Login Credentials to login in Azure Portal
* You need to have Azure CLI and PowerShell installed on the machine, where you are running the script.
* You need to login in azure from azure cli.

## Parameters

* RgName - Resource group name.
* VnetName - Name of the virtual Network
* VnetAddressPrefix - Name of the Vnet Address Prefix
* SubnetName - Name of the Subnet.
* SubnetAddressPrefix - Subnet Address Prefix

## Example

* **.\resoucegroupcreate.ps1 -Location eastus -Name newRG -SubscriptionName my-subscription-name**
* **.\resoucegroupcreate.ps1 -Location eastus -Name newRG**

### Output

```json
{
  "id": "/subscriptions/<guid>/resourceGroups/myResourceGroup",
  "location": "eastus",
  "managedBy": null,
  "name": "myResourceGroup",
  "properties": {
    "provisioningState": "Succeeded"
  },
  "tags": null
}
```
