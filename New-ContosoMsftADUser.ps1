workflow New-ContosoMsftADUser
{
    param(
        [Parameter(Mandatory = $true)] 
        [string]$Username,
        [Parameter(Mandatory = $true)] 
        [string]$Password
        )
 
    $Server = Get-AutomationVariable -Name 'ContosoMsftDC'
    $PSUserCred = Get-AutomationPSCredential -Name 'Contoso_msft_student'
 
    Inlinescript{
        #Bring the Usernsame into the Inlinescript
        $Username = $using:Username
        #Bring the Password into the Inlinescript
        $Password = $using:Password
        #Convert the password to a secure string
        $SecPassword = ConvertTo-SecureString $Password -AsPlainText -Force
        #Create a Contoso.msft ADUser
        $Newuser = new-Aduser -Name $Username -AccountPassword $SecPassword -PasswordNeverExpires $true -Enabled $true
        #Get the user details to pass back as Output
        get-ADUser -Identity $Username -Server $using:Server -Credential $using:PSUserCred
    }

}