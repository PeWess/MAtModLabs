model Lab_4_var_3

parameter Real w = sqrt(3.3);
parameter Real g = 3;

parameter Real x0 = 0;
parameter Real y0 = -1.4;

Real x(start=x0);
Real y(start=y0);

function f
  input Real t;
  output Real result;
algorithm
  result:= 0.2 * sin(3.5 * t);
end f;

equation
der(x) = y;
der(y) = -w * w * x - g * y - f(time);

end Lab_4_var_3;
