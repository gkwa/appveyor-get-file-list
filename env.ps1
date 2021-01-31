[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$xz_path = Join-Path $pwd output\xz\bin_x86-64

$env:PATH += ";$xz_path"
