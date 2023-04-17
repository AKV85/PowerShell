Get-ChildItem -Recurse | Where-Object {$_.PSIsContainer -eq $false} | ForEach-Object {
    $parent = $_.Directory
    while ($parent -ne $null) {
        if ($parent.GetFiles().Count -gt 0) {
            $size = [math]::Round(($_.Length / 1MB), 2)
            Write-Output "$parent.FullName\$($_.Name) ($size Mb)"
            break
        }
        $parent = $parent.Parent
    }
}
