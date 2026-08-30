param([string]$Destination = '')
$root = [IO.Path]::GetFullPath((Join-Path $PSScriptRoot '..'))
$buildRoot = [IO.Path]::GetFullPath((Join-Path $root 'build'))
if ([string]::IsNullOrWhiteSpace($Destination)) { $Destination = Join-Path $buildRoot 'MagicRPG-2.1.7-server' }
$target = [IO.Path]::GetFullPath($Destination)
if (-not $target.StartsWith($buildRoot, [StringComparison]::OrdinalIgnoreCase)) { throw 'Destination must be inside the build directory.' }
if (Test-Path -LiteralPath $target) { throw "Destination already exists: $target" }
$metadata = Get-Content -LiteralPath (Join-Path $root 'modpack-metadata.json') -Raw -Encoding UTF8 | ConvertFrom-Json
New-Item -ItemType Directory -Path $target | Out-Null
foreach ($relative in $metadata.emittedServerFiles) {
    $source = [IO.Path]::GetFullPath((Join-Path $root $relative))
    if (-not $source.StartsWith($root, [StringComparison]::OrdinalIgnoreCase)) { throw "Path escaped workspace: $relative" }
    if (-not (Test-Path -LiteralPath $source -PathType Leaf)) { throw "Missing server file: $relative" }
    $destinationFile = Join-Path $target $relative
    $destinationDirectory = Split-Path -Parent $destinationFile
    if (-not (Test-Path -LiteralPath $destinationDirectory)) { New-Item -ItemType Directory -Path $destinationDirectory -Force | Out-Null }
    Copy-Item -LiteralPath $source -Destination $destinationFile
}
$templateRoot = $PSScriptRoot
Get-ChildItem -LiteralPath $templateRoot -Recurse -File | Where-Object { $_.Name -ne 'prepare-server.ps1' } | ForEach-Object {
    $relative = $_.FullName.Substring($templateRoot.Length).TrimStart('\', '/')
    $destinationFile = Join-Path $target $relative
    $destinationDirectory = Split-Path -Parent $destinationFile
    if (-not (Test-Path -LiteralPath $destinationDirectory)) { New-Item -ItemType Directory -Path $destinationDirectory -Force | Out-Null }
    Copy-Item -LiteralPath $_.FullName -Destination $destinationFile -Force
}
$archive = "$target.zip"
Compress-Archive -Path (Join-Path $target '*') -DestinationPath $archive -CompressionLevel Optimal
Write-Output $archive
