## Author: Souhardya <Souhardya@DESKTOP-55NBB1N>
## Created: 2019-10-30

a = [4,1,2,-1;3,6,-1,2;2,-1,5,-3;4,1,-3,-8];
b = [2;-1;3;2];
n = length(b);
x = zeros(n,1);
xnew = zeros(n,1);

tol = 0.0000001;

for iteration = 1 : 100 #loop for iterations
  convergence = true;
  for i = 1 : n #loop for equations
    sum = 0;
    for j = 1 : n #loop for sum
      if i~=j
        sum = sum + a(i,j) * x(j);
      endif
    endfor
      sum = sum - b(i);
      sum = (-1) * sum / a(i,i);
      xnew(i) = sum;
      
      if abs(xnew(i) - x(i)) > tol
        convergence = false;
      endif
  endfor
  if convergence
    break;
  endif
  x = xnew;
endfor
disp("iterations\n")
iteration
disp("solution")
xnew

