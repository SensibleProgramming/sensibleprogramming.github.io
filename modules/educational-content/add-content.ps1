# Add new educational content with interactive categorization
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

# Define sections
$sections = @{
    "1" = @{ Name = "AI Fundamentals & Core Concepts"; Marker = "### AI Fundamentals & Core Concepts" }
    "2" = @{ Name = "AI Security & Threat Modeling"; Marker = "### AI Security & Threat Modeling" }
    "3" = @{ Name = "AI Operations & Reliability"; Marker = "### AI Operations & Reliability" }
    "4" = @{ Name = "Ethics, Privacy & Governance"; Marker = "### Ethics, Privacy & Governance" }
    "5" = @{ Name = "DevOps & Infrastructure"; Marker = "### DevOps & Infrastructure" }
    "6" = @{ Name = "Git & Version Control"; Marker = "### Git & Version Control" }
}

$newEntries = @()

foreach ($file in $files) {
    Write-Host "================================" -ForegroundColor Gray
    Write-Host $file.Name -ForegroundColor Yellow
    Write-Host ""

    $title = Read-Host "Title"
    $description = Read-Host "Description"

    # Show category options
    Write-Host ""
    Write-Host "Which section?" -ForegroundColor Cyan
    foreach ($key in $sections.Keys | Sort-Object) {
        Write-Host "  $key) $($sections[$key].Name)"
    }
    $categoryKey = Read-Host "Choose (1-6)"

    if (-not $sections.ContainsKey($categoryKey)) {
        Write-Host "Invalid choice, skipping" -ForegroundColor Red
        continue
    }

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
    Write-Host "Saved as: $newName" -ForegroundColor Green
    Write-Host ""

    # Store for README update
    $newEntries += @{
        FileName = $newName
        Description = $description
        Type = if ($file.Extension -eq '.html') { "module" } else { "infographic" }
        Section = $sections[$categoryKey].Name
        SectionMarker = $sections[$categoryKey].Marker
    }
}

# Update README
Write-Host "`nUpdating README..." -ForegroundColor Cyan

$readme = Get-Content $ReadmePath -Raw

foreach ($entry in $newEntries) {
    $line = "- **$($entry.FileName)** — $($entry.Description)"

    # Find the section marker and insert after it
    if ($readme -match [regex]::Escape($entry.SectionMarker)) {
        # Find the line with the marker and insert after it
        $readme = $readme -replace `
            ([regex]::Escape($entry.SectionMarker) + '([^\n]*\n)'), `
            ('$1' + $line + "`n")
    }
    else {
        Write-Host "Warning: Section not found for $($entry.FileName)" -ForegroundColor Yellow
    }
}

$readme | Set-Content $ReadmePath -Encoding UTF8

Write-Host "README updated!`n" -ForegroundColor Green
Write-Host "Summary:" -ForegroundColor Cyan
foreach ($entry in $newEntries) {
    Write-Host "  ✓ $($entry.FileName) → $($entry.Section)" -ForegroundColor Green
}
Write-Host ""
