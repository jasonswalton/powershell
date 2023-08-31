# Delete local profiles from a Windows OS
# TODO create a module

$UserProfiles = Get-CimInstance Win32_UserProfile -Filter 'Special = False AND Loaded = False'

$skip = @('keepuser')

foreach($profile in $UserProfiles)
{
    $user = Split-Path $profile.LocalPath -Leaf

    if($skip -contains $user) { continue } # Skips accounts from $skip

    Write-Output "Delete $user profile?"
    $choice = Read-Host -Prompt "[Y] Yes or [N] No"

    if($choice -eq 'y')
    {
        Write-Output "Deleting $user"
        Remove-CimInstance $profile
    }
    else
    {
        Write-Output "Skipping $user"
    }
}
