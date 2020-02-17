$files = Get-ChildItem "C:\Dev\Out" -Filter *service.txt

foreach($file in $files){
get-content "C:\Dev\Out\$file" | select-string -pattern 'Stopped' -notmatch | Out-File c:\Dev\out2\$file
}