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
[Parameter(Mandatory=$false)]
[ValidateNotNull()]
[string] $VnetAddressPrefix
)

if ($VnetAddressPrefix) {
    az network vnet create -g $RgName -n $VnetName  --address-prefix $VnetAddressPrefix
}else {
    az network vnet create -g $RgName -n $VnetName 
}
