#Before creating AKS create Service Principal and register feature windows container.
#Reference windows container : https://docs.microsoft.com/en-us/azure/aks/windows-container-cli


# create a Vnet and subnet and change those value below

$PASSWORD_WIN="P@ssw0rd1234" #its is for windows password
$subnetId="/subscriptions/dafd8d0d-06d0-41ff-a594-61d315bb635a/resourceGroups/TUDEV-ZA/providers/Microsoft.Network/virtualNetworks/TuTest_VNET/subnets/k8s-subnet" #subnet id
$clientsecret="E:.ypY?oD?AIcHVhmR71eIXp5kzh8@T5" #client secret
$clientId="3dc5b2c8-3c31-4260-9190-7eafcd66a191" #client id
$workspaceId="7f29e34b-ce8c-4f94-8549-a79deda8ef62" #workspaceid #if required fetch it from portal


#for creating AKS
az aks create `
    --resource-group TUDEV-ZA `
    --name k8s-ps `
    --node-count 1 `
    --kubernetes-version 1.13.12 `
    --generate-ssh-keys `
    --windows-admin-password $PASSWORD_WIN `
    --windows-admin-username azureuser `
    --vm-set-type VirtualMachineScaleSets `
    --node-vm-size Standard_B2ms `
    --load-balancer-sku standard `
    --network-plugin azure `
    --vnet-subnet-id $subnetId `
    --docker-bridge-address 172.17.0.1/16 `
    --dns-service-ip 10.2.0.10 `
    --service-cidr 10.2.0.0/24 `
    --client-secret $clientsecret `
    --service-principal $clientId `
    --max-pods 200


# for nodepool
az aks nodepool add `
    --resource-group TUDEV-ZA `
    --cluster-name k8s-ps `
    --os-type Windows `
    --name npwin `
    --node-vm-size Standard_B2ms `
    --node-count 1 `
    --kubernetes-version 1.13.12 `
    --enable-cluster-autoscaler `
    --min-count 1 `
    --max-count 3



# create workpace from portal : https://docs.microsoft.com/en-us/azure/azure-monitor/learn/quick-create-workspace

# Fetch the workspace id & and after fetching it change value in workspace resource id.

#az aks enable-addons -a monitoring -n myakscluster -g myaks  --workspace-resource-id  3c63201d-9432-4015-95cb-8cd91b6823c6 #will attach existing workspace with Aks