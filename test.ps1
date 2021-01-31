Import-Module Pester -MinimumVersion 5.0.2

(Get-ChildItem all.xz -Recurse -Force -ErrorAction SilentlyContinue).Count | Should -BeExactly 1
(Get-ChildItem all.7z -Recurse -Force -ErrorAction SilentlyContinue).Count | Should -BeExactly 1
