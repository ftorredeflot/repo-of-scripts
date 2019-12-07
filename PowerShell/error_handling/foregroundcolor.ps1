For ($i=1;$i -le 10 ;$i++)
{
    if($i % 2 ){Write-Host "$i is odd" -ForegroundColor Yellow}
    else{Write-Host "$i is even" -ForegroundColor Red}
}

1..10|%{if($_ % 2 -eq 0){Write-Host "$_ is odd" -ForegroundColor Yellow} else{Write-Host "$_ is even" -ForegroundColor Green}}