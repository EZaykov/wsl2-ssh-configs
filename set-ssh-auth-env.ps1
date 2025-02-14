$content = Get-Content -Path "C:\\Users\\$env:UserName\\.ssh\\pageant.conf"
$content = $content -replace '.*"([^"]+)".*', '$1'
$content = $content -replace '/', '\'

[System.Environment]::SetEnvironmentVariable("SSH_AUTH_SOCK", $content, [System.EnvironmentVariableTarget]::Machine)
