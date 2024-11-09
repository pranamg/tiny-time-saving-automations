# Firefox Download VSCode Integration

This directory contains scripts and registry files to enhance the integration between Firefox and Visual Studio Code (VSCode). The provided files allow you to update the Firefox download path and add/remove context menu options for Firefox and VSCode.

## Prerequisites

- Windows 10 (or later) Laptop
- Firefox Browser installed
- Administrative privileges for modifying the Windows Registry
- Visual Studio Code installed

## Files

- `UpdateFirefoxDownloadPath.ps1`: A PowerShell script to update the Firefox download path.
- `AddFirefoxBackgroundContextMenu.reg`: A registry file to add a Firefox background context menu.
- `AddFirefoxContextMenu.reg`: A registry file to add a Firefox context menu.
- `AddVSCodeBackgroundContextMenu.reg`: A registry file to add a VSCode background context menu.
- `RemoveFirefoxContextMenu.reg`: A registry file to remove the Firefox context menu.

## Installation

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

## Test the Context Menu

1. Open Windows File Explorer.
2. Navigate to any folder and right-click on the empty space within the folder.
3. You should see the context menu options called **"Set as Firefox Download Directory"** and **"Open in VS Code"**.
4. Click on **"Set as Firefox Download Directory"**, and it will set the current folder as the download directory for Firefox.
5. Click on **"Open in VS Code"**, and it will open the current folder in Visual Studio Code.

## Important Notes

- **Firefox Must Be Closed**: Ensure that Firefox is completely closed before running the script. This is because Firefox overwrites `prefs.js` when it is closed.
- **Administrative Privileges**: You will need administrative privileges to make changes to the Windows Registry.
- **Script Location**: Make sure the path to `UpdateFirefoxDownloadPath.ps1` in the `.reg` file matches the actual location of your script.
- **PowerShell Execution Policy**: The command uses `-ExecutionPolicy Bypass` to ensure the script runs even if the machine's execution policy is restricted.

## Troubleshooting

- **Context Menu Not Appearing**: Make sure the `.reg` file has been executed successfully and that you have administrative privileges.
- **Script Not Running**: Ensure that PowerShell is allowed to run scripts on your system. You may need to modify the PowerShell execution policy using:
  ```powershell
  Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
  ```
- **Firefox Profile Not Found**: If you have multiple Firefox profiles, you may need to adjust the script to target the correct one.

## Uninstalling the Context Menu Option

If you wish to remove the context menu entry, locate the `.reg` file named [`RemoveFirefoxContextMenu.reg`](./RemoveFirefoxContextMenu.reg) in the same folder as this README, and Double-click the file and confirm to remove the registry entries.

## Conclusion
Following these steps, you will be able to set any folder as Firefox's download directory or open it in Visual Studio Code by simply right-clicking within the folder. This provides an easy way to manage your downloads and streamline development tasks without needing to open settings or navigate through menus every time. This provides an easy way to manage your downloads and streamline development tasks without needing to open settings or navigate through menus every time.

