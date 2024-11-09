# Firefox Download VSCode Integration

This directory contains scripts and registry files to enhance the integration between Firefox and Visual Studio Code (VSCode). The provided files allow you to update the Firefox download path and add/remove context menu options for Firefox and VSCode.

## Files

- `UpdateFirefoxDownloadPath.ps1`: A PowerShell script to update the Firefox download path.
- `AddFirefoxBackgroundContextMenu.reg`: A registry file to add a Firefox background context menu.
- `AddFirefoxContextMenu.reg`: A registry file to add a Firefox context menu.
- `AddVSCodeBackgroundContextMenu.reg`: A registry file to add a VSCode background context menu.
- `RemoveFirefoxContextMenu.reg`: A registry file to remove the Firefox context menu.

## Usage

### Update Firefox Download Path

1. Open PowerShell.
2. Navigate to the directory containing `UpdateFirefoxDownloadPath.ps1`.
3. Run the script with the new download path as a parameter:
   ```powershell
   .\UpdateFirefoxDownloadPath.ps1 -newDownloadPath "C:\New\Download\Path"
   ```

### Add Firefox Background Context Menu

1. Double-click `AddFirefoxBackgroundContextMenu.reg`.
2. Confirm the changes to the registry.

### Add Firefox Context Menu

1. Double-click `AddFirefoxContextMenu.reg`.
2. Confirm the changes to the registry.

### Add VSCode Background Context Menu

1. Double-click `AddVSCodeBackgroundContextMenu.reg`.
2. Confirm the changes to the registry.

### Remove Firefox Context Menu

1. Double-click `RemoveFirefoxContextMenu.reg`.
2. Confirm the changes to the registry.
