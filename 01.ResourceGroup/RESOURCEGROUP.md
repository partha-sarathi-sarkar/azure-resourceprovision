|title    |description  |services |author |
|---------|-------------|---------|-------|
|Create resource group using azure cli     | Learn how to create resource group            |   Infrastrucure Provision      | Partha Sarathi Sarkar      |




# Resource Group

## Getting Started

These instructions will allow you to run the PowerShell script. This script can also be made part of some kind of scheduler to run it at defined frequency. The instructions to configure script as a scheduled job, will vary from type of Scheduler and are not in the scope of this guide.

## Prerequisites

* You need an Azure Service Principal Account or Azure Login Credentials to login in Azure Portal
* You need to have Azure CLI and PowerShell installed on the machine, where you are running the script.

## Parameters

* location - This is a required parameter.location where resource group will be Created
* name - This is a required parameter.name of the resource group
* SubscriptionName - This is not a required parameter. If service account is associated with only one subscription, then you do not need to provide this. If not, this can be used to set the context in which container registry is located.

## Example

* **.\resoucegroupcreate.ps1 -Location eastus -Name newRG -SubscriptionName my-subscription-name**
* **.\resoucegroupcreate.ps1 -Location eastus -Name newRG**

## Output

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
