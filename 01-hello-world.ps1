# This line behaves as a comment

Write-Host "Hello World" -NoNewline # prints content without new line at end
Write-Host "Wellcome to PowerShell Scripting" # prints content with new line at end

Get-Command -CommandType Cmdlet # prints help for all cmdlets
Get-Help * # prints help for all cmdlets