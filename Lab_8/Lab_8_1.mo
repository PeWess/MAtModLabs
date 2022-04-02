model Lab_8_1

parameter Real p_cr = 35;
parameter Real tau1 = 18;
parameter Real p1 = 7.7;
parameter Real tau2 = 13;
parameter Real p2 = 8.3;
parameter Real V = 30;
parameter Real q = 1;

parameter Real a1 = p_cr/(tau1*tau1*p1*p1*V*q);
parameter Real a2 = p_cr/(tau2*tau2*p2*p2*V*q);
parameter Real b = p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*V*q);
parameter Real c1 = (p_cr-p1)/(tau1*p1);
parameter Real c2 = (p_cr-p2)/(tau2*p2);

Real x(start = 5.4);
Real y(start = 4.1);

equation

der(x) = (c1/c1) * x - (a1/c1)*x*x - (b/c1)*x*y;
der(y) = (c2/c1) * y - (a2/c1)*y*y - (b/c1)*x*y;

end Lab_8_1;
