# Rename website images with descriptive names and update blog references

$baseDir = "e:\OVERAGES\SRWebsite"
$imagesDir = "$baseDir\images"

# Mapping of old names to new descriptive names
$renameMap = @{
    "image.jpg" = "couple-receiving-check-foreclosure-handshake.jpg"
    "image (1).jpg" = "senior-couple-check-handshake-office.jpg"
    "image (2).jpg" = "couple-check-handshake-business-meeting.jpg"
    "image (3).jpg" = "couple-check-handshake-office-meeting.jpg"
    "image (4).jpg" = "couple-check-foreclosure-handshake-family.jpg"
    "image (5).jpg" = "couple-check-foreclosure-charts-handshake.jpg"
    "image (6).jpg" = "couple-check-handshake-silhouette-office.jpg"
    "image (7).jpg" = "senior-couple-handshake-professional-meeting.jpg"
    "image (8).jpg" = "couple-check-handshake-happy-meeting.jpg"
    "image (9).jpg" = "women-check-handshake-happy-office.jpg"
    "image (10).jpg" = "family-children-check-handshake-our-house.jpg"
    "image (11).jpg" = "family-mother-children-check-handshake.jpg"
    "image (12).jpg" = "family-mother-children-check-our-house.jpg"
    "image (13).jpg" = "family-mother-children-check-happy.jpg"
    "image (14).jpg" = "senior-couple-emotional-documents-meeting.jpg"
    "image (15).jpg" = "senior-couple-worried-documents-consultation.jpg"
    "image (16).jpg" = "senior-couple-emotional-documents-reading.jpg"
    "image (17).jpg" = "senior-couple-emotional-recovered-funds.jpg"
    "image (18).jpg" = "young-family-baby-check-handshake.jpg"
    "image (19).jpg" = "young-family-baby-check-receiving.jpg"
    "image (20).jpg" = "young-family-baby-check-happy-office.jpg"
    "image (21).jpg" = "father-baby-check-handshake-happy.jpg"
    "image (22).jpg" = "young-family-baby-check-receiving-office.jpg"
    "image (23).jpg" = "young-family-baby-check-handshake-agent.jpg"
    "image (24).jpg" = "veteran-couple-foreclosure-notice-flag.jpg"
    "image (25).jpg" = "veteran-couple-documents-handshake-flag.jpg"
    "image (26).jpg" = "veteran-couple-foreclosure-notice-handshake.jpg"
    "image (27).jpg" = "veteran-couple-foreclosure-handshake-flag.jpg"
    "image (28).jpg" = "military-couple-uniform-surplus-fund.jpg"
    "image (29).jpg" = "military-veteran-uniform-foreclosure-funds.jpg"
    "image (30).jpg" = "military-officers-foreclosure-notice-handshake.jpg"
    "image (31).jpg" = "veteran-couple-documents-handshake-meeting.jpg"
}

Write-Host "Renaming images and updating blog references..." -ForegroundColor Cyan

# First, rename all images
foreach ($oldName in $renameMap.Keys) {
    $newName = $renameMap[$oldName]
    $oldPath = Join-Path $imagesDir $oldName
    $newPath = Join-Path $imagesDir $newName
    
    if (Test-Path $oldPath) {
        # Rename the file
        Rename-Item -Path $oldPath -NewName $newName -Force
        Write-Host "Renamed: $oldName -> $newName" -ForegroundColor Green
    } else {
        Write-Host "File not found: $oldName" -ForegroundColor Yellow
    }
}

Write-Host "`nUpdating blog post references..." -ForegroundColor Cyan

# Get all HTML files in blog folder
$blogFiles = Get-ChildItem -Path "$baseDir\blog" -Filter "*.html" -Recurse
$indexFile = "$baseDir\index.html"

# Update references in each file
$allFiles = @($blogFiles) + @(Get-Item $indexFile -ErrorAction SilentlyContinue)

foreach ($file in $allFiles) {
    if (-not $file) { continue }
    
    $content = Get-Content -Path $file.FullName -Raw
    $originalContent = $content
    $modified = $false
    
    foreach ($oldName in $renameMap.Keys) {
        $newName = $renameMap[$oldName]
        
        # Replace in src attributes (handle URL encoding for spaces and parentheses)
        $oldRef = "/images/$oldName"
        $newRef = "/images/$newName"
        
        if ($content -match [regex]::Escape($oldRef)) {
            $content = $content -replace [regex]::Escape($oldRef), $newRef
            $modified = $true
        }
        
        # Also check for URL-encoded versions
        $oldRefEncoded = "/images/" + [uri]::EscapeDataString($oldName)
        if ($content -match [regex]::Escape($oldRefEncoded)) {
            $content = $content -replace [regex]::Escape($oldRefEncoded), $newRef
            $modified = $true
        }
    }
    
    if ($modified) {
        Set-Content -Path $file.FullName -Value $content -NoNewline
        Write-Host "Updated: $($file.Name)" -ForegroundColor Green
    }
}

Write-Host "`nDone! Images renamed and blog references updated." -ForegroundColor Cyan
