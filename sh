Hosted File:
Set-LocalUser -Name "Administrator" -Password (ConvertTo-SecureString -AsPlainText "@rdpbyav321" -Force)
Get-LocalUser -Name "Administrator" | Enable-LocalUser 
Invoke-WebRequest https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip
tar xf ngrok.zip
Copy ngrok.exe C:\Windows\System32
cmd /c echo ./ngrok.exe authtoken "2E5JSgaRhDfe8Mq890Sr9c9i0zC_4evAGiF3z8VyVGHeM7h1f" >a.ps1
cmd /c echo cmd /k start ngrok.exe tcp 3389 >>a.ps1
