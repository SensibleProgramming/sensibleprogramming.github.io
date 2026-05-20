# Add new educational content to Brain with automatic README updates
# Usage: ./add-content.ps1

param(
    [string]$InputPath = (Read-Host "Folder path with new files"),
    [string]$BrainPath = "C:\Dev\AI\Brain"
)

$ContentDir = "$BrainPath\Resources\Assets\educational-content"
$ReadmePath = "$ContentDir\README.md"

if (-not (Test-Path $InputPath)) {
    Write-Host "Path not found" -ForegroundColor Red
    exit 1
}

$files = @(Get-ChildItem $InputPath -File)
if ($files.Count -eq 0) {
    Write-Host "No files found" -ForegroundColor Red
    exit 1
}

Write-Host "`nFound $($files.Count) file(s)`n" -ForegroundColor Cyan

$newEntries = @()

foreach ($file in $files) {
    Write-Host "================================" -ForegroundColor Gray
    Write-Host $file.Name -ForegroundColor Yellow
    Write-Host ""

    $title = Read-Host "Title"
    $description = Read-Host "Description"
    $topic = Read-Host "Topic (optional)"

    # Generate kebab-case filename
    $baseName = $title -replace '[^\w\s-]', '' -replace '\s+', '-' | ForEach-Object { $_.ToLower() }
    $ext = $file.Extension
    $newName = "$baseName$ext"

    # Handle duplicates
    $counter = 1
    $testName = $newName
    while (Test-Path "$ContentDir\$testName") {
        $testName = "$baseName-$counter$ext"
        $counter++
    }
    $newName = $testName

    # Copy file
    Copy-Item $file.FullName "$ContentDir\$newName" -Force
    Write-Host "Saved as: $newName`n" -ForegroundColor Green

    # Store entry
    $type = if ($file.Extension -eq '.html') { "module" } else { "infographic" }
    $newEntries += @{
        FileName = $newName
        Description = $description
        Type = $type
    }
}

# Update README
Write-Host "Updating README..." -ForegroundColor Cyan

$readme = Get-Content $ReadmePath -Raw

foreach ($entry in $newEntries) {
    $line = "- **$($entry.FileName)** - $($entry.Description)"

    if ($entry.Type -eq "module") {
        # Find the HTML section and add before the Infographics section
        $readme = $readme -replace '(## Infographics \(JPG\))', ($line + "`n`n`$1")
    } else {
        # Add to Infographics section before Usage
        $readme = $readme -replace '(## Usage)', ($line + "`n`n`$1")
    }
}

$readme | Set-Content $ReadmePath -Encoding UTF8

Write-Host "Done! Files added and README updated.`n" -ForegroundColor Green
