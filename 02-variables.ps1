# Variables in PS

$Name = "Muhammad Tayyab"
$Age = 20
$CGPA = 2.6
$IsAdult = $true

# To access variable value we simply again type its name

$MyName

# We can also pipe output to any file

$MyName | Out-File "./random/name.txt"

# get type of variable

$Name.GetType()
$Age.GetType()
$CGPA.GetType()
$IsAdult.GetType()

$Name | Select-Object -Property *
Get-Member -InputObject $Name