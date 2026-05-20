cd C:\Dev\AI\Brain\Projects\sensible-programming

# Create the modules folder explicitly
mkdir modules -Force

# Copy all files
Copy-Item -Path "C:\Dev\AI\Brain\Resources\Assets\educational-content\*" -Destination "C:\Dev\AI\Brain\Projects\sensible-programming\modules" -Recurse -Force

# Verify they're there
Get-ChildItem "C:\Dev\AI\Brain\Projects\sensible-programming\modules" | Select-Object Name