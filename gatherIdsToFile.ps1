$folderList = Get-ChildItem -Directory | Select-Object -ExpandProperty Name

$folderList -join ';' | Out-File -FilePath "extractedIds.txt"

Write-Host "Folder names copied to folderList.txt"