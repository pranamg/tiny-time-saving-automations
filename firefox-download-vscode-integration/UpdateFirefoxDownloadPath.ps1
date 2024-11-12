# PowerShell script to update the Firefox download path

param (
    [string]$newDownloadPath
)

if (-not $newDownloadPath) {
    Write-Output "No folder path provided."
    exit
}

# Function to update the Firefox download path in the user.js file
function Update-FirefoxDownloadPath {
    param (
        [string]$userFilePath,
        [string]$newPath
    )

    if (Test-Path $userFilePath) {
        # Define the preference you want to update
        $preferenceLine = 'user_pref("browser.download.dir", "' + $newPath + '");'

        $userContent = Get-Content $userFilePath
    
        # Check if the preference already exists
        $existingLine = $userContent | Where-Object { $_ -like 'user_pref("browser.download.dir",*' }

        if ($existingLine) {
            # Update the existing preference
            $userContent = $userContent -replace [regex]::Escape($existingLine), $preferenceLine
        } else {
            # Add the new preference line
            $userContent += $preferenceLine
        }

        Set-Content -Path $userFilePath -Value $userContent -Force
        Write-Output "Firefox download path updated to $newPath"
    } else {
        # Create user.js file and add the preference
        $preferenceLine = 'user_pref("browser.download.dir", "' + $newPath + '");'
        Set-Content -Path $userFilePath -Value $preferenceLine -Force
        Write-Output "user.js file created and Firefox download path set to $newPath"
    }
}

# Main script execution
$firefoxProfilePath = "$env:APPDATA\Mozilla\Firefox\Profiles"
$profileDirs = Get-ChildItem -Path $firefoxProfilePath -Directory

foreach ($profileDir in $profileDirs) {
    $userFilePath = Join-Path -Path $profileDir.FullName -ChildPath "user.js"
    Update-FirefoxDownloadPath -userFilePath $userFilePath -newPath $newDownloadPath
}
