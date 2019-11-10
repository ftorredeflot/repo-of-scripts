#needs admin rights

#new-eventlog

$strLogName="New Test Event"
$strLogSource=$strLogName
New-EventLog -LogName $strLogName -Source $strLogSource

#write-eventlog

for($i=0;$i -lt 7; $i++)
{
if ($i%2){$strType="Error"}ELSE{$strType="Warning"}
$strMessage="Creating $strType event"
Write-EventLog -LogName $strLogName -Source $strLogName -Message $strMessage -EventId $i -EntryType $strType
}

Get-EventLog -List |?{$_.Log -eq $strLogName}
Get-EventLog -LogName Application -Newest 8 |ft Source,InstanceId,EntryType,Message -AutoSize

#openeventviewer 
Show-EventLog