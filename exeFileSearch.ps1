Param(
    [string]$Extension
)

$siteCode = Read-Host -Prompt 'Input your site code... The letters no spaces case does not matter.'
$localPath = 'H:\'
$ext = 'EXE_Report.csv'

$siteCodeUpper = $siteCode.ToUpper()
$fileName = "$localPath $(get-date -f yyyy-MM-dd)$ext"
$folderName = "\\wasd-students\Students\$siteCodeUpper"



Get-ChildItem -Path $folderName -Include *.exe -Recurse |
    Select-Object Name,BaseName,FullName,Extension,Directory,LastWriteTime | Export-Csv $fileName -NoTypeInformation