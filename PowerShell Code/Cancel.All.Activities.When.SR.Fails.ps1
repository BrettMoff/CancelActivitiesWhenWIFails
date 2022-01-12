######################################################################################
## Cancel All Remaining Activities Associated to an SR when the SR Fails            ##
##                                                                                  ##
## Written by Brett Moffett (Cireson)                                               ##
##                                                                                  ##
## By default, when an SR is cancelled, for any reason, any associated activites    ##
## that are still waiting to be executed remain active and therefore remain in 	    ##
## with a status of In Progress. These activites are never groomed from the         ##
## database as they never have a status of Completed.                               ##
## This script gets all activites that are associated to a Service Request with a   ##
## status of In Progress and sets the status to cancelled                           ##
######################################################################################

## Version 1.0 
## Initial release

######################################################################################

# Import required modules
import-module smlets

# Set variables for the In Progress and Cancelled Enumeration lists
# TO DO: Create a setting that will allow analysts to manually set these values.
$InProgress = Get-SCSMEnumeration -Name ActivityStatusEnum.Ready
$Cancelled = Get-SCSMEnumeration -Name ActivityStatusEnum.Cancelled

# Get the target Service request Object
$ServiceRequest = Get-SCSMObject -Class (Get-SCSMClass -Name System.WorkItem.ServiceRequest$) -Filter "Id -eq $ServiceRequestID"

# Get all child activites that are related to the Service Request
$ChildActivities = (Get-SCSMRelationshipObject -BySource $ServiceRequest | ?{$_.RelationshipID -eq "2da498be-0485-b2b2-d520-6ebd1698e61b"})

# For each child Activity | If the status is In Progress | Set the status to Cancelled
$ChildActivities | %{$Activity = Get-SCSMObject -ID $_.TargetObject.Id; if($Activity.Status -eq $InProgress){$Activity | Set-SCSMObject -Property Status -Value $Cancelled}}