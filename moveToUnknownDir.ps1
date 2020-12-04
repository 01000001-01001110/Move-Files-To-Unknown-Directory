<#
    Title: Move Files to Unknown Directory
    By: Alan Newingham
    Date: 12/4/20
    Initial Commit: 
    Git: https://github.com/01000001-01001110/Move-Files-To-Unknown-Directory/blob/main/moveToUnknownDir.ps1
    Notes: https://automateanddeploy.com/index.php/2020/12/04/powershell-move-files-to-unknown-directory/
    Site: https://automateanddeploy.com
#>

#Declare Variables
$whereIsThisFile = "C:\scripts\plots\IoI\SixR\blob\"
$path = "C:\scripts\test\*.txt"
#Logic
$directoryWithData = Get-ChildItem $whereIsThisFile -Recurse | Where-Object { $_.PSIsContainer -and $_.Name.StartsWith("directoryWithData")}
Get-ChildItem -Path $path | Move-Item -Destination $directoryWithData.FullName
