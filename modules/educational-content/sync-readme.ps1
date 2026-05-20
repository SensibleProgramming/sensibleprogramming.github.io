# Sync README with actual files in folder
# Compares what's in the folder vs what's documented, updates README

param(
    [string]$ContentDir = "C:\Dev\AI\Brain\Resources\Assets\educational-content"
)

if (-not (Test-Path $ContentDir)) {
    Write-Host "Folder not found: $ContentDir" -ForegroundColor Red
    exit 1
}

$ReadmePath = "$ContentDir\README.md"
if (-not (Test-Path $ReadmePath)) {
    Write-Host "README not found" -ForegroundColor Red
    exit 1
}

Write-Host "Scanning folder..." -ForegroundColor Cyan

# Get actual files
$actualFiles = @(Get-ChildItem $ContentDir -File | Where-Object { $_.Extension -match '\.(html|jpg|png)$' } | Select-Object -ExpandProperty Name | Sort-Object)
$htmlFiles = @($actualFiles | Where-Object { $_.EndsWith('.html') } | Sort-Object)
$imageFiles = @($actualFiles | Where-Object { $_.EndsWith('.jpg') -or $_.EndsWith('.png') } | Sort-Object)

Write-Host "Found $($htmlFiles.Count) HTML modules and $($imageFiles.Count) infographics`n" -ForegroundColor Green

# Read README
$readme = Get-Content $ReadmePath -Raw

# Extract documented files from README
$documentedHtml = @([regex]::Matches($readme, '\*\*([a-z0-9\-]+\.html)\*\*') | ForEach-Object { $_.Groups[1].Value } | Sort-Object)
$documentedImages = @([regex]::Matches($readme, '\*\*([a-z0-9\-]+\.(jpg|png))\*\*') | ForEach-Object { $_.Groups[1].Value } | Sort-Object)

Write-Host "README documents $($documentedHtml.Count) HTML and $($documentedImages.Count) images`n" -ForegroundColor Gray

# Find discrepancies
$missingHtml = @($htmlFiles | Where-Object { $documentedHtml -notcontains $_ })
$missingImages = @($imageFiles | Where-Object { $documentedImages -notcontains $_ })
$orphanedDocs = @($documentedHtml | Where-Object { $htmlFiles -notcontains $_ })

if ($missingHtml.Count -gt 0) {
    Write-Host "Missing from README (HTML):" -ForegroundColor Yellow
    $missingHtml | ForEach-Object { Write-Host "  + $_" }
    Write-Host ""
}

if ($missingImages.Count -gt 0) {
    Write-Host "Missing from README (Images):" -ForegroundColor Yellow
    $missingImages | ForEach-Object { Write-Host "  + $_" }
    Write-Host ""
}

if ($orphanedDocs.Count -gt 0) {
    Write-Host "Documented but missing files:" -ForegroundColor Red
    $orphanedDocs | ForEach-Object { Write-Host "  - $_" }
    Write-Host ""
}

if ($missingHtml.Count -eq 0 -and $missingImages.Count -eq 0 -and $orphanedDocs.Count -eq 0) {
    Write-Host "README is in sync with folder!" -ForegroundColor Green
    exit 0
}

# Prompt to update
$response = Read-Host "Update README with missing files? (y/n)"
if ($response -ne 'y') {
    Write-Host "Skipped" -ForegroundColor Gray
    exit 0
}

# Build new README sections
$newHtmlContent = ""
$newImageContent = ""

foreach ($file in $htmlFiles) {
    if ($readme -match "\- \*\*$([regex]::Escape($file))\*\*") {
        continue  # Already documented
    }
    # Generate description from filename
    $desc = $file -replace '\.html$', '' -replace '-', ' '
    $newHtmlContent += "- **$file** — $desc`n"
}

foreach ($file in $imageFiles) {
    if ($readme -match "\- \*\*$([regex]::Escape($file))\*\*") {
        continue  # Already documented
    }
    $desc = $file -replace '\.(jpg|png)$', '' -replace '-', ' '
    $newImageContent += "- **$file** — $desc`n"
}

# Update README
if ($newHtmlContent) {
    Write-Host "Adding HTML modules..." -ForegroundColor Cyan
    $readme = $readme -replace '(## Interactive Modules \(HTML\)[\s\S]*?\n)((?!## ))', "`$1`n$newHtmlContent`$2"
}

if ($newImageContent) {
    Write-Host "Adding infographics..." -ForegroundColor Cyan
    $readme = $readme -replace '(## Infographics[\s\S]*?\n)((?!## ))', "`$1`n$newImageContent`$2"
}

# Remove orphaned entries
foreach ($orphan in $orphanedDocs) {
    Write-Host "Removing: $orphan" -ForegroundColor Red
    $readme = $readme -replace "- \*\*$([regex]::Escape($orphan))\*\*[^\n]*\n", ""
}

# Clean up extra blank lines
$readme = $readme -replace "\n{3,}", "`n`n"

$readme | Set-Content $ReadmePath -Encoding UTF8

Write-Host "`nREADME updated!" -ForegroundColor Green
