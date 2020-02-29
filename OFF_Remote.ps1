#For Remote PC
Enable-PSRemoting -Force
Set-Item WSMan:\localhost\Client\TrustedHosts -Value "LAPTOP-PD72VIJS" -Force Restart-Service WinRM
#For Local PC
Start-Service WinRM
Set-Item WSMan:\localhost\Client\TrustedHosts -Value "DESKTOP-N3OLGNJ" -Force Restart-Service WinRM
Enter-PSSession -ComputerName DESKTOP-N3OLGNJ -Credential Saathvik69
#Type in the password for Remote_PC and type the command mentioned in shutdown.ps1