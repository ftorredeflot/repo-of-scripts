$PSVersionTable.PSVersion.Major

Get-Help Add-BitsFile -ShowWindow


Get-Command *Archive*

get-clipboard

Set-Clipboard -Value "que loco" 

Write-Host (1..32)

$apw= Read-Host -AsSecureString
$cred= new-object -TypeName PSCredential -ArgumentList("paco",($apw))
echo $cred
$cred.GetNetworkCredential().Password
