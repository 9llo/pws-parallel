$dataArray = 1..100

if ($PSVersionTable.PSVersion.Major -eq 7) {

    Write-Host "PowerShell version $($PSVersionTable.PSVersion.Major).$($PSVersionTable.PSVersion.Minor).$($PSVersionTable.PSVersion.Patch)"

    $executionTime = Measure-Command {
        $dataArray | ForEach-Object -Parallel {
            # Simulate command with a 1-second sleep
            Start-Sleep -Seconds 1
            Write-Host "Processed $_"
        } -ThrottleLimit 64
    } 

    Write-Host "Execution time was $($executionTime) seconds"
}

elseif ($PSVersionTable.PSVersion.Major -eq 5) {

    Write-Host "PowerShell version $($PSVersionTable.PSVersion.Major).$($PSVersionTable.PSVersion.Minor).$($PSVersionTable.PSVersion.Patch)"

    $executionTime = Measure-Command {
        $dataArray | ForEach-Object {
            # Simulate command with a 1-second sleep
            Start-Sleep -Seconds 1
            Write-Host "Processed $_"
        }
    }

    Write-Host "Execution time was $($executionTime) seconds"
}