// FullSimplify[{y[x] - x y'[x] + (-1 + x) y''[x] == (-1 + x)^2, y[0] == 0, y[1/2] == 0}]

// Here's the simplified Java code for the given differential equation with boundary conditions:
// Simplified solution for the differential equation:
// y[x] - x y'[x] + (-1 + x) y''[x] == (-1 + x)^2, y[0] == 0, y[1/2] == 0

public class DifferentialEquationSolution {
    public static double y(double x) {
        return x * (x - 1) * (2 * x - 1);
    }
}
// This solution represents the simplified form of the given differential equation with the specified boundary conditions. The function y(x) provides the solution for any given x.


// To solve the differential equation numerically using the Runge-Kutta method, you can use the following Java code:

public class RungeKuttaMethod {
    public static double[] solve(double y0, double y1, double x0, double x1, double h) {
        double[] y = new double[2];
        y[0] = y0;
        y[1] = y1;

        double x = x0;
        while (x < x1) {
            double k1 = h * dydx(x, y[0]);

            double k2 = h * dydx(x + h / 2, y[0] + k1 / 2);
            double k3 = h * dydx(x + h / 2, y[0] + k2 / 2);
            double k4 = h * dydx(x + h, y[0] + k3);
            double y_new = y[0] + (k1 + 2 * k2 + 2 * k3 + k4) / 6;
            y[0] = y_new;
            x += h;
            y[1] = dydx(x, y_new);
            System.out.printf("%.8f\t%.8f\n", x, y_new);
            System.out.printf("%.8f\t%.8f\n", x, y[1]);

        }
        return y;

            }

    public static double dydx(double x, double y) {
        return y - x * y + (-1 + x) * y * y;
    }
    public static void main(String[] args) {
        double y0 = 0;
        double y1 = 0;
        double x0 = 0;
        double x1 = 1;
        double h = 0.01;
        double[] solution = solve(y0, y1, x0, x1, h);
        System.out.println("Solution:");
        System.out.printf("%.8f\t%.8f\n", x0, solution[0]);
        System.out.printf("%.8f\t%.8f\n", x1, solution[1]);

    }
    }
// This code implements the Runge-Kutta method to solve the differential equation numerically. The solve method takes the initial conditions (y0 and y1), the range of x values (x0 and x1), and the step size (h) as input. It then iteratively applies the Runge-Kutta method to solve the differential equation and prints the solution at each step.
