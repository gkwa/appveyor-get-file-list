$psgallery = Get-PSRepository -ErrorAction SilentlyContinue -Name PSGallery
if(!$psgallery.Trusted) {
    Set-PSRepository -Verbose -Name PSGallery -InstallationPolicy Trusted
}
