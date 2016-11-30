workflow Start-ParallelExecution
{
    <#
    parallel{
        sequence{
        #1st Activity   
        Write-Output "1st Date"
        Get-Date
        Sleep 10
        }
        sequence{
        #2nd Activity
        Write-Output "2nd Date"
        Get-Date
        Sleep 10
        }
        sequence{
        #3rd Activity
        Write-Output "3rd Date"
        Get-Date
        Sleep 10
        }
        sequence{
        #4th Activity
        Write-Output "4th Date"
        Get-Date
        Sleep 10
        }
    }
    #>

   $Dates = "1st Date","2nd Date","3rd Date","4th Date"
   
    ForEach -parallel ($Date in $Dates)
    {
        Write-Output $Date
        Get-Date
        Sleep 10
    }
}