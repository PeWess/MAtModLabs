model Lab_3_var_2

parameter Integer x0 = 31050 "Численность войск страны X";
parameter Integer y0 = 20002 "Численность войск страны Y";

parameter Real a = 0.32 "Степень влияния различных факторов на потери страны X";
parameter Real b = 0.74 "Эффективность боевых действий страны Y";
parameter Real c = 0.51 "Эффективность боевых действий страны X";
parameter Real h = 0.62 "Степень влияния различных факторов на потери страны Y";

Real x(start=x0) "Численность войск страны X в разные моменты времени";
Real y(start=y0) "Численность войск страны Y в разные моменты времени";

equation
  der(x) = -a*x - b*y + sin(time + 5);
  der(y) = -c*x - h*y + 2 * cos(10 * time);
  
end Lab_3_var_2;
