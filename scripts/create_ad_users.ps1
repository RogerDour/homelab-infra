# Requires RSAT/AD module
# Example: .\create_ad_users.ps1 -CsvPath .\users.csv -Ou "OU=Students,DC=lab,DC=local"

param(
  [string]$CsvPath = ".\users.csv",
  [string]$Ou = "OU=Students,DC=lab,DC=local"
)

Import-Module ActiveDirectory

$users = Import-Csv -Path $CsvPath
foreach ($u in $users) {
  $sam = $u.SamAccountName
  $name = "$($u.GivenName) $($u.Surname)"
  try {
    New-ADUser `
      -Name $name `
      -GivenName $u.GivenName `
      -Surname $u.Surname `
      -SamAccountName $sam `
      -UserPrincipalName "$sam@lab.local" `
      -Path $Ou `
      -AccountPassword (ConvertTo-SecureString $u.Password -AsPlainText -Force) `
      -ChangePasswordAtLogon $false `
      -Enabled $true
    Write-Host "Created: $sam"
  } catch {
    Write-Warning "Failed: $sam – $_"
  }
}
