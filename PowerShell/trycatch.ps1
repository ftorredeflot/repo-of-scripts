try
{
New-Object $objnew
}
catch
{
Write-Host "caught a system exception"
}
finally{
Write-Host "clean up"
}