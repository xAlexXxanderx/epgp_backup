. $PSScriptRoot/config.ps1

$date = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"

$backup_name="$date"+"_epgp.lua"
$epgp_db="$wow_folder/WTF/Account/$account_name/SavedVariables/epgp.lua"

Copy-Item -Path $epgp_db -Destination "$backup_folder/$backup_name"
Write-Output "$epgp_db copied to $backup_folder/$backup_name".replace('\','/')
