[CmdletBinding()]
Param (

# Define Name of the resource group
[Parameter(Mandatory=$true)]
[ValidateNotNull()]
[String] $RgName,

# Define name of the Virtual Network
[Parameter(Mandatory=$true)]
[ValidateNotNull()]
[string] $VmName,

# Define Vnet Address Prefix of Vnet
[Parameter(Mandatory=$false)]
[ValidateNotNull()]
[string] $image,

[Parameter(Mandatory=$false)]
[ValidateNotNull()]
[string] $UserName,

[Parameter(Mandatory=$false)]
[ValidateNotNull()]
[SecureString] $Password
)

az vm create `
    --resource-group myResourceGroup `
    --name myVM `
    --image win2016datacenter `
    --admin-username azureuser `
    --admin-password myPassword