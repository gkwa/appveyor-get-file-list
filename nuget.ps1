$nuget = Get-PackageProvider -Force -ErrorAction SilentlyContinue -Name NuGet

if(!$nuget) {
    Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
}
