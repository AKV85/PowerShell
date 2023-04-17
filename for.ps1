# Assign the first argument passed to the script to the variable $number
$number = $args[0]

# Loop through numbers 1 to 10 and calculate the result of multiplying $number by each number
for ($i = 1; $i -le 10; $i++) {
    $result = $number * $i
    
    # Output the result in the format "number x i = result"
    Write-Output "$number x $i = $result"
}
