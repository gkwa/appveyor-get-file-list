$pester = Get-InstalledModule -ErrorAction SilentlyContinue -Name Pester
if(!$pester) {
    Install-Module -Name Pester -SkipPublisherCheck -Force
}

$pester = Get-InstalledModule -ErrorAction SilentlyContinue -Name Pester

if($pester.Version -lt [version]'5.0.2') {
    Install-Module -Name Pester -SkipPublisherCheck -Force
}
