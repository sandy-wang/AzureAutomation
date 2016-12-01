workflow start-Checkpointworkflow
{
    <#
    $i = 0 
    while($true) 
    { Start-Sleep -Seconds 3 
    $i++ 
    Write-Output $i
    Checkpoint-Workflow 
    #>
    Write-Output "Stop After Step 1 of DR for Manual process"
    Suspend-Workflow 
    Write Output "Final automated process beginning"
}