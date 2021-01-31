Set-ExecutionPolicy -Force bypass

$PSVersionTable.PSVersion

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
