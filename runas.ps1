$pw = convertto-securestring -string "exfil" -asplaintext -force;
$pp = new-object -typename System.Management.Automation.PSCredential -argumentlist "exfil", $pw;
#$cmd2 = c:\temporary\install_pstools.ps1
$cmd = c:\temporary\copy_file.bat
Start-Process powershell -Credential $pp -ArgumentList '-noprofile -command &{Start-Process $cmd  -verb runas}'
#Start-Sleep -Seconds 5
#Start-Process powershell -Credential $pp -ArgumentList '-noprofile -command &{Start-Process $cmd2  -verb runas}'
