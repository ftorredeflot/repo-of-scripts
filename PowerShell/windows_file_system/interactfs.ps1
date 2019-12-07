#env variable
Get-ChildItem -Path Env: |ft Name
$env:USERNAME
$env:COMPUTERNAME
$env:SystemDrive

#set env variables

$env:TEAM="it"
Set-Item -Path env:TEAM -Value "$($env:TEAM)-admin"
$env:TEAM

#Create folders
$strHomeDir="C:\Test\Home"

IF(!(Test-Path -Path "filesystem::$($strHomeDir)"))
{
    New-Item -Path "filesystem::$($strHomeDir)" -ItemType Directory
    Write-Host "Home Directory created for $($env:USERNAME):$($strHomeDir)" -ForegroundColor green
}
else
{
    Write-Host "folder already created!" -ForegroundColor Red
}

#Move folders

$strMoved="$($strHomeDir)_old"

if((Test-Path -Path "filesystem::$($strHomeDir)") -and !(Test-Path -Path "filesystem::$($strMoved)"))
{
Move-Item -Path $strHomeDir -Destination $strMoved -Confirm:$false
Write-Host "Moved folder from $($strHomeDir)  to $($strMoved)." -ForegroundColor Green

}
else{
Write-Host "folder doesn't  exists" -ForegroundColor Red
}

#rename folders

$strNew="$($strMoved)_new"
Rename-Item -Path $strMoved -NewName $strNew -Confirm:$false
Write-Host "Renamed folder from $($strMoved) to $($strNew)." -ForegroundColor Red

#delete folders

Remove-Item -Path $strNew -Confirm:$false -Recurse
Write-Host "folder deleted " -ForegroundColor Yellow

#create files
$strFolder="C:\Test\3_1"
$strFile="test.txt"
New-Item -Path "filesystem::$($strFolder)" -ItemType Directory
New-Item -Path $strFolder -ItemType File -Name $strFile

#overwrite File
New-Item -Path $strFolder -ItemType File -Name $strFile -Value "adding content" -Force