$Age = Read-Host "Enter your age to check that you are eligible applicant for driving licence ?"

if ($Age -lt 18 -or $Age -ge 70) {
    Write-Host "Hey you can't apply for driving licences"
}
else {
    Write-Host "Hey you can apply for driving licences"

}