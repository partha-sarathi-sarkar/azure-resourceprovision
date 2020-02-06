
[CmdletBinding()]
Param (

# Define Vm name
[Parameter(Mandatory=$false)]
[ValidateNotNull()]
[string] $VmName,

# Define Name of the resource group
[Parameter(Mandatory=$true)]
[ValidateNotNull()]
[String] $RgName,

# Define name of Vm Image
[Parameter(Mandatory=$true)]
[ValidateNotNull()]
[string] $Image,

# Define Zone
[Parameter(Mandatory=$false)]
[ValidateNotNull()]
[string] $Zone
)

az vm create -n $VmName `
             -g $RgName `
             --image $Image `
             --zone $Zone