model Lab_7_1

parameter Real N = 1030;
parameter Real x0 = 8;
parameter Real g = 0.83;
parameter Real v = 0.000083;

Real x(start=x0);

equation

der(x) = (g + v * x) * (N - x);

end Lab_7_1;
