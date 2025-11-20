$plugin = "beb-elements-price-table-widgets"

$dirs = @(
    "$plugin",
    "$plugin/admin",
    "$plugin/includes",
    "$plugin/assets",
    "$plugin/assets/css",
    "$plugin/assets/js",
    "$plugin/assets/images",
    "$plugin/templates"
)

foreach ($d in $dirs) {
    if (-not (Test-Path $d)) {
        New-Item -ItemType Directory -Path $d | Out-Null
        Write-Host "Created folder: $d"
    }
}

$mainFile = "$plugin/beb-elements-price-table-widgets.php"

if (-not (Test-Path $mainFile)) {
    Set-Content -Path $mainFile -Value "<?php`n// Main plugin file"
    Write-Host "Created main file: $mainFile"
}

Write-Host "`nPlugin structure created successfully!"
