model Lab_4

parameter Real w = sqrt(0.1);
parameter Real g = 10.1;

parameter Real x0 = 0;
parameter Real y0 = -1.4;

Real x(start=x0);
Real y(start=y0);

function f
  input Real t;
  output Real result;
algorithm
  result:= 0;
end f;

equation
der(x) = y;
der(y) = -w * w * x - g * y - f(time);

end Lab_4;
