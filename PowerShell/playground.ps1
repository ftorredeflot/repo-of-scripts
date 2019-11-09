#$PSVersionTable.PSVersion.Major

#Get-Help Add-BitsFile -ShowWindow#


#Get-Command *Archive*#


#get-clipboard#

#Set-Clipboard -Value "que loco"
#Get-Clipboard
#Write-Host (1..32)

<# $apw= Read-Host -AsSecureString
$cred= new-object -TypeName PSCredential -ArgumentList("paco",($apw))
echo $cred
$cred.GetNetworkCredential().Password #>

#Get-Command -FullyQualifiedModule DataOntap| Select -First 2
#Get-Command -FullyQualifiedModule PackageManagement#

#Get-Command -FullyQualifiedModule PowerShellGet #

#$pstest= Get-process | select -first 7

#$pstest|ft


#REGITRY SECTION

# Get-Item -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" | Select-Object -ExpandProperty Property
# Get-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" | fl Productname, ReleaseId
#Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion" | fl Productname, ReleaseId
#Get-ItemPropertyValue -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion" -Name  Productname, ReleaseId
#$PSVersionTable.PSVersion
#Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\PowerShell\3\PowerShellEngine" -Name powershellversion
#set location
#Set-Location "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion"
#Get-ItemPropertyValue -Path . -Name productname
#Set-Location -Path "C:\"
#Set-Location "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion"

#create registry key
#Get-ItemProperty -path ./PowershellPath -ErrorAction SilentlyContinue
#New-ItemProperty -Path . -Name PowerShellPath -PropertyType String -Value $PSHome
#Get-ItemPropertyValue -path . -name PowerShellPath 

#rename registry key
#Rename-ItemProperty -Path . -Name PowerShellPath -NewName PSHome -PassThru
#Get-ItemPropertyValue -Path . -Name PSHome 

#deleting registry key

#Remove-ItemProperty -Path . -Name PSHome



#OBJECTS SECTION
$arr=@()

for ($i=0; $i -le 9; $i++)
{
$obj=new-object -TypeName PSObject

Add-Member -InputObject $obj -MemberType NoteProperty -Name Index -Value "$($i)"
Add-Member -InputObject $obj -MemberType NoteProperty -name ID -Value "id $($i+1)"
Add-Member -InputObject $obj -MemberType NoteProperty -Name Name -Value "Name $($i+1)"

$arr+=$obj

}

$arr.Count

$arr[5].ID
$arr=@()

for ($i=0; $i -le 10; $i++)
{

$hash =@{
            index=$i
            id="ID $($i+2)"
            name= "NAme $($i+3)"
        }
$obj=new-object -TypeName PSObject -Property $hash

$arr+=$obj

}
$arr.Count
$arr
$arr[5].ID
$arr=@()







