function [x0] = soal1e()
  % input from exercise
  f = @(x) x.^2 - cos(pi * x);
  fder = @(x)  (2*x) + (pi*sin(pi*x));

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