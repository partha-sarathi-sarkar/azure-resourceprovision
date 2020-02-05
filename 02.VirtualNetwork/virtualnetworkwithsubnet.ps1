[CmdletBinding()]
Param (

# Define Name of the resource group
[Parameter(Mandatory=$true)]
[ValidateNotNull()]
[String] $RgName,

# Define name of the Virtual Network
[Parameter(Mandatory=$true)]
[ValidateNotNull()]
[string] $VnetName,

# Define Vnet Address Prefix of Vnet
[Parameter(Mandatory=$true)]
[ValidateNotNull()]
[string] $VnetAddressPrefix,

# Define Address Prefix of Vnet
[Parameter(Mandatory=$true)]
[ValidateNotNull()]
[string] $SubnetName,

# Define Subnet Address Prefix of Vnet
[Parameter(Mandatory=$true)]
[ValidateNotNull()]
[string] $SubnetAddressPrefix
)


az network vnet create -g $RgName `
                       -n $VnetName --address-prefix $VnetAddressPrefix `
                       --subnet-name MySubnet `
                       --subnet-prefix $SubnetAddressPrefix