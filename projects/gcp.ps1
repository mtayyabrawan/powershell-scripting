# inputs provded by user

$CommitMessage = Read-Host "Enter commit message"
$CommitTime = Read-Host "Enter commit time"

$ParsedTime = $CommitTime.Split(" ")

# current commit time based on last commit
$CurrentDate = (Get-Date -Date "$(git log -1 --format='%ci')").AddDays($ParsedTime[0]).AddHours($ParsedTime[1]).AddMinutes($ParsedTime[2]).AddSeconds($ParsedTime[3])

# git time envireonment variables
$env:GIT_COMMITTER_DATE = $CurrentDate
$env:GIT_AUTHOR_DATE = $CurrentDate

# commiting to git
git commit -m "$CommitMessage"