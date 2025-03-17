DSolve[x y[x] (y[x] + x) == y'[x], y[x], x]
FullSimplify[y'[x] == x^2 y[x] + x y[x]^2]
Solve[x y[x] (x + y[x]) == y'[x], y[x]]

DSolve[y[n + 1] - y[n] == n y[n], y[n], n]
FullSimplify[y[n + 1] == (n + 1) y[n]]
RSolve[y[n + 1] - y[n] == n y[n], y[n], n]

y[n_] := c1 Product[(1 + k), {k, 0, n - 1}]

DSolve[{y'[x] == x^2 y[x] + x y[x]^2}, y[x], x]

y[x] == (3 E^(x^3/3) x)/(-(3^(2/3) (-x^3)^(1/3) Gamma[2/3, -x^3/3]) + x Subscript[c, 1])

y[0] == 1 /. c1 -> 1
Plot[3 E^(x^3/3) x/(-(3^(2/3) (-x^3)^(1/3) Gamma[2/3, -x^3/3]) + x), {x, -2, 2}, 
 PlotStyle -> {Blue, Thick},
 AxesLabel -> {"x", "y(x)"},
 PlotLabel -> "Solution of y'[x] == x^2 y[x] + x y[x]^2",
 ImageSize -> Large,
 PlotStyle -> {Blue, Thick}
]

y[x_] := c1 E^(x^3/3)/(1 - c1 x) 

y'(x) = f(x, y) = x - 2 y(x), y(0) = 0
y_n + 1 = y_n + h (k_1/4 + (3 k_2)/4)
x_n + 1 = x_n + h
k_1 = f(x_n, y_n)
k_2 = f(x_n + (2 h)/3, y_n + (2 h k_1)/3)
where y_0 = | 0
x_0 = | 0
h = | 0.15
n = | 0, ..., 10
(* Symbolic iteration for differential equation *)
y[n_] := c1 Product[(1 + k), {k, 0, n - 1}]

(* Symbolic solution for y[x] *)
y[x_] := c1 E^(x^3/3)/(1 - c1 x)

(* Numerical iteration using Runge-Kutta method *)
h = 0.15;
x[0] = 0;
y[0] = 0;
n = 10;

k1[n_] := x[n] - 2y[n]
k2[n_] := (x[n] + 2h/3) - 2(y[n] + 2h*k1[n]/3)

x[n_] := x[0] + n*h
y[n_] := y[n-1] + h*(k1[n-1]/4 + 3*k2[n-1]/4)

