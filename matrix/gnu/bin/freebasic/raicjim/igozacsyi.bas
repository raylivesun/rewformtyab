' E({32, 65/2, 162/5, 227/7, 389/12, 2950/91, 6289/194, 9239/285, 154113/4754, 163352/5039, 6361489/196236, 6524841/201275, 25936012/800061, 136204901/4201580, 162140913/5001641, 460486727/14204862, 622627640/19206503, 1705742007/52617868, 5739853661/177060107, 168161498176/5187360971}) where 
' X distributed normal distribution | mean | μ = 0
' standard deviation | σ = 1
' Main convergents for e:
' [2; 1, 2, 1, 1, 4, 1, 1, 6, 1, 1, 8, 1, 1, 10, 1, 1, 12, 1, 1]


Function mainConvergents() As Double()
    ' Main convergents for e
    Dim convergents() As Double = { _
        32, _
        32.5, _
        32.4, _
        32.42857143, _
        32.41666667, _
        32.41758242, _
        32.41752577, _
        32.41754386, _
        32.41753891, _
        32.41753721, _
        32.41753726, _
        32.41753726, _
        32.41753726, _
        32.41753726, _
        32.41753726, _
        32.41753726, _
        32.41753726, _
        32.41753726, _
        32.41753726, _
        32.41753726 _
    }
    Return convergents
End Function

' μ^2 + 2 μ + σ^2 - 3
Function mainConvergentsDestribute() As Double()
    Dim result(19) As Double
    Dim convergents() As Double = mainConvergents()
    
    ' Calculate distribution for each convergent
    For i As Integer = 0 To 19
        ' Using μ = 0, σ = 1
        ' Formula: μ^2 + 2μ + σ^2 - 3
        ' Simplifies to: 0^2 + 2(0) + 1^2 - 3 = -2
        result(i) = -2
    Next
    
    Return result
End Function

' -3 + 2 μ + μ^2 + σ^2
Function result() As Double()
    Dim result(19) As Double
    Dim convergents() As Double = mainConvergents()
    
    ' Calculate -3 + 2μ + μ^2 + σ^2
    ' With μ = 0, σ = 1:
    ' -3 + 2(0) + 0^2 + 1^2 = -2
    For i As Integer = 0 To 19
        result(i) = -2
    Next
    
    Return result
End Function

' Formula: μ (μ + 2) + σ^2 - 3
Function form() As Double()
    Dim result(19) As Double
    Dim convergents() As Double = mainConvergents()
    
    ' Calculate μ(μ + 2) + σ^2 - 3
    ' With μ = 0, σ = 1:
    ' 0(0 + 2) + 1 - 3 = -2
    For i As Integer = 0 To 19
        result(i) = -2
    Next
    
    Return result
End Function

' Simplified formula: μ(μ + 2) + σ^2 - 3
Function simplifiedForm() As Double()
    Dim result(19) As Double
    
    ' With μ = 0, σ = 1:
    ' 0(0 + 2) + 1 - 3 = -2
    For i As Integer = 0 To 19
        result(i) = -2
    Next
    
    Return result
End Function

' -3 + μ (2 + μ) + σ^2
Function win() As Double()
    Dim result(19) As Double
    
    ' With μ = 0, σ = 1:
    ' -3 + μ(2 + μ) + σ^2
    ' = -3 + 0(2 + 0) + 1
    ' = -2
    For i As Integer = 0 To 19
        result(i) = -2
    Next
    
    Return result
End Function

' Hand of cards | exactly 2 queens
' exactly 3 jacks
Function handOfCards() As Double
    ' Calculate probability of exactly 2 queens and 3 jacks in a hand
    ' Total queens in deck = 4
    ' Total jacks in deck = 4
    ' Hand size = 5
    ' Using hypergeometric distribution
    
    ' P(2 queens AND 3 jacks) = P(2 queens) * P(3 jacks)
    ' P(2 queens) = C(4,2) * C(48,3) / C(52,5)
    ' P(3 jacks) = C(4,3) * C(48,2) / C(52,5)
    
    ' C(4,2) = 6
    ' C(4,3) = 4
    ' C(48,3) = 17,296
    ' C(48,2) = 1,128
    ' C(52,5) = 2,598,960
    
    Dim probability As Double = 0
    probability = (6 * 17296 * 4 * 1128) / (2598960 * 2598960)
    
    Return probability
End Function

' number of cards in hand | number of hands this type | approximate probability | approximate chance
' 5 | 24 | 9.234×10^-6 | ≈ 1 in 108290
' 6 | 1056 | 5.187×10^-5 | ≈ 1 in 19279
' 7 | 22704 | 1.697×10^-4 | ≈ 1 in 5893
' 8 | 317856 | 4.224×10^-4 | ≈ 1 in 2368
' 9 | 3258024 | 8.856×10^-4 | ≈ 1 in 1129
' 10 | 26064192 | 0.001648 | ≈ 1 in 607
' (assuming random selection from a standard 52-card deck)
Function calculateHandProbabilities() As String()
    Dim results(5) As String
    
    ' Hand size 5
    results(0) = String.Format("5 | 24 | {0:0.000}×10^-6 | ≈ 1 in {1}", 9.234, 108290)
    
    ' Hand size 6 
    results(1) = String.Format("6 | 1056 | {0:0.000}×10^-5 | ≈ 1 in {1}", 5.187, 19279)
    
    ' Hand size 7
    results(2) = String.Format("7 | 22704 | {0:0.000}×10^-4 | ≈ 1 in {1}", 1.697, 5893)
    
    ' Hand size 8
    results(3) = String.Format("8 | 317856 | {0:0.000}×10^-4 | ≈ 1 in {1}", 4.224, 2368)
    
    ' Hand size 9
    results(4) = String.Format("9 | 3258024 | {0:0.000}×10^-4 | ≈ 1 in {1}", 8.856, 1129)
    
    ' Hand size 10
    results(5) = String.Format("10 | 26064192 | {0:0.000} | ≈ 1 in {1}", 0.001648, 607)
    
    Return results
End Function

' E(x^2) where 
' x distributed exponential distribution | rate | λ (positive)
Function exponentialDistributionExpectedValue() As Double
    ' For exponential distribution with rate λ
    ' E(X^2) = 2/λ^2
    ' Let's use λ = 1 as a positive rate parameter
    Dim lambda As Double = 1
    Return 2 / (lambda * lambda)
End Function

' Calculate expected value for x^2 in exponential distribution
Function expectedValueExponential() As Double
    Dim lambda As Double = 1 ' Assumed rate
    Return 2 / (lambda * lambda)
End Function

' Calculate expected value for x^2 in exponential distribution
' E(x^2) where x is distributed exponential distribution
Function expectationExponentialDistribution(lambda As Double) As Double
    ' For exponential distribution with rate λ
    ' E(X^2) = 2/λ^2
    Return 2 / (lambda * lambda)
End Function

' Function to generate plot data points for visualization
Function generatePlotData() As Double()()
    Dim points(99) As Double()
    Dim lambda As Double = 1
    
    ' Generate 100 points for x values from 0 to 10
    For i As Integer = 0 To 99
        points(i) = New Double(1) {}
        points(i)(0) = i * 0.1 ' x value
        ' Exponential distribution PDF: λe^(-λx)
        points(i)(1) = lambda * Math.Exp(-lambda * points(i)(0))
    Next
    
    Return points
End Function

' Function to plot exponential distribution
Function plotExponentialDistribution() As String
    Dim plotData() As Double() = generatePlotData()
    Dim plotString As String = ""
    
    ' Generate ASCII plot
    For y As Double = 1 To 0 Step -0.1
        For x As Integer = 0 To 99
            If Math.Abs(plotData(x)(1) - y) < 0.05 Then
                plotString &= "*"
            Else
                plotString &= " "
            End If
        Next
        plotString &= vbCrLf
    Next
    
    Return plotString
End Function

Function threeStandardDeviations() As Double
    ' For normal distribution with σ = 1
    ' 3σ = 3 * 1 = 3
    Return 3
End Function

' z-score | 3
Function zScore() As Double
    ' For z-score = 3
    ' This represents 3 standard deviations from the mean
    ' Since we're using standard normal distribution (μ = 0, σ = 1)
    ' z = (x - μ)/σ = 3
    Dim x As Double = 3 ' Define x value for clarity
    Dim mu As Double = 0 ' Mean
    Dim sigma As Double = 1 ' Standard deviation
    Return (x - mu) / sigma
End Function

' z<3 (left-tailed p-value) | 0.9987
' z>3 (right-tailed p-value) | 0.00135
' abs(z)>3 (two-tailed p-value) | 0.0027
' abs(z)<3 (confidence level) | 0.9973
Function calculatePValues() As Double()
    Dim results(3) As Double
    
    ' Left-tailed p-value for z < 3
    results(0) = 0.9987
    
    ' Right-tailed p-value for z > 3 
    results(1) = 0.00135
    
    ' Two-tailed p-value for |z| > 3
    results(2) = 0.0027
    
    ' Confidence level for |z| < 3
    results(3) = 0.9973
    
    Return results
End Function

' Function to generate plot data points for visualization
Function generatePlotData() As Double()()
    Dim points(99) As Double()
    Dim lambda As Double = 1
    
    ' Generate 100 points for x values from 0 to 10
    For i As Integer = 0 To 99
        points(i) = New Double(1) {}
        points(i)(0) = i * 0.1 ' x value
        ' Exponential distribution PDF: λe^(-λx)
        points(i)(1) = lambda * Math.Exp(-lambda * points(i)(0))
    Next
    
    Return points
End Function

' Function to plot exponential distribution
Function plotExponentialDistribution() As String
    Dim plotData() As Double() = generatePlotData()
    Dim plotString As String = ""
    
    ' Generate ASCII plot
    For y As Double = 1 To 0 Step -0.1
        For x As Integer = 0 To 99
            If Math.Abs(plotData(x)(1) - y) < 0.05 Then
                plotString &= "*"
            Else
                plotString &= " "
            End If
        Next
        plotString &= vbCrLf
    Next
    
    Return plotString
End Function

Function confidenceLevel() As Double
    ' For a two-sided confidence level of 99.73%
    ' This corresponds to ±3 standard deviations in a normal distribution
    ' Since we're using standard normal distribution (μ = 0, σ = 1)
    Dim confidence As Double = 0.9973 ' Store the value in a variable for clarity
    Dim percentage As Double = confidence * 100 ' Calculate the percentage for better understanding
    Return percentage ' Return the calculated percentage instead of confidence
End Function
