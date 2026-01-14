# Build Instructions for New_Project

## Prerequisites

- Xcode 14.0 or later
- Apple Developer Account
- iOS Deployment Target: 14.0 or later

## Steps to Build

1. **Open the Project**
   ```bash
   open New_Project.xcworkspace
   ```
2. **Select the Target**
   - In Xcode, select the project file in the Navigator.
   - Choose the appropriate target for your app.

3. **Configure Signing & Capabilities**
   - Select the target, then go to the "Signing & Capabilities" tab.
   - Ensure your Apple Developer account is selected.
   - Choose the correct team and provisioning profile.

4. **Build the App**
   - Select your device or simulator from the top device toolbar.
   - Press `Cmd + B` to build the project.

5. **Run the App**
   - Press `Cmd + R` to run the app on the selected device or simulator.

## Troubleshooting

- If you encounter issues, ensure that all paths are correctly set and that you have the necessary permissions.
- Check the Xcode documentation for common build errors and solutions.

## Rebuilding the Project

If you need to rebuild the project with a new name or after making significant changes, follow these steps:

1. Close Xcode if it's open.
2. Delete the existing project directory to avoid conflicts.
3. Re-export the project using iOS App Publisher.
4. Open the new `.xcworkspace` file in Xcode.
5. Reconfigure any necessary settings, such as signing & capabilities.
6. Build and run the project.

Now "New Project" becomes "New_Project" and spaces/special characters are stripped. Rebuild:

```powershell
dotnet clean IOSAppPublisher.sln
dotnet build IOSAppPublisher.sln
dotnet publish -c Release -o "$env:USERPROFILE\AppData\Local\IOSAppPublisher"
```

