# Tiny Time-Saving Automations

Welcome to the **Tiny Time-Saving Automations** repository! This repository is a collection of small but powerful automation scripts that enhance productivity and save time for common tasks. These automations integrate directly into Windows to provide easy right-click context menu options, improving your workflow without the need for complex configurations.

## Contents

### 1. Firefox Download Directory and VS Code Integration via Right-Click Context Menu
This project provides two powerful context menu options:
- **Set Firefox Download Directory**: Set the Firefox browser download directory to any folder with a simple right-click.
- **Open Folder in Visual Studio Code**: Quickly open any folder in Visual Studio Code using a right-click context menu option.

**Folder**: [`firefox-download-vscode-integration`](./firefox-download-vscode-integration)

- **Files**:
  - [`UpdateFirefoxDownloadPath.ps1`](./firefox-download-vscode-integration/UpdateFirefoxDownloadPath.ps1): PowerShell script that updates the Firefox download path in the `prefs.js` file.
  - [`AddFirefoxBackgroundContextMenu.reg`](./firefox-download-vscode-integration/AddFirefoxBackgroundContextMenu.reg): Adds the context menu option for setting the Firefox download directory when right-clicking on empty space in any folder.
  - [`AddFirefoxContextMenu.reg`](./firefox-download-vscode-integration/AddFirefoxContextMenu.reg): Adds the context menu option for setting the Firefox download directory when right-clicking on a folder.
  - [`AddVSCodeBackgroundContextMenu.reg`](./firefox-download-vscode-integration/AddVSCodeBackgroundContextMenu.reg): Adds the context menu option for opening a folder in Visual Studio Code.
  - [`RemoveFirefoxContextMenu.reg`](./firefox-download-vscode-integration/RemoveFirefoxContextMenu.reg): Removes the context menu options added by the above registry files.
  - [`README.md`](./firefox-download-vscode-integration/README.md): Detailed instructions on setting up and using these context menu options.

### 2. Another Automation Project
Details for additional automation projects can be added here as new folders and documentation are created.

## Prerequisites
- **Windows 10 (or later)**: The automation scripts are intended for Windows environments.
- **Administrative Privileges**: Most of these automations require administrative privileges to modify the Windows Registry.
- **Software Tools**: Specific tools (e.g., Firefox, Visual Studio Code) need to be installed for corresponding context menu options.

## How to Use
1. **Clone the Repository**: Clone this repository to your local machine.
   ```bash
   git clone https://github.com/your-username/tiny-time-saving-automations.git
   ```

2. **Navigate to the Desired Automation Project**: Each folder contains a set of scripts, registry files, and a README to help set up that specific automation.

3. **Follow the Instructions**: Refer to the relevant README files within each folder to set up the automations.

## License
This repository is licensed under the [The UnLicense](./LICENSE), allowing you to freely use, modify, and distribute these automations with without any attribution.

## Contribution
Contributions are welcome! If you have a small automation that you think could benefit others, feel free to create a pull request. Please ensure you include detailed documentation for your automation so others can easily use it.

## Disclaimer
These scripts modify the Windows Registry and system settings. Please make sure you understand their effects before running them, and use them at your own risk.

## Contact
If you have any questions or suggestions, feel free to open an issue in this repository. We appreciate your feedback and hope these tiny automations save you time!
