$psgallery = Get-PSRepository -ErrorAction SilentlyContinue -Name PSGallery

if(!$psgallery.Trusted) {
    Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
}
