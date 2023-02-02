$FolderName = 'C:\Automate'
Test-Path C:\Automate

if (Test-Path $FolderName) {

}
else
{
New-Item $FolderName -ItemType Directory
}

#mkdir c:\Automate
$url = 'https://github.com/digacoretechnology/ltscripts/raw/5bd4a6b975070635e5c6b1fcab7c502fc75d3bb3/Automate-Install/Agent_Install.MSI'
$output = 'C:\Automate\Automate.msi'
Start-BitsTransfer -Source $url -Destination $output

msiexec /i c:\Automate\Automate.msi