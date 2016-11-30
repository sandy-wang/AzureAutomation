workflow Start-Workflow
{
    #Declare paramaters
    param(
    [Parameter(Mandatory = $true)] 
    [string]$Name,
    [Parameter(Mandatory = $false)] 
    [string]$Address
    )
    Write-Output $Name
    if ($Address -ne $null)
    {
        Write-Output $Address     
    }
}