
$gitBasePath = 'https://raw.githubusercontent.com/github/gitignore/master/{0}.gitignore';

$gitIgnoreUris =
'Global/macOS',
'Global/Xcode',
'Global/Windows',
'Global/VisualStudioCode',
'VisualStudio',
'Node';

#clear file
Out-File -FilePath .\.gitignore

foreach ($item in $gitIgnoreUris) {
$path = [string]::Format($gitBasePath, $item);

Invoke-WebRequest -URI $path -UseBasicParsing |
  Select-Object -ExpandProperty Content |
  Out-File -FilePath .\.gitignore -Append -NoClobber
}

Set-Content .\.gitignore -Encoding Ascii -Value (Get-Content .\.gitignore)

# Invoke-WebRequest -URI $path -UseBasicParsing |
#   Select-Object -ExpandProperty Content |
#   ConvertFrom-JSON |
#   Select-Object -ExpandProperty Source |
#   Out-File -FilePath .\.gitignore -Append -NoClobber
# }





