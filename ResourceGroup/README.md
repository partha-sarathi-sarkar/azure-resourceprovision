# Resource Group

## Getting Started
These instructions will allow you to run the PowerShell script. This script can also be made part of some kind of scheduler to run it at defined frequency. The instructions to configure script as a scheduled job, will vary from type of Scheduler and are not in the scope of this guide. 

## Prerequisites
* You need an Azure Service Principal Account or Azure Login Credentials to login in Azure Portal
* You need to have Azure CLI and PowerShell installed on the machine, where you are running the script.

## Parameters
* location - location where resource group will be Created
* name - name of the resource group

## Example
.\resoucegroupcreate.ps1 -location westus -Var2 name newRG

After aplly this file resource group will be created.
