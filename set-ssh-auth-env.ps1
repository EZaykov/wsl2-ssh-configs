$content = Get-Content -Path "C:\\Users\\$env:UserName\\.ssh\\pageant.conf"
$contentCut = $content.Substring(15, 86).Replace("/", "\");

[System.Environment]::SetEnvironmentVariable("SSH_AUTH_SOCK", $contentCut, [System.EnvironmentVariableTarget]::Machine)