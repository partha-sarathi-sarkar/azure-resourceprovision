[CmdletBinding()]
Param (

# Define location of the resource group
[Parameter(Mandatory=$true)]
[ValidateNotNull()]
[String] $Location,

# Define name of the resource group
[Parameter(Mandatory=$true)]
[ValidateNotNull()]
[string] $Name,

# Define Azure Subscription Name
[Parameter (Mandatory=$false)]
[ValidateNotNullOrEmpty()]
[String] $SubscriptionName
)


if ($SubscriptionName){
    Write-Host "Setting subscription to: $SubscriptionName"
    az group create --location $Location `
                --name $Name `
                --subscription $SubscriptionName
}else {
    az group create --location $Location `
                --name $Name
}