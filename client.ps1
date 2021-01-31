Import-Module 7Zip4Powershell
Import-Module Pester -MinimumVersion 5.0.2

$zip1 = Join-Path $pwd all.7z
$zip2 = Join-Path $pwd all.xz

dir all.txt | Compress-7Zip -CompressionLevel Ultra -ArchiveFileName $zip1
xz --stdout --keep --extreme --verbose all.txt >$zip2
