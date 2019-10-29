
## Author: Souhardya <Souhardya>
## Created: 2019-10-30

dy = @(x,y)x*y;
f = @(x)exp(x^2 / 2);

x0 = 0;
xn = 2;

y = 1;
h = 0.5;

fprintf("x \t\t y(Euler)\t y(analytical)\n");
fprintf("%f \t%f \t%f\n",x0, y, f(x0));

for x = x0 : h : xn-h,
  y = y + dy(x,y)*h;
  x = x + h;
  fprintf("%f \t%f \t%f\n",x, y, f(x));
endfor
