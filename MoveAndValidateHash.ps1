$source = "c:\Dev"
$dest = "c:\dev\testing"
$file = "test.txt"

robocopy $source $dest $file

if ($lastexitcode -eq 0)
{
    write-host "Robocopy succeeded"
}
else
{
    write-host "Robocopy failed with exit code:" $lastexitcode
}

write-host "Getting Filehash for source file"
$sourceHash = Get-FileHash (Join-Path -path $source -childpath $file) -Algorithm MD5
write-host "Filehas found :- $sourceHash.Hash"

write-host "Getting Filehash for destination file"
$destHash = Get-FileHash (Join-Path -path $dest -childpath $file) -Algorithm MD5
write-host "Filehas found :- $destHash.Hash"

if ($sourceHash.Hash -eq $destHash.Hash)
{
	write-host "Hash files match - Copy Successfull"
}
else
{
	write-host "Hash files DO NOT match - Copy Failed"
}