#error handling

$Error.Count
#throw eror
#get-thisdoesnotexist
#view errors
$Error.Count
#view error datatype
$Error.GetType().name
#show erroe exception message
$error[0].Exception
#show exception type
$error[0].Exception.GetType().name

New-Object -PropertyDoesNotExist
$Error.Count
$Error[0].Exception.GetType().name

#configure error action
$ErrorActionPreference
$ErrorActionPreference="Stop"
$ErrorActionPreference="SilentlyContinue"

#error action parameter
get-childitem "h:\doesnotexist" -ErrorAction Ignore
$Error.Count

get-childitem "h:\doesnotexist" -ErrorAction inquire
get-childitem "h:\doesnotexist" -ea SilentlyContinue