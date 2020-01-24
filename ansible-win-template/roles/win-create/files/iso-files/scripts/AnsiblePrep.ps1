$url = "https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1"
$file = "$env:temp\ConfigureRemotingForAnsible.ps1"

(New-Object -TypeName System.Net.WebClient).DownloadFile($url, $file)

powershell.exe -ExecutionPolicy ByPass -File $file

powershell.exe Start-Sleep -Seconds 50

powershell.exe Start-Process -FilePath $env:systemroot\system32\msiexec.exe -ArgumentList "/I e:\drivers\virtio\amd64\CloudbaseInitSetup_Stable_x64.msi /qn /l*v log.txt LOGGINGSERIALPORTNAME=""COM1"" -NoNewWindow -Wait -PassThru

powershell.exe Start-Sleep -Seconds 50

powershell.exe Start-Process -FilePath $env:systemroot\system32\msiexec.exe -ArgumentList "/I e:\drivers\virtio\amd64\qemu-ga-x86_64.msi /qn /norestart" -NoNewWindow -Wait -PassThru


