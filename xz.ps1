$url = 'https://tukaani.org/xz/xz-5.2.5-windows.7z'
$url = [System.Uri]$url
$wc = New-Object System.Net.WebClient
$filename = Split-Path -Leaf -Path $url.AbsolutePath

MkDir -Force output | Out-Null

$extract_to = Join-Path output/xz $filename

if (!(Test-Path($extract_to))) { $wc.DownloadFile($url.OriginalString, $extract_to) }

Expand-7Zip $extract_to -TargetPath output
