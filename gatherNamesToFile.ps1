$modFiles = Get-ChildItem -Path .\*\mods\*\mod.info -Recurse
$idValues = @()
foreach ($modFile in $modFiles) {
    $modContent = Get-Content $modFile.FullName
    $idValue = $modContent | Select-String -Pattern 'id=(.*)' | % { $_.Matches.Groups[1].Value }
    if ($idValue) {
        $idValues += $idValue
    }
}
Set-Content -Path .\extractedNames.txt -Value ($idValues -join ';')
