function [x0] = soal1c()
  % input from exercise
  f = @(x) 10*exp(-x) * sin(2* pi * x) - 2;
  fder = @(x) 20*exp(-x)*pi*cos(2 *pi*x)- (10*exp(-x)*sin(2*pi*x));

  % initial x0
  x0 = 2;

  % set tolerance
  tol = 0.00000000001;
  
  % difference to check convergence
  diff = 1;
  
  while(diff > tol || feval(f,x0) > tol)
    x1 = x0 - (feval(f,x0)/feval(fder,x0))
    diff = abs(x1-x0)
    x0 = x1;
  end;  
  
  x0
  feval(f,x0)
end;