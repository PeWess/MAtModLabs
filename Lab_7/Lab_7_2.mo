model Lab_7_2

parameter Real N = 1030;
parameter Real x0 = 8;
parameter Real g = 0.000083;
parameter Real v = 0.83;

Real x(start=x0);

equation

der(x) = (g + v * x) * (N - x);

end Lab_7_2;
