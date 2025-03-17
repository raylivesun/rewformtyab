#!/usr/bin/pwsh
$series = 0 | 64 + 1/2 * (64 * x^9) + exp(4) | point | x = [math]::PI

# This PowerShell script evaluates a mathematical expression:
# - Starts with 0
# - Adds 64
# - Adds 1/2 multiplied by (64 * x^9) where x is π
# - Adds e^4
# - Evaluates at the point x = π
$series = Series[64 + (64 * x^9)/2 + Exp[4], {x, [math]::PI, 5}]
# The result is stored in the variable $series

# This PowerShell script evaluates a mathematical expression:
# - Starts with 0
# - Adds 64
# - Adds 1/2 multiplied by (64 * x^9) where x is π
# - Adds e^4
# - Evaluates at the point x = π
$series = Series[64 + (64 * [math]::PI^9)/2 + [math]::Exp(4), {x, [math]::PI, 5}]


Write-Output $series



$seriesFourier = FourierSeries[64 + 1/2 * (64 * [math]::PI^9) + [math]::Exp(4), x, n]
Write-Output $seriesFourier

$seriesFourier = FourierSeries[64 + 1/2 * (64 * [math]::PI^9) + [math]::Exp(4), x, n]
Write-Output $seriesFourier

$series = 32 * FourierSeries[x^9, x, n] + FourierSeries[64, x, n] + FourierSeries[e^4, x, n]
Write-Output $series
$series = 32 * FourierSeries[x^9, x, n] + FourierSeries[64, x, n] + FourierSeries[e^4, x, n]
Write-Output $series

function Get-ExactResult {
    param(
        [double]$x = [math]::PI
    )
    
    return 64 + (64 * [math]::Pow($x, 9))/2 + [math]::Exp(4)
}
$exactResult = Get-ExactResult
Write-Output $exactResult
$exactResult = Get-ExactResult
Write-Output $exactResult


$exactResult = Get-ExactResult
Write-Output $exactResult

$seriesFinal = FourierSeries[64, x, 3] + FourierSeries[Exp(4), x, 3] + 32 * FourierSeries[x^9, x, 3]
Write-Output $seriesFinal
$seriesFinal = FourierSeries[64, x, 3] + FourierSeries[Exp(4), x, 3] + 32 * FourierSeries[x^9, x, 3]
Write-Output $seriesFinal
$seriesFinal = FourierSeries[64, x, 3] + FourierSeries[Exp(4), x, 3] + 32 * FourierSeries[x^9, x, 3]
Write-Output $seriesFinal

function Get-Plot {
    param (
        [Diagnostics.CodeAnalysis.SuppressMessageAttribute(
            <#Category#>'PSProvideDefaultParameterValue', <#CheckId#>$null,
            Scope='Function',
            Justification='Reason for suppressing'
        )]]
        [Diagnostics.CodeAnalysis.SuppressMessageAttribute(
            <#Category#>'PSUseDeclaredVarsMoreThanAssignments',
            <#ParameterName#>'ParamName',
            Justification='Reason for suppressing'
        )]]
        [Diagnostics.CodeAnalysis.SuppressMessageAttribute(
            <#Category#>'PSUseDeclaredVarsMoreThanAssignments', <#CheckId#>$null,
            Scope='Function',
            Target='RegexOrGlobPatternToMatchName',
            Justification='Reason for suppressing'
        )]]
        [Diagnostics.CodeAnalysis.SuppressMessageAttribute(
            <#Category#>'PSUseDeclaredVarsMoreThanAssignments',<#CheckId#>$null,
            Justification = 'Reason for suppressing'
        )]]
        [Diagnostics.CodeAnalysis.SuppressMessageAttribute(
            <#Category#>'PSUseDeclaredVarsMoreThanAssignments',
            <#ParameterName#>'ParamName',
            Justification='Reason for suppressing'
        )]
        [Diagnostics.CodeAnalysis.SuppressMessageAttribute(
            <#Category#>'PSUseDeclaredVarsMoreThanAssignments', <#CheckId#>$null,
            Scope='Function',
            Target='RegexOrGlobPatternToMatchName',
            Justification='Reason for suppressing'
        )]
        
    )
    $series = 32 * FourierSeries[x^9, x, n] + FourierSeries[64, x, n] +
    FourierSeries[e^4, x, n]
    
    return $series
}

$result = 64^(2/3)
Write-Output $result

function Get-Result {
    param(
        [double]$x = [math]::PI
    )
    
    return [math]::Pow(64, 2/3)
}
$result = Get-Result
Write-Output $result

$resultPower = 64^(2/3)
Write-Output $resultPower

# 1  #!/usr/bin/pwsh
# 2  $series = 0 | 64 + 1/2 * (64 * x^9) + exp(4) | point | x = [math]::PI
# 3  
# 4  # This PowerShell script evaluates a mathematical expression:
# 5  # - Starts with 0 
# 6  # - Adds 64
# 7  # - Adds 1/2 multiplied by (64 * x^9) where x is π
# 8  # - Adds e^4
# 9  # - Evaluates at the point x = π
# 10 $series = Series[64 + (64 * x^9)/2 + Exp[4], {x, [math]::PI, 5}]
# 11 
# 12 # This PowerShell script evaluates a mathematical expression:
# 13 # - Starts with 0
# 14 # - Adds 64 
# 15 # - Adds 1/2 multiplied by (64 * x^9) where x is π
# 16 # - Adds e^4
# 17 # - Evaluates at the point x = π
# 18 $series = Series[64 + (64 * [math]::PI^9)/2 + [math]::Exp(4), {x, [math]::PI, 5}]
# 19 
# 20 Write-Output $series
# 21 
# 22 $seriesFourier = FourierSeries[64 + 1/2 * (64 * [math]::PI^9) + [math]::Exp(4), x, n]
# 23 Write-Output $seriesFourier
# 24 
# 25 $seriesFourier = FourierSeries[64 + 1/2 * (64 * [math]::PI^9) + [math]::Exp(4), x, n]
# 26 Write-Output $seriesFourier
# 27 
# 28 $series = 32 * FourierSeries[x^9, x, n] + FourierSeries[64, x, n] + FourierSeries[e^4, x, n]
# 29 Write-Output $series
# 30 $series = 32 * FourierSeries[x^9, x, n] + FourierSeries[64, x, n] + FourierSeries[e^4, x, n]
# 31 Write-Output $series
# 32 
# 33 function Get-ExactResult {
# 34     param(
# 35         [double]$x = [math]::PI
# 36     )
# 37     
# 38     return 64 + (64 * [math]::Pow($x, 9))/2 + [math]::Exp(4)
# 39 }
# 40 $exactResult = Get-ExactResult
# 41 Write-Output $exactResult
# 42 $exactResult = Get-ExactResult
# 43 Write-Output $exactResult
# 44 
# 45 $exactResult = Get-ExactResult
# 46 Write-Output $exactResult
# 47 
# 48 $seriesFinal = FourierSeries[64, x, 3] + FourierSeries[Exp(4), x, 3] + 32 * FourierSeries[x^9, x, 3]
# 49 Write-Output $seriesFinal
# 50 $seriesFinal = FourierSeries[64, x, 3] + FourierSeries[Exp(4), x, 3] + 32 * FourierSeries[x^9, x, 3]
# 51 Write-Output $seriesFinal
# 52 $seriesFinal = FourierSeries[64, x, 3] + FourierSeries[Exp(4), x, 3] + 32 * FourierSeries[x^9, x, 3]
# 53 Write-Output $seriesFinal
# 54 
# 55 function Get-Plot {
# 56     param (
# 57         [Diagnostics.CodeAnalysis.SuppressMessageAttribute(
# 58             <#Category#>'PSProvideDefaultParameterValue', <#CheckId#>$null,
# 59             Scope='Function',
# 60             Justification='Reason for suppressing'
# 61         )]]
# 62         [Diagnostics.CodeAnalysis.SuppressMessageAttribute(
# 63             <#Category#>'PSUseDeclaredVarsMoreThanAssignments',
# 64             <#ParameterName#>'ParamName',
# 65             Justification='Reason for suppressing'
# 66         )]]
# 67         [Diagnostics.CodeAnalysis.SuppressMessageAttribute(
# 68             <#Category#>'PSUseDeclaredVarsMoreThanAssignments', <#CheckId#>$null,
# 69             Scope='Function',
# 70             Target='RegexOrGlobPatternToMatchName',
# 71             Justification='Reason for suppressing'
# 72         )]]
# 73         [Diagnostics.CodeAnalysis.SuppressMessageAttribute(
# 74             <#Category#>'PSUseDeclaredVarsMoreThanAssignments',<#CheckId#>$null,
# 75             Justification = 'Reason for suppressing'
# 76         )]]
# 77         [Diagnostics.CodeAnalysis.SuppressMessageAttribute(
# 78             <#Category#>'PSUseDeclaredVarsMoreThanAssignments',
# 79             <#ParameterName#>'ParamName',
# 80             Justification='Reason for suppressing'
# 81         )]
# 82         [Diagnostics.CodeAnalysis.SuppressMessageAttribute(
# 83             <#Category#>'PSUseDeclaredVarsMoreThanAssignments', <#CheckId#>$null,
# 84             Scope='Function',
# 85             Target='RegexOrGlobPatternToMatchName',
# 86             Justification='Reason for suppressing'
# 87         )]
# 88         
# 89     )
# 90     $series = 32 * FourierSeries[x^9, x, n] + FourierSeries[64, x, n] +
# 91     FourierSeries[e^4, x, n]
# 92     
# 93     return $series
# 94 }
# 95 
# 96 $result = 64^(2/3)
# 97 Write-Output $result
# 98 
# 99 function Get-Result {
# 100     param(
# 101         [double]$x = [math]::PI
# 102     )
# 103     
# 104     return [math]::Pow(64, 2/3)
# 105 }
# 106 $result = Get-Result
# 107 Write-Output $result
# 108 
# 109 $resultPower = 64^(2/3)
# 110 Write-Output $resultPower
