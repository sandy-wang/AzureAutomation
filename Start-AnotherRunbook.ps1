workflow Start-AnotherRunbook
{
    $Workflow = Start-Workflow -Address "55 Norfolk St" -name "John Doe"
    $Name = $Workflow[0]
    $Address = $Workflow[1]
    
    Write-Output "The name of your customer is $Name"
    Write-Output "Who lives at $Address"
}