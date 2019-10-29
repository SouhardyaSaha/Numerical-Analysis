## Author: Souhardya <Souhardya>
## Created: 2019-10-29

f = @(x) x*x*x + x*x - 1;
low = input('low: ');
high = input('high: ');
dif = input('difference: ');
if f(low)==0
  fprintf("%f", low);
  return;
endif
if f(high) == 0
  fprintf("%f", high);
  return;
endif
if (f(low)*f(high) > 0)
  fprintf("don't have ans");
  return;
endif

mid = (low+high)/2;
fprintf("iterator   low            high             mid            value\n")
i=1;
ans = 1;
while abs(high - low)>=dif
  mid = (low+high)/2;
  fprintf("%d\t %f\t %f\t %f\t %f\t\n",i,low,high,mid,f(mid));
  if(f(low)*f(mid)<0)
    high = mid;
  else
    low = mid;
  endif
  ans = mid;
endwhile
fprintf("ans: %d\n", ans);
