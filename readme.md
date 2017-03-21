# Hybrid Defined Datacenter ARM Templates Across Azure and Azure Stack - Lawrance Reddy
## Single-Click deploy at
http://www.cloudlogic.expert/single-post/2016/09/05/The-Software-Defined-Datacentre


This repo contains infrastructure as code examples of Hybrid software defined datacenters. From start to finish, these examples are layered and a stepped up approach to building complete scenarios.
You are free to download this code and reuse them as you see fit.
This codebase is made up of certain snippets from the Azure quickstart templates, but with completely new features and capabilities. 


It is important to node that as you use these templates, it is important to understand the syntaxes and parameters required. incorrect parameters used will result in the deployment failing.

## How to Use Templates

In this repository some examples of Hybrid software defined datacenters.  You will require a valid Azure Subscription to test these deployments. You will also be requested to enter parameters for each deployment. 

These deployments will automatically configure a private network, install the servers and make the appropriate configurations as requested without further input. A total end to end experience.


## Active directory + domain joined file server.
This template deploys a network with a new active directory forest and a domain joined file server. The private network sits behind a firewall. 

## Active directory + backup dc + domain joined file server.
This template deploys a new active directory forest with 2 domain controllers of  the same domain. A file server is  also domain joined to this network which is protected behind a firewall. 

## Active directory + file + web servers.
This template deploys a active directory forest with  multiple domain controllers. It also includes 2 domain  joined web servers. 

## File Server + custom shares using DSC
This templates creates a active directory forest with  a file  server and automatically creates a custom  share.

## File server + additional user created using DSC
This template in addition to creating an active directory forest with a file server, it automatically assigns a custom user to the local users and groups.

## Backup vault + policy added to single vm deployment.
This template in addition to creating a virtual machine, will auto create a backup vault and a custom backup policy. 

## Automatic backup added to single vm
This template in addition to creating a virtual machine, will auto create a backup vault a custom backup policy and will automatically enable data protection. The following define the mandatory backup policy parameters, note that syntax for the arrays need to be exact and enclosed with square brackets.

## Data protection vault + policy added to multi-server deployment
This template will build a small datacentre, comprising of 2 domain controllers, file server and web servers with a backup vault and the associated policies. DSC configuration does the automation of each tier.

## Automatic backup added to each server in a multi-server deployment.
This template will add to the template above by adding automatic data protection to the attached VMs. DSC configuration does the automation of each tier.


## Parameters

## Vault & Policy

Mandatory parameters required to auto configure the backup vault and policy. change the parameters to match whether policy is daily, weekly or other.

"vaultName": "vmbackupvault"
"policyName":"MyPolicy" 
"scheduleRunDays": ["Monday"]       
"scheduleRunTimes": ["2016-09-12T09:00:00.000Z"]             
"weeklyRetentionDurationCount": 2 
"daysOfTheWeekForMontlyRetention":  ["First"]
"weeksOfTheMonthForMonthlyRetention":  ["First"]    
"monthlyRetentionDurationCount":  3
"monthsOfYear": ["January"]        
"daysOfTheWeekForYearlyRetention": ["Monday"]          
"weeksOfTheMonthForYearlyRetention": ["Monday"]          
"yearlyRetentionDurationCount":  2
"skuName": "Standard"

## Auto Protect

Mandatory parameters required to automatically configure the backup of the VMs being protected. use  these as parameters or variables.

 protection container
 iaasvmcontainer;iaasvmcontainerv2;my-resource-group;my-arm-vm 
 protectable item
 vm;iaasvmcontainerv2;my-resource-group;my-arm-vm
 resource ids
/subscriptions/subscriptionid/resourceGroups/resourceGroupName/p  roviders/Microsoft.Compute/virtualMachines/my-arm-vm
