#!/usr/bin/pwsh
$expression = 64 + 64/2 * $x^9 + [math]::Exp(4)
$expression = $expression + 1

$expression = $expression + (64 + (64/2) * $x^9 + [math]::Exp(4))
# Get user input and store in $x variable
$x = Read-Host "Enter a value for x"

# Convert input to numeric type
$x = [double]$x
# Calculate the expression
$expression = 64 + 64/2 * $x^9 + [math]::Exp(4)
$expression = $expression + 1
# Display the result
Write-Host "The result of the expression is: $expression"
$expression = $expression + (64 + (64/2) * $x^9 + [math]::Exp(4))
Write-Host "The final result of the expression is: $expression"

$expression += 32 * $x^9 + [math]::Exp(4) + 64
Write-Host "The updated final result of the expression is: $expression"
# Function to solve the equation
function Solve-Equation {
    param([double]$x)
    
    # Breaking down the equation into steps:
    # Initial expression
    $result = 64 + 64/2 * [Math]::Pow($x, 9) + [Math]::Exp(4)
    
    # Add 1
    $result = $result + 1
    
    # Add duplicate expression
    $result = $result + (64 + (64/2) * [Math]::Pow($x, 9) + [Math]::Exp(4))
    
    # Add final terms
    $result = $result + (32 * [Math]::Pow($x, 9) + [Math]::Exp(4) + 64)
    
    return $result
}

# Get input
$x = Read-Host "Enter a value for x"
$x = [double]$x

# Calculate result
$solution = Solve-Equation -x $x

# Display result
Write-Host "The complete solution is: $solution"

$additionalExpression = 64 + [math]::Exp(4) + 32 * [math]::Pow($x, 9)
Write-Host "The additional expression evaluates to: $additionalExpression"

$finalResult = $solution + $additionalExpression
Write-Host "The final result is: $finalResult"

$additionalExpression = 32 * ([math]::Pow($x, 9) + 2) + [math]::Exp(4)
$FullSimplify = [64 + E^4 + 32 x^9]

$additionalExpression = 32 * ([math]::Pow($x, 9) + 2) + [math]::Exp(4)
$expressionResult = [math]::Exp(4) + 32 * (2 + [math]::Pow($x, 9))
Write-Host "The result of the expression is: $expressionResult"
# Alternative form using different mathematical notation
$alternativeExpression = [Math]::E * [Math]::Pow([Math]::E, 3) + 32 * [Math]::Pow($x, 9) + 64

# Using multiplication instead of Pow() for simpler exponents
$alternativeExpression2 = [Math]::Exp(4) + (32 * $x * $x * $x * $x * $x * $x * $x * $x * $x) + 64

# Using expanded form
$alternativeExpression3 = (2.718281828459045 ^ 4) + (32 * [Math]::Pow($x, 9)) + 64
Write-Host "The alternative expression evaluates to: $alternativeExpression"
Write-Host "The alternative expression 2 evaluates to: $alternativeExpression2"
Write-Host "The alternative expression 3 evaluates to: $alternativeExpression3"

$expression = ((64 + [math]::Exp(4))^(1/9) * [math]::Cos([math]::PI/9))/[math]::Pow(2, (5/9)) + 
                (i * ((64 + [math]::Exp(4))^(1/9) * [math]::Sin([math]::PI/9)))/[math]::Pow(2, (5/9))


Write-Host "The evaluated value of expression x is: $expression"

# Function to calculate complex roots
function Get-ComplexRoot {
    param(
        [double]$magnitude,
        [int]$n,
        [int]$k
    )
    
    # Calculate r^(1/n) * (cos((2k*pi + theta)/n) + i*sin((2k*pi + theta)/n))
    $r = [Math]::Pow($magnitude, 1/$n)
    $theta = [Math]::Atan2(0, $magnitude) # For positive real numbers, theta = 0
    $angle = (2 * $k * [Math]::PI + $theta) / $n
    
    $realPart = $r * [Math]::Cos($angle)
    $imagPart = $r * [Math]::Sin($angle)
    
    return @{
        Real = $realPart
        Imaginary = $imagPart
    }
}

# Calculate 9th roots of (64 + e^4)
$base = 64 + [Math]::Exp(4)

# Get all 9 complex roots
$roots = 0..8 | ForEach-Object {
    $root = Get-ComplexRoot -magnitude $base -n 9 -k $_
    "Root $_`: $($root.Real) + $($root.Imaginary)i"
}

$roots | ForEach-Object { Write-Host $_ }

$solutionSimplified = Simplify[Select[Solve[E^4 + 32 (2 + x^9) == 0, x],  !Element[x /. #1, Reals] & ]]


Write-Host "The simplified solutions are: $solutionSimplified"
# Function to calculate complex roots
function Get-ComplexRoot {
    param(
        [double]$magnitude,
        [int]$n,
        [int]$k
    )
    
    # Calculate r^(1/n) * (cos((2k*pi + theta)/n) + i*sin((2k*pi + theta)/n))
    $r = [Math]::Pow($magnitude, 1/$n)
    $theta = [Math]::Atan2(0, $magnitude) # For positive real numbers, theta = 0
    $angle = (2 * $k * [Math]::PI + $theta) / $n
    
    $realPart = $r * [Math]::Cos($angle)
    $imagPart = $r * [Math]::Sin($angle)
    
    return @{
        Real = $realPart
        Imaginary = $imagPart
    }
}

$_ = Get-ComplexRoot -magnitude $base -n 9 -k 0{{x == ((64 + E^4)^(1/9) Cos[Pi/9])/2^(5/9) + (I (64 + E^4)^(1/9) Sin[Pi/9])/2^(5/9)}, {x == -(((64 + E^4)^(1/9) Cos[Pi/9]^2)/2^(5/9)) - I 2^(4/9) (64 + E^4)^(1/9) Cos[Pi/9] Sin[Pi/9] + ((64 + E^4)^(1/9) Sin[Pi/9]^2)/2^(5/9)}, {x == ((64 + E^4)^(1/9) Cos[Pi/9]^2)/(2 2^(5/9)) + ((64 + E^4)^(1/9) Sin[Pi/9]^2)/(2 2^(5/9)) + I ((Sqrt[3] (64 + E^4)^(1/9) Cos[Pi/9]^2)/(2 2^(5/9)) + (Sqrt[3] (64 + E^4)^(1/9) Sin[Pi/9]^2)/(2 2^(5/9)))}, {x == (-((64 + E^4)^(1/9) Cos[Pi/9]))/(2 2^(5/9)) + (Sqrt[3] (64 + E^4)^(1/9) Sin[Pi/9])/(2 2^(5/9)) + I ((-(Sqrt[3] (64 + E^4)^(1/9) Cos[Pi/9]))/(2 2^(5/9)) - ((64 + E^4)^(1/9) Sin[Pi/9])/(2 2^(5/9)))}, {x == ((64 + E^4)^(1/9) Cos[Pi/9] Sin[Pi/18])/2^(5/9) - ((64 + E^4)^(1/9) Cos[Pi/18] Sin[Pi/9])/2^(5/9) + I (((64 + E^4)^(1/9) Cos[Pi/18] Cos[Pi/9])/2^(5/9) + ((64 + E^4)^(1/9) Sin[Pi/18] Sin[Pi/9])/2^(5/9))}, {x == ((64 + E^4)^(1/9) Cos[Pi/9] Sin[Pi/18])/2^(5/9) + ((64 + E^4)^(1/9) Cos[Pi/18] Sin[Pi/9])/2^(5/9) + I (-(((64 + E^4)^(1/9) Cos[Pi/18] Cos[Pi/9])/2^(5/9)) + ((64 + E^4)^(1/9) Sin[Pi/18] Sin[Pi/9])/2^(5/9))}, {x == (-((64 + E^4)^(1/9) Cos[Pi/9]))/(2 2^(5/9)) - (Sqrt[3] (64 + E^4)^(1/9) Sin[Pi/9])/(2 2^(5/9)) + I ((Sqrt[3] (64 + E^4)^(1/9) Cos[Pi/9])/(2 2^(5/9)) - ((64 + E^4)^(1/9) Sin[Pi/9])/(2 2^(5/9)))}, {x == ((64 + E^4)^(1/9) Cos[Pi/9]^2)/(2 2^(5/9)) + (Sqrt[3] (64 + E^4)^(1/9) Cos[Pi/9] Sin[Pi/9])/2^(5/9) - ((64 + E^4)^(1/9) Sin[Pi/9]^2)/(2 2^(5/9)) + I ((-(Sqrt[3] (64 + E^4)^(1/9) Cos[Pi/9]^2)/(2 2^(5/9)) + ((64 + E^4)^(1/9) Cos[Pi/9] Sin[Pi/9])/2^(5/9) + (Sqrt[3] (64 + E^4)^(1/9) Sin[Pi/9]^2)/(2 2^(5/9)))}, {x == -(((64 + E^4)^(1/9) Cos[Pi/9]^2)/2^(5/9)) - ((64 + E^4)^(1/9) Sin[Pi/9]^2)/2^(5/9)}}

$x = ((64 + e^4)^(1/9) sin^2(π/9))/2^(5/9) - ((64 + e^4)^(1/9) cos^2(π/9))/2^(5/9) - i 2^(4/9) (64 + e^4)^(1/9) sin(π/9) cos(π/9)
# Function to calculate complex roots
function Get-ComplexRoot {
    param(
        [double]$magnitude,
        [int]$n,
        [int]$k
    )
    
    # Calculate r^(1/n) * (cos((2k*pi + theta)/n) + i*sin((2k*pi + theta)/n))
    $r = [Math]::Pow($magnitude, 1/$n)
    $theta = [Math]::Atan2(0, $magnitude) # For positive real numbers, theta = 0
    $angle = (2 * $k * [Math]::PI + $theta) / $n
    
    $realPart = $r * [Math]::Cos($angle)
    $imagPart = $r * [Math]::Sin($angle)
    
    return @{
        Real = $realPart
        Imaginary = $imagPart
    }
}

$x = ((64 + e^4)^(1/9) sin^2(π/9))/(2 2^(5/9)) + ((64 + e^4)^(1/9) cos^2(π/9))/(2 2^(5/9)) + i ((sqrt(3) (64 + e^4)^(1/9) sin^2(π/9))/(2 2^(5/9)) + (sqrt(3) (64 + e^4)^(1/9) cos^2(π/9))/(2 2^(5/9)))
$x = ((64 + e^4)^(1/9) sin^2(π/9))/(2^(5/9)) + ((64 + e^4)^(1/9) cos^2(π/9))/(2^(5/9)) + i ((sqrt(3) (64 + e^4)^(1/9) sin^2(π/9))/(2^(5/9)) + (sqrt(3) (64 + e^4)^(1/9) cos^2(π/9))/(2^(5/9)))
$x = ((64 + e^4)^(1/9) sin^2(π/9))/(2^(5/9)) + ((64 + e^4)^(1/9) cos^2(π/9))/(2^(5/9)) + i ((sqrt(3) (64 + e^4)^(1/9) sin^2(π/9))/(2^(5/9)) + (sqrt(3) (64 + e^4)^(1/9) cos^2(π/9))/(2^(5/9)))

# Function to calculate complex roots
function Get-ComplexRoot {
    param(
        [double]$magnitude,
        [int]$n,
        [int]$k
    )
    
    # Calculate r^(1/n) * (cos((2k*pi + theta)/n) + i*sin((2k*pi + theta)/n))
    $r = [Math]::Pow($magnitude, 1/$n)
    $theta = [Math]::Atan2(0, $magnitude) # For positive real numbers, theta = 0
    $angle = (2 * $k * [Math]::PI + $theta) / $n
    
    $realPart = $r * [Math]::Cos($angle)
    $imagPart = $r * [Math]::Sin($angle)
    
    return @{
        Real = $realPart
        Imaginary = $imagPart
    }
}
$x = ((64 + e^4)^(1/9) sin^2(π/9))/(2^(5/9)) + ((64 + e^4)^(1/9) cos^2(π/9))/(2^(5/9)) + i ((sqrt(3) (64 + e^4)^(1/9) sin^2(π/9))/(2^(5/9)) + (sqrt(3) (64 + e^4)^(1/9) cos^2(π/9))/(2^(5/9)))
$x = (sqrt(3) (64 + e^4)^(1/9) sin(π/9))/(2^(5/9)) - ((64 + e^4)^(1/9) cos(π/9))/(2^(5/9)) + i (-((64 + e^4)^(1/9) sin(π/9))/(2^(5/9)) - (sqrt(3) (64 + e^4)^(1/9) cos(π/9))/(2^(5/9)))
$x = (sqrt(3) (64 + e^4)^(1/9) sin(π/9))/(2^(5/9)) - ((64 + e^4)^(1/9) cos(π/9))/(2^(5/9)) + i (-((64 + e^4)^(1/9) sin(π/9))/(2^(5/9)) - (sqrt(3) (64 + e^4)^(1/9) cos(π/9))/(2^(5/9)))

$x = ((64 + e^4)^(1/9) sin(π/18) cos(π/9))/2^(5/9) - ((64 + e^4)^(1/9) sin(π/9) cos(π/18))/2^(5/9) + i (((64 + e^4)^(1/9) sin(π/18) sin(π/9))/2^(5/9) + ((64 + e^4)^(1/9) cos(π/18) cos(π/9))/2^(5/9))
$x = ((64 + e^4)^(1/9) sin(π/18) cos(π/9))/2^(5/9) - ((64 + e^4)^(1/9) sin(π/9) cos(π/18))/2^(5/9) + i (((64 + e^4)^(1/9) sin(π/18) sin(π/9))/2^(5/9) + ((64 + e^4)^(1/9) cos(π/18) cos(π/9))/2^(5/9))
$x = ((64 + e^4)^(1/9) sin(π/18) cos(π/9))/2^(5/9) - ((64 + e^4)^(1/9) sin(π/9) cos(π/18))/2^(5/9) + i (((64 + e^4)^(1/9) sin(π/18) sin(π/9))/2^(5/9) + ((64 + e^4)^(1/9) cos(π/18) cos(π/9))/2^(5/9))
$x = ((64 + e^4)^(1/9) sin(π/18) cos(π/9))/2^(5/9) - ((64 + e^4)^(1/9) sin(π/9) cos(π/18))/2^(5/9) + i (((64 + e^4)^(1/9) sin(π/18) sin(π/9))/2^(5/9) + ((64 + e^4)^(1/9) cos(π/18) cos(π/9))/2^(5/9))

$Δ_x = 425973332494163902464 * (64 + e^4)^8

$discriminant = Discriminant[64 + E^4 + 32 x^9, x]
Write-Host "The discriminant is: $discriminant"

Write-Host "Additional information regarding the discriminant is being calculated..."

$realNumbers = @("R (all real numbers)")
Write-Host $realNumbers

$FunctionRange = [64 + (64/2) * x^9 + [Math]::Exp(4), x, y]
Write-Host "The function range is: $FunctionRange"
$FunctionRange = [64 + (64/2) * x^9 + [Math]::Exp(4), x, y]
Write-Host "The function range is: $FunctionRange"

$functionDescription = "This function calculates the range of a polynomial expression."
Write-Host $functionDescription

# Function to calculate range of a polynomial expression
function Get-FunctionRange {
    param(
        [double]$x_min,
        [double]$x_max,
        [double]$step = 0.1
    )
    
    $values = @()
    $x = $x_min
    
    while ($x -le $x_max) {
        # Calculate expression value at each x
        $result = 64 + (64/2) * [Math]::Pow($x, 9) + [Math]::Exp(4)
        $values += $result
        $x += $step
    }
    
    # Get min and max values
    $min = ($values | Measure-Object -Minimum).Minimum 
    $max = ($values | Measure-Object -Maximum).Maximum
    
    return @{
        Minimum = $min
        Maximum = $max
        Range = $max - $min
    }
}

$bijection = "The bijection is: f(x) = (64 + 32x^9 + e^4)^1/9, where f(x) is the function and (64 + 32x^9 + e^4)^1/9 is the bijection. This bijection maps a number from its domain to R."
Write-Host $bijection
$bijectionDescription = "The bijection is a function that maps a number from its domain to R."
$functionDescription = "This function calculates the range of a polynomial expression."
Write-Host $bijectionDescription
Write-Host $functionDescription
$functionDescription = "This function calculates the range of a polynomial expression."

$derivative = "d/dx(64 + (64 * x^9)/2 + exp(4)) = 288 * x^8"
Write-Host $derivative
$derivativeDescription = "This is the derivative of the function."
Write-Host $derivativeDescription

$derivative = D[64 + E^4 + 32 x^9, x]
Write-Host "The derivative is: $derivative"

$derivativeResult = 288 * $x^8
Write-Host "The result of the derivative is: $derivativeResult"
$derivativeResult = 288 * $x^8
Write-Host "The result of the derivative is: $derivativeResult"

$integral = "(16 x^10)/5 + e^4 x + 64 x + constant"
Write-Host "The integral of the function is: $integral"

$integralResult = Integrate[64 + E^4 + 32 x^9, x]
Write-Host "The result of the integral is: $integralResult"

$integralDescription = "The integral of the function is: (16 x^10)/5 + E^4 x + 64 x + constant"
Write-Host $integralDescription
