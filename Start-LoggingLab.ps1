workflow Start-LoggingLab
{
    $VerbosePreference = "Continue"

InlineScript{
        $VerbosePreference = [System.Management.Automation.ActionPreference]$Using:VerbosePreference
        Write-Verbose "This is a Verbose Line Within an InlineScript"
    }

    Write-OutPut "This is an Output Line"
 
    Write-Warning "This is a Warning Line"
 
    Write-Error "This is an Error Line"
 
    Write-Verbose "This is a Verbose Line"
    
    Write-Progress "This is a Progress Line"

    Write-Debug "This is a Debug Line"
}