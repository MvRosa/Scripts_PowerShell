Get-ChildItem *.pst | ForEach-Object { & "C:\Program Files\7-Zip\7z.exe" a -tzip ($_.Name.split('.')[0]+".zip") $_.Name }