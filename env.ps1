[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$abs = Join-Path $pwd output\xz\bin_x86-64

$env:PATH += ";$abs"
