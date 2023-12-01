$content = Get-Content -Path ".\\pageant.conf"
$contentCut = $content.Substring(15, 86).Replace("/", "\");

[System.Environment]::SetEnvironmentVariable("SSH_AUTH_SOCK", $contentCut, [System.EnvironmentVariableTarget]::Machine)