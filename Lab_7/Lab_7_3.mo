model Lab_7_3

parameter Real N = 1030;
parameter Real x0 = 8;
parameter Real g0 = 0.83;
parameter Real v0 = 0.83;

Real x(start=x0);
Real g(start=g0);
Real v(start=v0);

equation

der(g) = g * sin(time);
der(v) = v * sin(time);
der(x) = (g + v * x) * (N - x);

end Lab_7_3;
