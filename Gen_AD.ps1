
param (
    [Parameter(Mandatory=$true)]
    $JSONFile
)

$json = (Get-Content $JSONFile | ConvertFrom-JSON)

echo $json.users
