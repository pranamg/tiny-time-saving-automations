# PowerShell script to update the Firefox download path

param (
    [string]$newDownloadPath
)

if (-not $newDownloadPath) {
    Write-Output "No folder path provided."
    exit
}

# Function to update the Firefox download path in the prefs.js file
function Update-FirefoxDownloadPath {
    param (
        [string]$prefsFilePath,
        [string]$newPath
    )

    if (Test-Path $prefsFilePath) {
        # Define the preference you want to update
        $preferenceLine = 'user_pref("browser.download.dir", "' + $downloadDirectory + '");'

        $prefsContent = Get-Content $prefsFilePath
    
        # Check if the preference already exists
        $existingLine = $prefsContent | Where-Object { $_ -like 'user_pref("browser.download.dir",*' }

        if ($existingLine) {
            # Update the existing preference
            $prefsContent = $prefsContent -replace [regex]::Escape($existingLine), $preferenceLine
        } else {
            # Add the new preference line
            $prefsContent += $preferenceLine
        }

#        $prefsContent = $prefsContent -replace 'user_pref\("browser.download.dir", ".*"\);', "user_pref(`"browser.download.dir`", `"$newPath`");"

        Set-Content -Path $prefsFilePath -Value $prefsContent -Force
        Write-Output "Firefox download path updated to $newPath"
    } else {
        Write-Output "prefs.js file not found at $prefsFilePath"
    }
}

# Main script execution
$firefoxProfilePath = "$env:APPDATA\Mozilla\Firefox\Profiles"
$profileDirs = Get-ChildItem -Path $firefoxProfilePath -Directory

foreach ($profileDir in $profileDirs) {
    $prefsFilePath = Join-Path -Path $profileDir.FullName -ChildPath "prefs.js"
    Update-FirefoxDownloadPath -prefsFilePath $prefsFilePath -newPath $newDownloadPath
}
