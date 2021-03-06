#
# Module manifest for module 'TobPsOctopus'
#
# Generated by: Toby.Phillips
#
# Generated on: 22/05/2019
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'TobPsOctopus.psm1'

# Version number of this module.
ModuleVersion = '0.0.1'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = 'e8dc2a4b-7830-4b86-9f42-4c02aeb43d3d'

# Author of this module
Author = 'Toby.Phillips'

# Company or vendor of this module
CompanyName = 'Unknown'

# Copyright statement for this module
Copyright = '(c) Toby.Phillips. All rights reserved.'

# Description of the functionality provided by this module
# Description = ''

# Minimum version of the PowerShell engine required by this module
# PowerShellVersion = ''

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = 'Assemblies\System.Web.dll', 'Assemblies\System.Net.Http.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Set-OctopusServer', 'Update-OctopusProjectList', 
               'Get-OctopusMachineIdFromServerName', 
               'Get-WebStackLetterFromProjectName', 
               'Get-taskStackLetterFromProjectName', 
               'Get-OctopusProjectsByStackLetterOld', 
               'Get-OctopusProjectsByWebNode', 'Get-OctopusProjectsByDatabase', 
               'Get-OctopusProjectsByVersion', 'Get-OctopusProjectsByTaskServer', 
               'Get-EnvironmentNameFromId', 'Get-EnvironmentIdFromName', 
               'Get-OctopusVariableValue', 'Add-SingleStepToProjects', 
               'Add-MultiStepsToProjects', 'Delete-OctopusVariable', 
               'Add-StackTargetRole', 'Remove-StackTargetRole', 
               'Get-MostRecentSuccessfulDeployment', 'Get-OctopusRelease', 
               'New-OctopusRelease', 'New-OctopusDeployment', 
               'Get-DeploymentProcess', 'Get-ServerNamesForStackLetter', 
               'Update-ProjectGroup', 'Get-OctopusUserPermissions', 
               'Get-OctopusApiKeyAudit', 'Get-OctopusKeyLastUse', 
               'Invoke-AdhocScript', 'Get-PostDeploymentDetails', 'Get-OctopusTask', 
               'Get-MostRecentDeploymentState', 'Get-OctopusChannelsForProject', 
               'Watch-TaskProgress', 'Update-CalamariVersion', 
               'Update-OctopusMachineConfig', 'Update-VariableSnapshot', 
               'Remove-OctopusUser', 'Update-OctopusUsersFromAd', 
               'Get-OctopusProject', 'Update-OctopusProjectLogo', 
               'Update-AllOctopusProjectLogos', 'Remove-OctopusProject', 
               'Remove-OctopusRelease', 'Get-OctopusReleasesForProject', 
               'Start-OctopusReleaseCleanup', 'Start-OctopusTaskCleanup', 
               'Get-AllOctopusPackages', 'New-InitialOctopusRelease', 
               'Remove-StepFromProjects', 'Add-StackTargetRole2', 
               'Remove-StackTargetRole2', 'Get-LatestOctopusPackage', 
               'Submit-NewOctopusPackage', 'Get-OctopusMachine', 
               'Update-MachineRoles', 'Get-OctopusProjectsByStackLetter', 
               'Update-OctopusVariable', 'Remove-OctopusMachine', 
               'Get-OctopusMachinesByRole', 'New-OctopusReleaseCreate', 
               'Get-OctopusProjectGroup', 'Get-OctopusGroupNameFromId', 
               'Get-OctopusProjectGroups', 'Update-OctopusProject', 
               'Update-OctopusChannels', 'Remove-OctopusChannel', 
               'Update-OctopusDeploymentProcess', 'Get-OctopusLifecycles', 
               'Update-OctopusActionTemplate', 'New-OctopusActionTemplate', 
               'Update-OctopusActionTemplateUsage', 'Update-OctopusActionVersions', 
               'Get-OctopusActionTemplates', 'Update-OctopusVariableSets', 
               'Get-OctopusVariableSet', 'Disable-OctopusProject'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = '*'

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = '*'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        # Tags = @()

        # A URL to the license for this module.
        # LicenseUri = ''

        # A URL to the main website for this project.
        # ProjectUri = ''

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        # ReleaseNotes = ''

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

