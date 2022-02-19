s = 18; //Начальное расстояние от лодки до катера
fi = 3*%pi/4

//Функция, описывающая движение катера береговой охраны
function dr=f(theta, r)
    dr = r/sqrt(23.01);
endfunction

//Начальное условие в случае 1
//r0 = s/5.9;
//theta0 = 0;

//Начальное условие в случае 2
r0 = s/3.9;
theta0 = -%pi;

theta = 0:0.01:2*%pi

r = ode(r0, theta0, theta, f);

//Функция, описывающая жвижение лодки браконьеров
function xt=f2(t)
    xt = tan(fi)*t;
endfunction

t = 0:1:800;

polarplot(theta, r, style = color('green'));//Траектория движения катера в полярных координатах
plot2d(t, f2(t), style = color('red'));//Траектория движения лодки браконьеров в полярных координатах