<#
    Title: Move Files to Unknown Directory
    By: Alan Newingham
    Date: 12/4/20
    Initial Commit: 
    Git: 
    Notes: Answer a question on Automate & Deploy 
    Site: https://automateanddeploy.com
#>

#Declare Variables
$whereIsThisFile = "C:\scripts\plots\IoI\SixR\blob\"
$path = "C:\scripts\test\*.txt"
#Logic
$directoryWithData = Get-ChildItem $whereIsThisFile -Recurse | Where-Object { $_.PSIsContainer -and $_.Name.StartsWith("directoryWithData")}
Get-ChildItem -Path $path | Move-Item -Destination $directoryWithData.FullName
