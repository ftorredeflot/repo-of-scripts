$strhomedir="C:\Test\home\$env:USERNAME"
New-Item -Path "filesystem::$($strhomedir)" -ItemType Directory

#view acl
Get-Acl $strhomedir |%{$_.Access} |?{$_.IdentityReference -eq "BUILTIN\Administradores"} |ft
Get-Acl $strhomedir |%{$_.Access.Count}

#remove inheritance
$Acl =Get-Acl $strhomedir

$Acl.SetAccessRuleProtection($true,$false)
Set-Acl $strhomedir -AclObject $Acl
Get-Acl $strhomedir |%{$_.Access.Count}


