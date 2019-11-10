#try
#{
#New-Object $objnew
#}
#catch
#{
#Write-Host "caught a system exception"
#}
#finally{
#Write-Host "clean up"
#}


#multiple catch
#only catch the first error

try
{
1/0
New-Object $objnew
}
catch [DivideByZeroException]{

Write-Host "caught a divide by zero exception"
}
catch
{
Write-Host "caught a system exception"
}
finally{
Write-Host "clean up"
}