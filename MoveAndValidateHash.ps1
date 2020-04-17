$source = "c:\Dev"
$dest = "c:\dev\testing"
$file = "test.txt"

robocopy $source $dest $file

if ($lastexitcode -eq 0)
{
    write-host "Robocopy succeeded"
}
elseif ($lastexitcode -eq 1)
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
	Remove-Item -Path (Join-Path -path $source -childpath $file)
}
else
{
	write-host "Hash files DO NOT match - Copy Failed"
}