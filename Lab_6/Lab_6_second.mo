model Lab_6_second

parameter Real a = 0.03;
parameter Real b = 0.05;
parameter Real N = 12500;
parameter Real I0 = 140;
parameter Real R0 = 54;
parameter Real S0 = N - I0 - R0;

Real S(start=S0);
Real I(start=I0);
Real R(start=R0);

equation

der(S) = -a * S;
der(I) = a * S - b * I;
der(R) = b * I;

end Lab_6_second;
