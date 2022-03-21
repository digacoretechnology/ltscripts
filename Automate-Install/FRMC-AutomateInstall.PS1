$FolderName = 'C:\Automate'
Test-Path C:\Automate

if (Test-Path $FolderName) {

}
else
{
New-Item $FolderName -ItemType Directory
}

#mkdir c:\Automate
$url = 'https://digacore.hostedrmm.com/LabTech/Deployment.aspx?InstallerToken=d2ca796dbc8a489aae08ee6e4e49727c'
$output = 'C:\Automate\Automate.msi'
Start-BitsTransfer -Source $url -Destination $output

msiexec /i c:\Automate\Automate.msi