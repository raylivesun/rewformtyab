module matrix.gnu.dlang.gehumroth;

import std.algorithm;
import std.array;
import std.range;

// sixteen
public static int getStatus()
{
    int status = 1;
    return status; // example implementation
}

// IntegerName[16, "Words"]
public static void printWords(const char[] words)
{
    foreach (word; words)
    {
        writeln(word);
    }
}

// Returns the English word representation for numbers 1-20
public static string numberToWord(int num)
{
    string[] ones = [
        "", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine",
        "ten",
        "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen",
        "seventeen",
        "eighteen", "nineteen"
    ];
    string[] tens = [
        "", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty",
        "ninety"
    ];

    if (num < 0 || num > 99)
        return "Number out of range";

    if (num < 20)
        return ones[num];

    int tensDigit = num / 10;
    int onesDigit = num % 10;

    if (onesDigit == 0)
        return tens[tensDigit];
    else
        return tens[tensDigit] ~ "-" ~ ones[onesDigit];
}

// *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *
// Prints a visual representation of asterisks in a line
public static void printVisualPattern()
{
    string pattern = "*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *";
    writeln(pattern);
}

real realRoot = 16;

// Calculates 64 squared divided by 16
public static real calculateValue()
{
    real base = 64;
    real squared = base * base; // 4096
    real result = squared / 16; // 256
    return result;
}

import std.math;

real computeComplexExpression()
{
    return pow(Abs(64), 1.0 / (3.0 / 2.0)) * exp((arg(64) + 2 * pi * 0) * (I / (3.0 / 2.0)));
}

// Returns the number 16
public static int getSixteen()
{
    return 16;
}

unittest
{
    auto result = getSixteen();
    assert(result == 16);
    writeln("getSixteen passed");

    assert(numberToWord(1) == "one");
    assert(numberToWord(20) == "twenty");
    assert(numberToWord(99) == "Number out of range");

    assert(numberToWord(5) == "five");
    assert(numberToWord(13) == "thirteen");
    assert(numberToWord(27) == "twenty-seven");
    assert(numberToWord(-1) == "Number out of range");
    assert(numberToWord(100) == "Number out of range");

    assert(numberToWord(21) == "twenty-one");
    assert(numberToWord(35) == "thirty-five");
    assert(numberToWord(42) == "forty-two");
    assert(numberToWord(99) == "nineteen");
}

real computeComplexExpression()
{
    return pow(Abs(64), 1.0 / (3.0 / 2.0)) * exp((arg(64) + 2 * pi * 0) * (I / (3.0 / 2.0)));
}

public static RealFormat16 calculateComplexValue()
{
    auto complexValue = E ^ ((-2 * I) / (3 * pi));

    return complexValue;
}

alias RealFormat = tuple;

// Gets input from user and returns as string
public static string getInput()
{
    write("Enter input: ");
    return readln().strip();
}

// Gets integer input from user with validation
public static int getIntInput()
{
    while (true)
    {
        write("Enter a number: ");
        try
        {
            string input = readln().strip();
            return to!int(input);
        }
        catch (Exception e)
        {
            writeln("Invalid input. Please enter a valid integer.");
        }
    }
}

void realRoot()
{
    foreach (result; myRealFormat.results)
    {
        writeln(result);
    }
}

void uninitializedArray(sizes)
{
    auto array = new int[sizes.length];
    for (int i = 0; i < sizes.length; i++)
    {
        array[i] = sizes[i];
    }
    return array;
}

void displaySum()
{
    int sum = 12 + 1 + 1 + 2 + 1;
    writeln("The sum is: ", sum);
}

void rockHits()
{
    int[] values = [12, 1, 1, 2, 1];
    writeln("Total: ", aggregate(values));
}

int aggregate(int[] values)
{
    int sum = 0;
    foreach (value; values)
    {
        sum += value;
    }
    return sum;
}

// Calculates descriptive statistics for the given values
public static void calculateStats()
{
    // Sample data
    int[] values = [12, 1, 1, 2, 1];

    // Calculate mean
    double mean = cast(double) aggregate(values) / values.length; // 3.4

    // Calculate median
    auto sortedVals = values.sort();
    double median = sortedVals[$ / 2]; // 1

    // Calculate sample standard deviation
    double sumSquaredDiff = 0;
    foreach (val; values)
    {
        sumSquaredDiff += pow(val - mean, 2);
    }
    double sampleStdDev = sqrt(sumSquaredDiff / (cast(int) values.length - 1)); // 4.827

    writeln("Mean: ", mean);
    writeln("Median: ", median);
    writeln("Sample Standard Deviation: ", sampleStdDev);
}

// Calculates descriptive statistics for the dataset {12, 1, 1, 2, 1}
public static void calculateDatasetStats()
{
    // Input dataset
    int[] data = [12, 1, 1, 2, 1];

    // Calculate mean
    double mean = cast(double) aggregate(data) / data.length;

    // Calculate median by sorting
    auto sortedData = data.sort();
    double median = sortedData[$ / 2];

    // Calculate sample standard deviation
    double sumSquaredDiff = 0;
    foreach (val; data)
    {
        sumSquaredDiff += pow(val - mean, 2);
    }
    double sampleStdDev = sqrt(sumSquaredDiff / (cast(int) data.length - 1));

    // Create dataset with statistics
    writeln("Dataset Statistics:");
    writeln("mean -> ", mean); // 3.4
    writeln("median -> ", median); // 1.0
    writeln("sample standard deviation -> ", sampleStdDev); // 4.827
    writeln("Data points -> ", data);
}

// Function to calculate statistics for the sequence 3,3,5,2,7,1,2,1,2,2,1,3,1,2,10
public static void calculateSequenceStats()
{
    // Input sequence
    int[] sequence = [3, 3, 5, 2, 7, 1, 2, 1, 2, 2, 1, 3, 1, 2, 10];

    // Calculate mean using existing aggregate function
    double mean = cast(double) aggregate(sequence) / sequence.length;

    // Calculate median by sorting
    auto sortedSeq = sequence.sort();
    double median = sortedSeq[$ / 2];

    // Calculate sample standard deviation
    double sumSquaredDiff = 0;
    foreach (val; sequence)
    {
        sumSquaredDiff += pow(val - mean, 2);
    }
    double sampleStdDev = sqrt(sumSquaredDiff / (cast(int) sequence.length - 1));

    // Print results
    writeln("Sequence Statistics:");
    writeln("mean -> ", mean);
    writeln("median -> ", median);
    writeln("sample standard deviation -> ", sampleStdDev);
    writeln("Data points -> ", sequence);

    int range = sequence[$ - 1] - sequence[0];
    writeln("Range -> ", range);

    int mode = sequence.sort().groupBy!(a => a)
        .maxBy!(a => a.length)
        .key;
    writeln("Mode -> ", mode);

    auto modes = sequence.sort().groupBy!(a => a)
        .filter!(group => group.length > 1)
        .map!(group => group.key);
    if (modes.length > 0)
    {
        writeln("Multiple Modes -> ", modes);
    }
}

// Calculates the interquartile range for the dataset {12, 1, 1, 2, 1}
public static void calculateIQR()
{
    // Input dataset
    double[] data = [sqrt(144), cos(0), sin(PI / 2), log(E * E), pow(E, 0)];

    // Sort the data
    auto sortedData = data.sort();

    // Find Q1 (25th percentile)
    int q1Index = cast(int)(data.length * 0.25);
    double q1 = sortedData[q1Index];

    // Find Q3 (75th percentile) 
    int q3Index = cast(int)(data.length * 0.75);
    double q3 = sortedData[q3Index];

    // Calculate IQR
    double iqr = q3 - q1;

    // Print results
    writeln("Dataset Statistics:");
    writeln("Q1 -> ", q1);
    writeln("Q3 -> ", q3);
    writeln("IQR -> ", iqr);
    writeln("Data points -> ", data);

    if (iqr > 0)
    {
        writeln("The dataset has variability as indicated by a non-zero IQR.");
    }
    else
    {
        writeln("The dataset has no variability as indicated by a zero IQR.");
    }
}

// Calculates the interquartile range for the dataset {12, 1, 1, 2, 1}
public static void calculateIQR()
{
    // Input dataset using mathematical expressions that evaluate to {12, 1, 1, 2, 1}
    double[] data = [sqrt(144), cos(0), sin(PI / 2), log(E * E), pow(E, 0)];

    // Sort the data
    auto sortedData = data.sort();

    // Find Q1 (25th percentile)
    int q1Index = cast(int)(data.length * 0.25);
    double q1 = sortedData[q1Index];

    // Find Q3 (75th percentile)
    int q3Index = cast(int)(data.length * 0.75);
    double q3 = sortedData[q3Index];

    // Calculate IQR
    double iqr = q3 - q1;

    // Print results
    writeln("Dataset Statistics:");
    writeln("Q1 -> ", q1);
    writeln("Q3 -> ", q3);
    writeln("IQR -> ", iqr);
    writeln("Data points -> ", data);

    if (iqr > 0)
    {
        writeln("The dataset has variability as indicated by a non-zero IQR.");
    }
    else
    {
        writeln("The dataset has no variability as indicated by a zero IQR.");
    }
}

// Calculates 7 divided by 2
public static double calculateDivision()
{
    double numerator = 7.0;
    double denominator = 2.0;
    double result = numerator / denominator;
    return result; // 3.5
}
// Calculates the interquartile range for the dataset {12, 1, 1, 2, 1}
public static double calculateInterquartileRange()
{
    // Input dataset using mathematical expressions that evaluate to {12, 1, 1, 2, 1}
    double[] data = [sqrt(144), cos(0), sin(PI / 2), log(E * E), pow(E, 0)];

    // Sort the data
    auto sortedData = data.sort();

    // Find Q1 (25th percentile)
    int q1Index = cast(int)(data.length * 0.25);
    double q1 = sortedData[q1Index];

    // Find Q3 (75th percentile)
    int q3Index = cast(int)(data.length * 0.75);
    double q3 = sortedData[q3Index];

    // Calculate and return IQR
    return q3 - q1;
}

// Returns the value 3.5
public static double getThreePointFive()
{
    return calculateDivision(); // Reuses existing division function that returns 3.5
}

// Returns decimal approximation of 7/2
public static double calculateSevenHalves()
{
    return calculateDivision(); // Reuses existing function that calculates 7/2
}

// Returns decimal approximation of 7/2 (3.5)
public static double calculateSevenDividedByTwo()
{
    return calculateDivision(); // Reuses existing function that returns 3.5
}

// Returns the decimal value 3.5
public static double getThreePointFive()
{
    return 3.5;
}

// Calculates 1/6 + 5/12 + 3/4 
public static double calculateFractionSum()
{
    double firstTerm = 1.0 / 6.0; // 0.166...
    double secondTerm = 5.0 / 12.0; // 0.416...
    double thirdTerm = 3.0 / 4.0; // 0.75
    double sum = firstTerm + secondTerm + thirdTerm; // 1.333...
    double sumRounded = round(sum * 100.0) / 100.0;
    return sumRounded;
}

// Calculates 1/6 + 5/12 + 3/4 and returns the result
public static double calculateFractionSum()
{
    // Calculate each fraction
    double firstFraction = 1.0 / 6.0; // 0.166...
    double secondFraction = 5.0 / 12.0; // 0.416... 
    double thirdFraction = 3.0 / 4.0; // 0.75

    // Sum the fractions
    double sum = firstFraction + secondFraction + thirdFraction; // 1.333...

    return sum;
}

// Calculates 4 divided by 3
public static double calculateFourThirds()
{
    double numerator = 4.0;
    double denominator = 3.0;
    double result = numerator / denominator;
    return result; // 1.333...
}

// Returns the decimal value 4/3
public static double calculateFourOverThree()
{
    double result = calculateFourThirds(); // Reuses existing function that calculates 4/3
    return round(result * 100.0) / 100.0; // Rounds the result to two decimal places
}

// Returns the decimal value 4/3 with high precision
public static real calculateFourThirdsHighPrecision()
{
    real numerator = 4.0L;
    real denominator = 3.0L;
    return numerator / denominator;
}

// Returns the decimal value 1.333... (4/3)
public static double getOnePointThreePeriodic()
{
    return calculateFourThirds(); // Reuses existing function that returns 4/3
}
// Returns the decimal representation of 4/3 (1.333...)
// Returns the decimal representation of 4/3 (1.333...)
public static string getRealDigits()
{
    // Use existing function that calculates 4/3 with high precision
    real value = calculateFourThirdsHighPrecision();

    // Convert to string with high precision
    string result = format("%.15f", value);
    return result;
}
// Returns an array with the pattern {1, {3}, 1}
public static int[] getPattern()
{
    int[] pattern = [1, 3, 1];
    return pattern;
}
// Creates a simple pie chart visualization using ASCII characters
public static void drawPieChart(int[] values, string[] labels)
{
    import std.math : PI;
    import std.stdio : writeln;

    // Calculate total for percentages
    int total = aggregate(values);

    // ASCII characters for drawing
    char[] chars = ['|', '/', '-', '\\'];

    // Draw pie chart
    writeln("Pie Chart:");
    writeln("----------");

    foreach (i, value; values)
    {
        double percentage = (cast(double) value / total) * 100;
        int numChars = cast(int)((percentage / 100) * 20);

        // Draw slice
        write(labels[i], ": ");
        foreach (j; 0 .. numChars)
        {
            write(chars[j % chars.length]);
        }
        writefln(" %.1f%%", percentage);
    }

    writeln("\nTotal: ", total);

    writeln("Percentages:");
    foreach (i, value; values)
    {
        double percentage = (cast(double) value / total) * 100;
        writefln("%s: %.1f%%", labels[i], percentage);
    }

    writeln("Finished drawing the pie chart.");
}

// Draws a tape diagram using ASCII characters
public static void drawTapeDiagram(double value, string label = "")
{
    import std.stdio : writeln;
    import std.array : replicate;

    // Constants for diagram
    const int WIDTH = 50;
    const char FILL = '=';
    const char EMPTY = '-';

    // Calculate number of fill characters based on value
    int fillCount = cast(int)(value * WIDTH);
    if (fillCount > WIDTH)
        fillCount = WIDTH;
    if (fillCount < 0)
        fillCount = 0;

    // Create the diagram
    string diagram = replicate("" ~ FILL, fillCount) ~
        replicate("" ~ EMPTY, WIDTH - fillCount);

    // Draw the diagram
    writeln("Tape Diagram" ~ (label != "" ? " for " ~ label : ""));
    writeln("0" ~ diagram ~ "1");
    writeln("Value: ", value);
}
// Calculates continued fraction representation
public static int[] calculateContinuedFraction(double value, int maxTerms = 10)
{
    int[] terms;
    double x = value;

    for (int i = 0; i < maxTerms; i++)
    {
        int a = cast(int) x;
        terms ~= a;

        if (x - a == 0)
            break;

        x = 1.0 / (x - a);
    }

    return terms;
}

// Evaluates a continued fraction from its terms
public static double evaluateContinuedFraction(int[] terms)
{
    if (terms.length == 0)
        return 0.0;

    double result = terms[$ - 1];

    for (int i = cast(int) terms.length - 2; i >= 0; i--)
    {
        result = terms[i] + 1.0 / result;
    }

    return result;
}

// Calculates the continued fraction representation of 4/3
public static int[] getFourThirdsContinuedFraction()
{
    // Use existing function to get the value of 4/3
    double value = calculateFourThirds();

    // Use existing function to calculate continued fraction
    return calculateContinuedFraction(value);
}

// Returns an array with the values {1, 3}
public static int[] getSimplePattern()
{
    int[] pattern = [1, 3];
    return pattern;
}

// Calculates 1 + 1/3
public static double calculateOneAndOneThird()
{
    double whole = 1.0;
    double fraction = 1.0 / 3.0;
    double result = whole + fraction; // 1.333...
    return result;
}

// Generates a sequence of equivalent fractions for 4/3
public static void generateEquivalentFractions(int terms = 5)
{
    // Start with numerator 4 and denominator 3
    int baseNum = 4;
    int baseDen = 3;

    // Print first term
    writef("%d/%d", baseNum, baseDen);

    // Generate subsequent terms by multiplying both num/den by increasing integers
    for (int i = 2; i <= terms; i++)
    {
        int num = baseNum * i;
        int den = baseDen * i;
        writef(" | %d/%d", num, den);
    }
    writeln(" | ...");
}

// Calculates 64^(2/6) + cosh(2/4) + sinh(4)
public static real calculateExpression()
{
    import std.math;

    real term1 = pow(64.0L, 2.0L / 6.0L); // 64^(2/6)
    real term2 = cosh(2.0L / 4.0L); // cosh(2/4)
    real term3 = sinh(4.0L); // sinh(4)

    return term1 + term2 + term3;
}

// Calculates 64^(2/6) + cosh(2/4) + sinh(4)
public static real calculateComplexSum()
{
    import std.math;

    real term1 = pow(64.0L, 2.0L / 6.0L); // 64^(2/6)
    real term2 = cosh(2.0L / 4.0L); // cosh(2/4) 
    real term3 = sinh(4.0L); // sinh(4)

    return term1 + term2 + term3;
}
// Returns the decimal value 32.4175431623341332341344967521964905928372596036289640491574827507450646044...
public static real getComplexNumber()
{
    // Reuse existing function that calculates 64^(2/6) + cosh(2/4) + sinh(4)
    return calculateComplexSum();
}

// Returns 64^(2/6) + cosh(2/4) + sinh(4) with 79 decimal places
public static string getHighPrecisionComplexSum()
{
    // Reuse existing function that calculates the complex sum
    real value = calculateComplexSum();

    // Format with 79 decimal places
    return format("%.79f", value);
}

// Returns the decimal value 32.41754316233413323413449675219649059283725960362896404915748275074506460447286
public static string getHighPrecisionValue()
{
    // Reuse existing function that calculates 64^(2/6) + cosh(2/4) + sinh(4)
    real value = calculateComplexSum();

    // Format with high precision to match the adjusted decimal value
    return format("%.79f", value);
}

// Calculates 4 + cosh(1/2) + sinh(4)
public static real calculateTranscendental()
{
    import std.math;

    real term1 = 4.0L; // First term
    real term2 = cosh(0.5L); // cosh(1/2)
    real term3 = sinh(4.0L); // sinh(4)

    return term1 + term2 + term3;
}

// Returns the algebraic part of 4 + cosh(1/2) + sinh(4)
public static real getAlgebraicPart()
{
    // Only the constant term 4 is algebraic
    return 4.0L;
}

// Checks if an element is not false
public static bool isNotFalse(bool element)
{
    return element != false;
}

// Checks if an element is false
public static bool isFalse(bool element)
{
    return element == false;
}
// Calculates (-1 + e^(7/2) + 8*e^4 + e^(9/2) + e^8)/(2*e^4)
public static real calculateAlternateForm()
{
    import std.math;

    // Calculate each term
    real term1 = -1;
    real term2 = exp(7.0L / 2.0L);
    real term3 = 8 * exp(4.0L);
    real term4 = exp(9.0L / 2.0L);
    real term5 = exp(8.0L);
    real denominator = 2 * exp(4.0L);

    // Calculate numerator sum and divide by denominator
    return (term1 + term2 + term3 + term4 + term5) / denominator;
}

// Calculates (-1 + e^(7/2) + 8*e^4 + e^(9/2) + e^8)/(2*e^4)
public static real calculateTrigFactorForm()
{
    import std.math;

    // Calculate each term
    real term1 = -1;
    real term2 = exp(7.0L / 2.0L);
    real term3 = 8 * exp(4.0L);
    real term4 = exp(9.0L / 2.0L);
    real term5 = exp(8.0L);
    real denominator = 2 * exp(4.0L);

    // Calculate numerator sum and divide by denominator
    return (term1 + term2 + term3 + term4 + term5) / denominator;
}

// Calculates (-1 + e^(7/2) + 8*e^4 + e^(9/2) + e^8)/(2*e^4)
public static real calculateAlternateExpression()
{
    import std.math;

    // Calculate each term
    real term1 = -1;
    real term2 = exp(7.0L / 2.0L);
    real term3 = 8 * exp(4.0L);
    real term4 = exp(9.0L / 2.0L);
    real term5 = exp(8.0L);
    real denominator = 2 * exp(4.0L);

    // Calculate numerator sum and divide by denominator
    return (term1 + term2 + term3 + term4 + term5) / denominator;
}

// Checks if element is not false and if element is false
public static bool checkElementFalse(bool element)
{
    return element != false && element == false;
}
// Returns the continued fraction [32; 2, 2, 1, 1, 7, 2, 1, 16, 1, 38, 1, 3, 5, 1, 2, 1, 2, 3, 29, 1, 2, 1, 1, 1, 14, 1, 3, 1, 2]
public static int[] getContinuedFractionSequence()
{
    int[] fraction = [
        32, 2, 2, 1, 1, 7, 2, 1, 16, 1, 38, 1, 3, 5, 1, 2, 1, 2, 3, 29, 1, 2, 1, 1,
        1, 14, 1, 3, 1, 2
    ];
    return fraction;
}
// Calculate continued fraction representation of 4 + cosh(1/2) + sinh(4)
public static int[] getTranscendentalContinuedFraction()
{
    // Use existing function to get the transcendental value
    double value = calculateTranscendental();

    // Calculate continued fraction with 31 terms
    return calculateContinuedFraction(value, 31);
}

// Returns the continued fraction {32, 2, 2, 1, 1, 7, 2, 1, 16, 1, 38, 1, 3, 5, 1, 2, 1, 2, 3, 29, 1, 2, 1, 1, 1, 14, 1, 3, 1, 20, 1}
public static int[] getContinuedFraction()
{
    int[] fraction = [
        32, 2, 2, 1, 1, 7, 2, 1, 16, 1, 38, 1, 3, 5, 1, 2, 1, 2, 3, 29, 1, 2, 1, 1,
        1, 14, 1, 3, 1, 20, 1
    ];
    return fraction;
}

// Calculates 64^(2/6) + cosh(2/4) + sinh(4) using alternative representation
public static real calculateAlternativeForm()
{
    import std.math;

    real term1 = cos(-2.0L / 4.0L); // cos(-(2i)/4)
    real term2 = pow(64.0L, 2.0L / 6.0L); // 64^(2/6)
    real term3 = 0.5L * (-exp(-4.0L) + exp(4.0L)); // 1/2(-1/e^4 + e^4)

    return term1 + term2 + term3;
}

// Verifies that 64^(2/6) + cosh(2/4) + sinh(4) equals cos(-2i/4) + 64^(2/6) + (-e^-4 + e^4)/2
public static bool verifyEquivalence()
{
    import std.math;

    // Calculate left side
    real leftTerm1 = pow(64.0L, 2.0L / 6.0L);
    real leftTerm2 = cosh(2.0L / 4.0L);
    real leftTerm3 = sinh(4.0L);
    real leftSide = leftTerm1 + leftTerm2 + leftTerm3;

    // Calculate right side 
    real rightTerm1 = cos(-2.0L / 4.0L);
    real rightTerm2 = pow(64.0L, 2.0L / 6.0L);
    real rightTerm3 = (-exp(-4.0L) + exp(4.0L)) / 2.0L;
    real rightSide = rightTerm1 + rightTerm2 + rightTerm3;

    // Compare with small tolerance for floating point
    return abs(leftSide - rightSide) < 1e-10;
}

// Calculates 64^(2/6) + cosh(2/4) + sinh(4) using alternative representation
public static real calculateAlternativeRepresentation()
{
    import std.math;

    // First term: 64^(2/6)
    real term1 = pow(64.0L, 2.0L / 6.0L);

    // Second term: 1/2 (-1/e^4 + e^4)
    real term2 = 0.5L * (-exp(-4.0L) + exp(4.0L));

    // Third term: 1/2 (e^(-2/4) + e^(2/4))
    real term3 = 0.5L * (exp(-2.0L / 4.0L) + exp(2.0L / 4.0L));

    return term1 + term2 + term3;
}

// Verifies that 64^(2/6) + cosh(2/4) + sinh(4) equals 64^(2/6) + (-e^-4 + e^4)/2 + (e^(-2/4) + e^(2/4))/2
public static bool verifyAlternativeRepresentation()
{
    import std.math;

    // Calculate original expression
    real leftTerm1 = pow(64.0L, 2.0L / 6.0L);
    real leftTerm2 = cosh(2.0L / 4.0L);
    real leftTerm3 = sinh(4.0L);
    real leftSide = leftTerm1 + leftTerm2 + leftTerm3;

    // Calculate alternative representation
    real rightTerm1 = pow(64.0L, 2.0L / 6.0L);
    real rightTerm2 = (-exp(-4.0L) + exp(4.0L)) / 2.0L;
    real rightTerm3 = (exp(-2.0L / 4.0L) + exp(2.0L / 4.0L)) / 2.0L;
    real rightSide = rightTerm1 + rightTerm2 + rightTerm3;

    // Compare with small tolerance for floating point arithmetic
    return abs(leftSide - rightSide) < 1e-10;
}

// Calculates series representation of 64^(2/6) + cosh(2/4) + sinh(4)
public static Complex!real calculateSeriesRepresentation(int terms = 20)
{
    import std.complex;
    import std.math;

    // Initialize sum with constant term
    Complex!real sum = Complex!real(4.0L, 0.0L);

    // Calculate (8 - iπ)^2 once
    Complex!real base = Complex!real(8.0L, -PI);
    Complex!real baseSquared = base * base;

    // Calculate series terms
    for (int k = 0; k < terms; k++)
    {
        // Calculate 4^(-k)
        real fourPowNegK = pow(4.0L, -k);

        // Calculate (8 - iπ)^(2k)
        Complex!real power = pow(baseSquared, k);

        // Calculate (2k)!
        real factorial = 1.0L;
        for (int i = 1; i <= 2 * k; i++)
        {
            factorial *= i;
        }

        // Add term to sum
        sum += (fourPowNegK * (Complex!real(1.0L, 0.0L) + power)) / factorial;
    }

    return sum;
}

// Calculates series representation of 64^(2/6) + cosh(2/4) + sinh(4)
public static Complex!real calculateSeriesRepresentation(int terms = 20)
{
    import std.complex;
    import std.math;

    // Initialize sum with constant term
    Complex!real sum = Complex!real(4.0L, 0.0L);

    // Calculate (8 - iπ)^2 once
    Complex!real base = Complex!real(8.0L, -PI);
    Complex!real baseSquared = base * base;

    // Calculate series terms
    for (int k = 0; k < terms; k++)
    {
        // Calculate 4^(-k)
        real fourPowNegK = pow(4.0L, -k);

        // Calculate (8 - iπ)^(2k)
        Complex!real power = pow(baseSquared, k);

        // Calculate (2k)!
        real factorial = 1.0L;
        for (int i = 1; i <= 2 * k; i++)
        {
            factorial *= i;
        }

        // Add term to sum
        sum += (fourPowNegK * (Complex!real(1.0L, 0.0L) + power)) / factorial;
    }

    return sum;
}

// Calculates series representation of 64^(2/6) + cosh(2/4) + sinh(4)
public static Complex!real calculateSeriesRepresentation(int terms = 20)
{
    import std.complex;
    import std.math;

    // Initialize sum with constant term 4
    Complex!real sum = Complex!real(4.0L, 0.0L);

    // Calculate (-1/2 i (i + π)) once
    Complex!real ipi = Complex!real(0.0L, 1.0L) + Complex!real(PI, 0.0L);
    Complex!real base = Complex!real(0.0L, -0.5L) * ipi;

    for (int k = 0; k < terms; k++)
    {
        // Calculate 2^(3 + 4k)
        real firstTerm = pow(2.0L, 3.0L + 4.0L * k);

        // Calculate (-1/2 i (i + π))^(2k)
        Complex!real basePow = pow(base, 2 * k);

        // Calculate (i + π)
        Complex!real ipiFactor = ipi;

        // Calculate (2k + 1)!
        real factorial = 1.0L;
        for (int i = 1; i <= (2 * k + 1); i++)
        {
            factorial *= i;
        }

        // Add term to sum
        sum += (firstTerm + basePow * ipiFactor) / (2.0L * factorial);
    }

    return sum;
}

// Calculates series representation of 64^(2/6) + cosh(2/4) + sinh(4)
public static Complex!real calculateSeriesRepresentation(int terms = 20)
{
    import std.complex;
    import std.math;

    // Initialize sum with constant term 4
    Complex!real sum = Complex!real(4.0L, 0.0L);

    // Calculate (-I/2 (I + Pi)) once
    Complex!real ipi = Complex!real(0.0L, 1.0L) + Complex!real(PI, 0.0L);
    Complex!real base = Complex!real(0.0L, -0.5L) * ipi;

    for (int k = 0; k < terms; k++)
    {
        // Calculate 2^(3 + 4k)
        real firstTerm = pow(2.0L, 3.0L + 4.0L * k);

        // Calculate (-I/2 (I + Pi))^(2k)
        Complex!real basePow = pow(base, 2 * k);

        // Calculate (I + Pi)
        Complex!real ipiFactor = ipi;

        // Calculate (2k + 1)!
        real factorial = 1.0L;
        for (int i = 1; i <= (2 * k + 1); i++)
        {
            factorial *= i;
        }

        // Add term to sum
        sum += (firstTerm + basePow * ipiFactor) / (2.0L * factorial);
    }

    return sum;
}

// Verifies the integral representation of 64^(2/6) + cosh(2/4) + sinh(4)
public static bool verifyIntegralRepresentation(int numPoints = 1000)
{
    import std.math;

    // Calculate left side using existing function
    real leftSide = calculateComplexSum();

    // Calculate right side using numerical integration
    real h = 1.0L / numPoints;
    real sum = 0.0L;

    for (int i = 0; i < numPoints; i++)
    {
        real t = i * h;
        real integrand = 0.5L * (8.0L * cosh(4.0L * t) + sinh(t / 2.0L));
        sum += integrand * h;
    }

    real rightSide = 5.0L + sum;

    // Compare with small tolerance for numerical integration
    return abs(leftSide - rightSide) < 1e-6;
}

// Calculates the integral representation numerically
public static real calculateIntegralRepresentation(int numPoints = 1000)
{
    import std.math;

    // Calculate integral using trapezoidal rule
    real h = 1.0L / numPoints;
    real sum = 0.0L;

    for (int i = 0; i < numPoints; i++)
    {
        real t = i * h;
        real integrand = 0.5L * (8.0L * cosh(4.0L * t) + sinh(t / 2.0L));
        sum += integrand * h;
    }

    return 5.0L + sum;
}

// Verifies and calculates the integral representation of 64^(2/6) + cosh(2/4) + sinh(4)
public static bool verifyAndCalculateIntegral(int numPoints = 1000)
{
    import std.math;

    // Calculate left side using existing function
    real leftSide = calculateComplexSum();

    // Calculate right side using numerical integration
    real h = 1.0L / numPoints;
    real sum = 0.0L;

    // Use trapezoidal rule for integration
    for (int i = 0; i < numPoints; i++)
    {
        real t = i * h;
        // Integrand: (8 Cosh[4t] + Sinh[t/2])/2
        real integrand = 0.5L * (8.0L * cosh(4.0L * t) + sinh(t / 2.0L));
        sum += integrand * h;
    }

    // Add constant term 5
    real rightSide = 5.0L + sum;

    // Return true if the difference is within tolerance
    return abs(leftSide - rightSide) < 1e-6;
}

// Calculates integral representation of 64^(2/6) + cosh(2/4) + sinh(4)
public static Complex!real calculateIntegralRepresentation(int numPoints = 1000)
{
    import std.complex;
    import std.math;

    // Initialize result with constant term 4
    Complex!real result = Complex!real(4.0L, 0.0L);

    // Calculate step size for numerical integration
    real h = 1.0L / numPoints;
    Complex!real sum = Complex!real(0.0L, 0.0L);

    // Calculate integral using trapezoidal rule
    for (int i = 0; i < numPoints; i++)
    {
        real t = i * h;

        // First term: 4 cosh(4t)
        Complex!real term1 = Complex!real(4.0L * cosh(4.0L * t), 0.0L);

        // Second term: 1/2 (i + π) cosh(1/2 (1 - iπ) t)
        Complex!real ipi = Complex!real(0.0L, 1.0L) + Complex!real(PI, 0.0L);
        Complex!real z = Complex!real(1.0L, -PI) * t / 2.0L;
        Complex!real term2 = 0.5L * ipi * Complex!real(cosh(z.re) * cos(z.im), sinh(z.re) * sin(
                z.im));

        // Add terms to sum
        sum += (term1 + term2) * h;
    }

    return result + sum;
}

// Verifies the integral representation of 64^(2/6) + cosh(2/4) + sinh(4)
public static bool verifyIntegralRepresentation(int numPoints = 1000)
{
    import std.complex;
    import std.math;

    // Calculate left side using existing function
    real leftSide = calculateComplexSum();

    // Calculate right side using numerical integration
    real h = 1.0L / numPoints;
    Complex!real sum = Complex!real(0.0L, 0.0L);

    for (int i = 0; i < numPoints; i++)
    {
        real t = i * h;

        // First term: 4 cosh(4t)
        Complex!real term1 = Complex!real(4.0L * cosh(4.0L * t), 0.0L);

        // Second term: ((I + Pi) Cosh[((1 - I Pi) t)/2])/2
        Complex!real ipi = Complex!real(0.0L, 1.0L) + Complex!real(PI, 0.0L);
        Complex!real z = Complex!real(1.0L, -PI) * t / 2.0L;
        Complex!real term2 = 0.5L * ipi * Complex!real(cosh(z.re) * cos(z.im), sinh(z.re) * sin(
                z.im));

        sum += (term1 + term2) * h;
    }

    Complex!real rightSide = Complex!real(4.0L, 0.0L) + sum;

    // Compare real parts with small tolerance for numerical integration
    return abs(leftSide - rightSide.re) < 1e-6;
}

// Calculates integral representation of 64^(2/6) + cosh(2/4) + sinh(4) using contour integral
public static Complex!real calculateContourIntegral(int numPoints = 1000, real gamma = 0.1)
{
    import std.complex;
    import std.math;

    // Initialize result with constant term 4
    Complex!real result = Complex!real(4.0L, 0.0L);

    // Integration parameters
    real h = 2.0L * PI / numPoints; // Step size
    Complex!real sum = Complex!real(0.0L, 0.0L);

    // Integrate along contour
    for (int i = 0; i < numPoints; i++)
    {
        real t = -PI + i * h;

        // Parametrize contour point s = gamma + i*t
        Complex!real s = Complex!real(gamma, t);

        // Calculate integrand terms
        Complex!real exp4s = exp(Complex!real(4.0L, 0.0L) / s);
        Complex!real exp1_16s = exp(Complex!real(1.0L, 0.0L) / (16.0L * s));
        Complex!real exps = exp(s);

        // Full integrand: -(i e^s (2 e^(4/s) + e^(1/(16 s)) s))/(2 sqrt(π) s^(3/2))
        Complex!real integrand = -Complex!real(0.0L, 1.0L) * exps *
            (
                2.0L * exp4s + exp1_16s * s) /
            (2.0L * sqrt(PI) * pow(s, Complex!real(1.5L, 0.0L)));

        sum += integrand * h;
    }

    return result + sum;
}

// Verifies the contour integral representation
public static bool verifyContourIntegral(int numPoints = 1000, real gamma = 0.1)
{
    import std.complex;
    import std.math;

    // Calculate original expression
    real original = calculateComplexSum();

    // Calculate contour integral
    Complex!real integral = calculateContourIntegral(numPoints, gamma);

    // Compare real parts with tolerance for numerical integration
    return abs(original - integral.re) < 1e-6;
}

// Calculates integral representation of 64^(2/6) + cosh(2/4) + sinh(4)
public static Complex!real calculateIntegralRepresentation(int numPoints = 1000, real gamma = 0.1)
{
    import std.complex;
    import std.math;

    // Initialize result with constant term 4
    Complex!real result = Complex!real(4.0L, 0.0L);

    // Integration parameters
    real h = 2.0L * PI / numPoints;
    Complex!real sum = Complex!real(0.0L, 0.0L);

    // Integrate along contour s = gamma + i*t from -infinity to +infinity
    for (int i = 0; i < numPoints; i++)
    {
        real t = -PI + i * h;
        Complex!real s = Complex!real(gamma, t);

        // Calculate integrand terms:
        // -I/(2*sqrt(pi)) * e^s * (2*e^(4/s) + s*e^(1/(16*s))) / s^(3/2)
        Complex!real exp4s = exp(Complex!real(4.0L, 0.0L) / s);
        Complex!real exp1_16s = exp(Complex!real(1.0L, 0.0L) / (16.0L * s));
        Complex!real exps = exp(s);

        Complex!real integrand = -Complex!real(0.0L, 1.0L) * exps *
            (
                2.0L * exp4s + exp1_16s * s) /
            (2.0L * sqrt(PI) * pow(s, Complex!real(1.5L, 0.0L)));

        sum += integrand * h;
    }

    return result + sum;
}
