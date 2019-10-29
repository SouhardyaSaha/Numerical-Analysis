## Author: Souhardya <Souhardya@DESKTOP-55NBB1N>
## Created: 2019-10-29

pkg load symbolic;
syms x;
fun = input("Enter your function\n");
f = inline(fun);
z = diff(f(x));
f1 = function_handle(z);
a = input("First input\n");
b = input("Second input\n");
if f(a)*f(b)<0,
  x0 = (a+b)/2;
else
  fprintf("ans not possible\n");
  return;
endif

for i = 1:100,
  x = x0 - (f(x0)/f1(x0));
  if x==x0,
    break;
  endif
  x0 = x;
endfor
fprintf("%f\n",x);
