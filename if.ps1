# Get the dog's age from the command line arguments
$dogAge = $args[0]

# Calculate the dog's age in human years
if ($dogAge -le 2) {
    # For the first two years, each dog year is equal to 10.5 human years
    $humanAge = [math]::Round($dogAge * 10.5, 1)
}
else {
    # After the first two years, each dog year is equal to 4 human years
    $humanAge = [math]::Round((($dogAge - 2) * 4) + 21, 1)
}

# Print out the dog's age in human years for the next 10 years
for ($i = 0; $i -lt 10; $i++) {
    Write-Output $humanAge
    $humanAge += 4
}
