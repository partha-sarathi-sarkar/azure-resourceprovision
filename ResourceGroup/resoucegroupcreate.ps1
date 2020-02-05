param (
[Parameter(Mandatory=$True)]
[ValidateNotNull()]
$location,
[Parameter(Mandatory=$True)]
[ValidateNotNull()]
$name    
 )

az group create --location $location`
                --name $name