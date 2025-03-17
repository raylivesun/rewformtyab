// y(x) = -x^2 - 2 sqrt(e) x + (5 x)/2 + e^x - 1

#include <iostream>
#include <cmath>

using namespace std;
int main()
{
    double x, y;
    x = 8.373393789e13;


    y = -pow(x, 2) - 2 * sqrt(2) * x + (5 * x) / 2 + exp(x) - 1;

    cout << "The value of y is: " << y << endl;

    return 0;
}

// DSolve[{y[x] - x y'[x] + (-1 + x) y''[x] == (-1 + x)^2, y[0] == 0, y[1/2] == 0}, y[x], x]

void solve(double x, double y)
{
    y = -pow(x, 2) - 2 * sqrt(2) * x + (5 * x) / 2 + exp(x) - 1;
    cout << "The value of y is: " << y << endl;
}

int solve_math()
{
    double x, y;
    cout << "Enter the value of x: ";
    cin >> x;

    solve(x, y);

    return 0;
}

// y[x] == -1 + E ^ x + (5 x) / 2 - 2 Sqrt[E] x - x ^ 2;


double solve_math_cosh(double x)
{
    double y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    return y;
}

double solve_math_sinh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The value of y is: " << y << endl;
    return y;
}

double solve_math_tanh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The value of y is: " << y << endl;
    return y;
}
double solve_math_coth(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The value of y is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The value of y is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_cout(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}

double solve_math_coth(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}

double solve_math_sech(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}

// y'(x) = x^2 y(x) + x y(x)^2
double solve_math_cosh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (cosh) is: " << y << endl;
    return y;
}
double solve_math_sinh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (sinh) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}
double solve_math_coth(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}

double solve_math_sech(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_cout(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}

double solve_math_coth(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_cout(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}

double solve_math_cosh(double x, double& y) 
{
    y = cosh(x);
    cout << "The calculated value of y (cosh) is: " << y << endl;
    return y;
}
double solve_math_sinh(double x, double& y)
{
    y = sinh(x);
    cout << "The calculated value of y (sinh) is: " << y << endl;
    return y;
}

double solve_math_tanh(double x, double& y)
{
    y = tanh(x);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}
double solve_math_coth(double x, double& y)
{
    y = 1 / tanh(x);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}

double solve_math_cout(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = tanh(x);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}
double solve_math_coth(double x, double& y)
{
    y = 1 / tanh(x);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_cout(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = tanh(x);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}
double solve_math_coth(double x, double& y)
{
    y = 1 / tanh(x);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_cout(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = tanh(x);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}
double solve_math_coth(double x, double& y)
{
    y = 1 / tanh(x);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_cout(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = tanh(x);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}
double solve_math_coth(double x, double& y)
{
    y = 1 / tanh(x);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_cout(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
// DSolve[{y[x] - x y'[x] + (-1 + x) y''[x] == (-1 + x)^2, y[0] == 0, y[1/2] == 0}, y[x], x]

void solve(double x, double y)
{
    y = -pow(x, 2) - 2 * sqrt(2) * x + (5 * x) / 2 + exp(x) - 1;
    cout << "The value of y is: " << y << endl;
}

int solve_math()
{
    double x, y;
    cout << "Enter the value of x: ";
    cin >> x;

    solve(x, y);

    return 0;
}

// y[x] == -1 + E ^ x + (5 x) / 2 - 2 Sqrt[E] x - x ^ 2;


double solve_math_cosh(double x)
{
    double y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    return y;
}

double solve_math_sinh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The value of y is: " << y << endl;
    return y;
}

double solve_math_tanh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The value of y is: " << y << endl;
    return y;
}
double solve_math_coth(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The value of y is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The value of y is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_cout(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}

double solve_math_coth(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}

double solve_math_sech(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}

// y'(x) = x^2 y(x) + x y(x)^2
double solve_math_cosh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (cosh) is: " << y << endl;
    return y;
}
double solve_math_sinh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (sinh) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}
double solve_math_coth(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}

double solve_math_sech(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_cout(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}

double solve_math_coth(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_cout(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}

double solve_math_cosh(double x, double& y) 
{
    y = cosh(x);
    cout << "The calculated value of y (cosh) is: " << y << endl;
    return y;
}
double solve_math_sinh(double x, double& y)
{
    y = sinh(x);
    cout << "The calculated value of y (sinh) is: " << y << endl;
    return y;
}

double solve_math_tanh(double x, double& y)
{
    y = tanh(x);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}
double solve_math_coth(double x, double& y)
{
    y = 1 / tanh(x);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}

double solve_math_cout(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = tanh(x);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}
double solve_math_coth(double x, double& y)
{
    y = 1 / tanh(x);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_cout(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = tanh(x);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}
double solve_math_coth(double x, double& y)
{
    y = 1 / tanh(x);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_cout(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = tanh(x);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}
double solve_math_coth(double x, double& y)
{
    y = 1 / tanh(x);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_cout(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = tanh(x);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}
double solve_math_coth(double x, double& y)
{
    y = 1 / tanh(x);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_cout(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
// DSolve[{y[x] - x y'[x] + (-1 + x) y''[x] == (-1 + x)^2, y[0] == 0, y[1/2] == 0}, y[x], x]

void solve(double x, double y)
{
    y = -pow(x, 2) - 2 * sqrt(2) * x + (5 * x) / 2 + exp(x) - 1;
    cout << "The value of y is: " << y << endl;
}

int solve_math()
{
    double x, y;
    cout << "Enter the value of x: ";
    cin >> x;

    solve(x, y);

    return 0;
}

// y[x] == -1 + E ^ x + (5 x) / 2 - 2 Sqrt[E] x - x ^ 2;


double solve_math_cosh(double x)
{
    double y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    return y;
}

double solve_math_sinh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The value of y is: " << y << endl;
    return y;
}

double solve_math_tanh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The value of y is: " << y << endl;
    return y;
}
double solve_math_coth(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The value of y is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The value of y is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_cout(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}

double solve_math_coth(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}

double solve_math_sech(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}

// y'(x) = x^2 y(x) + x y(x)^2
double solve_math_cosh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (cosh) is: " << y << endl;
    return y;
}
double solve_math_sinh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (sinh) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}
double solve_math_coth(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}

double solve_math_sech(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_cout(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}

double solve_math_coth(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_cout(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = -1 + exp(x) + (5 * x) / 2 - 2 * sqrt(2) * x - pow(x, 2);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}

double solve_math_cosh(double x, double& y) 
{
    y = cosh(x);
    cout << "The calculated value of y (cosh) is: " << y << endl;
    return y;
}
double solve_math_sinh(double x, double& y)
{
    y = sinh(x);
    cout << "The calculated value of y (sinh) is: " << y << endl;
    return y;
}

double solve_math_tanh(double x, double& y)
{
    y = tanh(x);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}
double solve_math_coth(double x, double& y)
{
    y = 1 / tanh(x);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}

double solve_math_cout(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = tanh(x);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}
double solve_math_coth(double x, double& y)
{
    y = 1 / tanh(x);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_cout(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = tanh(x);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}
double solve_math_coth(double x, double& y)
{
    y = 1 / tanh(x);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_cout(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = tanh(x);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}
double solve_math_coth(double x, double& y)
{
    y = 1 / tanh(x);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_cout(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
double solve_math_tanh(double x, double& y)
{
    y = tanh(x);
    cout << "The calculated value of y (tanh) is: " << y << endl;
    return y;
}
double solve_math_coth(double x, double& y)
{
    y = 1 / tanh(x);
    cout << "The calculated value of y (coth) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_csch(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (csch) is: " << y << endl;
    return y;
}
double solve_math_sech(double x, double& y)
{
    y = 1 / cosh(x);
    cout << "The calculated value of y (sech) is: " << y << endl;
    return y;
}
double solve_math_cout(double x, double& y)
{
    y = 1 / sinh(x);
    cout << "The calculated value of y (cout) is: " << y << endl;
    return y;
}
