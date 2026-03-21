# arguments provided by user

$CommitMessage = $args[0]
$CommitTime = $args[1]

$ParsedTime = $CommitTime.Split(" ")

$LastCommitDate = git log -1 --format='%cI'

$days = [int]($ParsedTime[0] ?? 0)
$hours = [int]($ParsedTime[1] ?? 0)
$minutes = [int]($ParsedTime[2] ?? 0)
$seconds = [int]($ParsedTime[3] ?? 0)

# current commit time based on last commit
$CurrentDate = (Get-Date $LastCommitDate).
    AddDays($days).
    AddHours($hours).
    AddMinutes($minutes).
    AddSeconds($seconds)

$FormattedDate = $CurrentDate.ToString("yyyy-MM-ddTHH:mm:sszzz")

# git time envireonment variables
$env:GIT_COMMITTER_DATE = $FormattedDate
$env:GIT_AUTHOR_DATE = $FormattedDate

# commiting to git
git commit -m "$CommitMessage"