Import-Module 7Zip4Powershell

Set-PSDebug -Trace 1

$zip1 = Join-Path $pwd all.7z
$zip2 = Join-Path $pwd all.xz

Get-ChildItem C:\ -Recurse -Force -ErrorAction SilentlyContinue | Select -exp fullname >all.txt

# disabled: can't complete within appveyor's 1 hour limit
# dir all.txt | Compress-7Zip -CompressionLevel Ultra -ArchiveFileName $zip1
# xz --stdout --keep --extreme --verbose all.txt >$zip2
