$profileDir = Split-Path -parent $profile
$componentDir = Join-Path $profileDir "components"
if (![System.IO.Directory]::Exists($profileDir)) {[System.IO.Directory]::CreateDirectory($profileDir)}
if (![System.IO.Directory]::Exists($componentDir)) {[System.IO.Directory]::CreateDirectory($componentDir)}
Copy-Item -Path ./*.ps1 -Destination $profileDir -Exclude "bootstrap.ps1" -Confirm
Copy-Item -Path ./components/** -Destination $componentDir -Include ** -Confirm
Copy-Item -Path ./homeFiles/** -Destination $home -Include ** -Confirm
Remove-Variable componentDir
Remove-Variable profileDir
