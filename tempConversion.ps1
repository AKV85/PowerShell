# This script converts a temperature from Celsius to Fahrenheit or from Fahrenheit to Celsius, depending on the input format.
# The input should be a string in the format "numberC" or "numberF", where "number" is the temperature value and "C" or "F" is the unit.
# The script will output the converted temperature in the opposite unit.

$temperature = $args[0]

if ($temperature -match '(\d+)(C|F)') {
    $number = $matches[1]
    $unit = $matches[2]
    
    if ($unit -eq 'C') {
        $result = [math]::Round(($number * 9/5) + 32, 2)  # Convert Celsius to Fahrenheit
        Write-Output "$temperature is $result in Fahrenheit"
    }
    else {
        $result = [math]::Round(($number - 32) * 5/9, 2)  # Convert Fahrenheit to Celsius
        Write-Output "$temperature is $result in Celsius"
    }
}
else {
    Write-Output "Invalid input. Please enter a temperature in the format 'numberC' or 'numberF'"
}
