# This script generates the Fibonacci sequence up to a given limit
$limit = $args[0]
$prev = 0
$current = 1

# Print the first number in the sequence (1)
Write-Output $current

# Loop through the sequence until the next number exceeds the given limit
while ($current + $prev -le $limit) {
    # Calculate the next number in the sequence and print it
    $next = $current + $prev
    $prev = $current
    $current = $next
    Write-Output $current
}
