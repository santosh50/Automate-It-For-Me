$objShell = New-Object -ComObject Shell.Application
$objFolder = $objShell.Namespace(0xA)

#Empties the Recycle Bin
    Write-Host "Emptying the recycle - bin..."
    $objFolder.items() | %{ remove-Item $_.path -Recurse -Confirm:$False}
    Sleep 5
#Removes Temp
    Write-Host "Removing Temp... "
    Set-Location "C:\Windows\Temp"
    Remove-Item * -Recurse -Force -ErrorAction SilentlyContinue
    
    
    Set-Location "C:\Windows\Prefetch"
    Remove-Item * -Recurse -Force -ErrorAction SilentlyContinue

    Set-Location "C:\Documents and Settings"
    Remove-Item ".\*\Local Settings\temp\*" -Recurse -Force -ErrorAction SilentlyContinue

    Set-Location "C:\Users"
    Remove-Item ".\*\AppData\Local\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue
    Sleep 5
#Cleaning up disk
    Write-Host "Running Disk Cleanup..."
    cleanmgr /sagerun:1 | Out-Null
    $([char]7)
    Sleep 5
    Write-Host "Disk Cleanup is complete"
    Sleep 2