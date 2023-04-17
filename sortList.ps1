param(
    [Parameter(Mandatory=$true)]
    [array]$list,
    [switch]$Verbose
)

if ($Verbose) {
    Write-Output "Original list: $($list -join ', ')"
}

$swapped = $true
while ($swapped) {
    $swapped = $false
    for ($i = 0; $i -lt $list.Count - 1; $i++) {
        if ($list[$i] -gt $list[$i+1]) {
            $temp = $list[$i]
            $list[$i] = $list[$i+1]
            $list[$i+1] = $temp
            $swapped = $true
        }
    }
    if ($Verbose) {
        Write-Output "Current list: $($list -join ', ')"
    }
}

Write-Output "Sorted list: $($list -join ', ')"
